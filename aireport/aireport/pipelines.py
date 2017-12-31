# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: http://doc.scrapy.org/en/latest/topics/item-pipeline.html
import pymysql
from scrapy import log

from aireport import settings
from aireport.items import NewsItem

import re

class AireportPipeline(object):
    def __init__(self):
        self.connect = pymysql.connect(
            host=settings.MYSQL_HOST,
            db=settings.MYSQL_DBNAME,
            user=settings.MYSQL_USER,
            passwd=settings.MYSQL_PASSWD,
            charset='utf8',
            use_unicode=True)
        self.cursor = self.connect.cursor()

    def process_item(self, item, spider):
        if item.__class__ == NewsItem:
            try:
                self.cursor.execute("""select id from air_news where url = %s""", item["url"])
                ret = self.cursor.fetchone()
                if ret:
                    self.cursor.execute(
                        """update air_news set
                           source = %s,
                           author = %s,
                           title = %s,
                           url = %s,
                           where url = %s""",
                        (item['source'],
                         item['author'],
                         item['title'],
                         item['url']))
                else:
                    self.cursor.execute(
                        """insert into air_news(source,author,title,url)
                           value (%s,%s,%s,%s)""",
                        (item['source'],
                         item['author'],
                         item['title'],
                         item['url']))
                self.connect.commit()
            except Exception as error:
                log(error)
            return item

        else:
            pass
