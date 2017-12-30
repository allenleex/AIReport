# -*- coding: utf-8 -*-

# Scrapy settings for aireportdemo project
#
# For simplicity, this file contains only settings considered important or
# commonly used. You can find more settings consulting the documentation:
#
#     http://doc.scrapy.org/en/latest/topics/settings.html
#     http://scrapy.readthedocs.org/en/latest/topics/downloader-middleware.html
#     http://scrapy.readthedocs.org/en/latest/topics/spider-middleware.html

BOT_NAME = 'aireportdemo'

SPIDER_MODULES = ['aireportdemo.spiders']
NEWSPIDER_MODULE = 'aireportdemo.spiders'

MYSQL_HOST = 'localhost'
MYSQL_DBNAME = 'aireport'
MYSQL_USER = 'root'
MYSQL_PASSWD = ''

DOWNLOAD_DELAY = 1

ITEM_PIPELINES = {
    'aireportdemo.pipelines.AireportdemoPipeline': 301,

}

DOWNLOADER_MIDDLEWARES = {
    'scrapy.downloadermiddlewares.useragent.UserAgentMiddleware': None,
    'aireportdemo.middlewares.RotateUserAgentMiddleware': 543,
}
