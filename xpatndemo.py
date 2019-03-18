# -*- coding: UTF-8 -*-
# @Time     :2018/8/24  上午12:16
# @Author   :Mr.Zhang
# @File     :xpatndemo.py
# @EditBy   :PyCharm
from lxml import etree
import requests,json

url = 'http://www.qiushibaike.com/'
res = requests.get(url)
res.encoding = 'utf-8' #指定编码集

tree = etree.HTML(res.text)


name_list = tree.xpath('//div[@id="content-left"]/div/div[starts-with(@class,"author")]/a/h2/text()')
for name in name_list:
    print(name)

src_list = tree.xpath('//div[@id="content-left"]/div/div[starts-with(@class,"author")]/a/img/@src')
for src in src_list:
    print(src)

author_list = tree.xpath('//div[@id="content-left"]/div/div[starts-with(@class,"author")]')
items = []
for author in author_list:
    item = {
        'name':author.xpath('./a/h2/text()'),
        'src':author.xpath('./a/img/@src')
    }

    items.append(item)

json_str = json.dumps(items)
with open('items.json','w',encoding='utf-8') as fp:
    fp.write(json_str)