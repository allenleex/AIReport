# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# http://doc.scrapy.org/en/latest/topics/items.html

from scrapy import Item, Field


class AireportdemoItem(Item):
    # define the fields for your item here like:
    # name = scrapy.Field()
    pass

# 新闻
class NewsItem(Item):
    name = Field()
    url = Field()
    desc = Field()
