# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: http://doc.scrapy.org/en/latest/topics/item-pipeline.html
import pymysql
from scrapy import log

from aireportdemo import settings
from aireportdemo.items import NewsItem

import re

class AireportdemoPipeline(object):
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
                self.cursor.execute("""select id from air_collect_demo where url = %s""", item["url"])
                ret = self.cursor.fetchone()
                if ret:
                    self.cursor.execute(
                        """update air_collect_demo set name = %s, url = %s
                           where url = %s""",
                        (item['name'],
                         item['url'],
                         item['url']))
                else:
                    self.cursor.execute(
                        """insert into air_collect_demo(name, url)
                           value (%s,%s,%s)""",
                        (item['name'],
                         item['url']))
                self.connect.commit()
            except Exception as error:
            	#self.connect.rollback()
                log(error)
            return item

        else:
            pass
