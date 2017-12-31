# -*- coding: utf-8 -*-

# Scrapy settings for aireport project
#
# For simplicity, this file contains only settings considered important or
# commonly used. You can find more settings consulting the documentation:
#
#     http://doc.scrapy.org/en/latest/topics/settings.html
#     http://scrapy.readthedocs.org/en/latest/topics/downloader-middleware.html
#     http://scrapy.readthedocs.org/en/latest/topics/spider-middleware.html

BOT_NAME = 'aireport'

SPIDER_MODULES = ['aireport.spiders']
NEWSPIDER_MODULE = 'aireport.spiders'

LOG_LEVEL = "DEBUG"

MYSQL_HOST = 'localhost'
MYSQL_DBNAME = 'aireport'
MYSQL_USER = 'root'
MYSQL_PASSWD = ''

DOWNLOAD_DELAY = 1

ITEM_PIPELINES = {
    'aireport.pipelines.AireportPipeline': 301,

}

DOWNLOADER_MIDDLEWARES = {
    'scrapy.downloadermiddlewares.useragent.UserAgentMiddleware': None,
    'aireport.middlewares.RotateUserAgentMiddleware': 543,
}

ISOTIMEFORMAT = '%Y-%m-%d %H:%M:%S'
