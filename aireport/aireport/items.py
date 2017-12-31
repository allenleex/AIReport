# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# http://doc.scrapy.org/en/latest/topics/items.html

from scrapy import Item, Field


# 新闻
class NewsItem(Item):
    source = Field()
    author = Field()
    title = Field()
    title_md5 = Field()
    url = Field()
    url_md5 = Field()
    publish_date = Field()
    ts = Field()
