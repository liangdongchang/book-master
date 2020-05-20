# encoding: utf-8
'''
@contact: 1257309054@qq.com
@wechat: 1257309054
@Software: PyCharm
@file: celery.py
@time: 2020/3/6 22:19
@author:LDC
'''

from __future__ import absolute_import
from celery import Celery, platforms
from django.conf import settings
import os

# 为celery设置环境变量
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'book.settings')  # 改为你项目的settings

# 创建应用
app = Celery('user')
platforms.C_FORCE_ROOT = True
# 配置应用
app.conf.update(
	# 本地Redis服务器
	BROKER_URL=settings.BROKER_URL,
)
app.config_from_object('django.conf:settings')
app.autodiscover_tasks(settings.INSTALLED_APPS)


@app.task(bind=True)
def debug_task(self):
	print('Request: {0!r}'.format(self.request))
