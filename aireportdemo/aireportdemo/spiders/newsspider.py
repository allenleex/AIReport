# coding:utf-8

from scrapy.spider import CrawlSpider, Rule
from scrapy.linkextractors import LinkExtractor
from aireportdemo.items import NewsItem
from scrapy import log

import re


class NewsSpider(CrawlSpider):
    name = 'news'
    allowed_domains = ['quotes.toscrape.com']
    start_urls = ['http://quotes.toscrape.com/']

    def parse(self, response):
        # follow links to author pages
        for href in response.css('.author + a::attr(href)'):
            yield response.follow(href, self.parse_author)

        # follow pagination links
        for href in response.css('li.next a::attr(href)'):
            yield response.follow(href, self.parse)

    def parse_author(self, response):
        def extract_with_css(query):
            return response.css(query).extract_first().strip()

        item = NewsItem()
        try:
            item['name'] = extract_with_css('h3.author-title::text')
            item['url'] = response.url;
            ###item['desc'] = extract_with_css('div.author-description::text')
            yield item
        except Exception as error:
            log(error)
