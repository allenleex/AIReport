# coding:utf-8

from scrapy.spider import CrawlSpider, Rule
from scrapy.linkextractors import LinkExtractor
from aireport.items import NewsItem
from scrapy import log
import hashlib
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

        #m = hashlib.md5()
        item = NewsItem()
        try:
            item['source'] = "quotes.toscrape.com"
            item['author'] = extract_with_css('h3.author-title::text')
            item['title'] = extract_with_css('h3.author-title::text')
            #m.update(item['title'])
            #item['title_md5'] = m.hexdigest()
            item['url'] = response.url;
            #m.update(item['url'])
            #item['url_md5'] = m.hexdigest()
            yield item
        except Exception as error:
            log(error)
