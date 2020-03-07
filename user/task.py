# encoding: utf-8
'''
@contact: 1257309054@qq.com
@wechat: 1257309054
@Software: PyCharm
@file: task.py
@time: 2020/3/6 22:24
@author:LDC
'''
from celery import shared_task
from book.celery import app


@app.task
def start_running(info):
    print(info)
    print('--->>开始执行任务<<---')
    print('比如发送短信或邮件')
    print('>---任务结束---<')


@app.task
def pushMsg(uid, msg):
    print('推送消息', uid, msg)
    return True


@shared_task
def add(x, y):
    print('加法：', x + y)
    return x + y


@shared_task
def mul(x, y):
    print('乘法', x * y)
    return x * y
