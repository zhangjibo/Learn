#coding = utf-8
import time,os,requests
from selenium import webdriver
from time import sleep
driver = webdriver.Chrome()
driver.implicitly_wait(8)
a = driver.get('http://web.bhrt666.com')
driver.maximize_window()

driver.find_element_by_xpath("/html/body/div[@class='q-qiaoer']/header[@class='q_header_w']"
                             "/div[@class='q_w1200 q_header']/div[@class='q_h_login r cursor']"
                             "/ul[@class='user_status']/li[1]/span[@class='q_btn_log ng-scope']").click()
driver.find_element_by_id('mailBox').send_keys("1169464472@qq.com")
driver.find_element_by_id("password").send_keys(111111)
driver.find_element_by_class_name("sign_btn").click()
driver.find_element_by_xpath("/html/body/div[@class='q-qiaoer']/header[@class='q_header_w']"
                             "/div[@class='q_w1200 q_header']/div[@class='q_h_lang r']/p").click()
driver.find_element_by_xpath("/html/body/div[1]/header[1]/div/div[2]/ul/li[1]").click()
sleep(0.3)
driver.find_element_by_xpath("/html/body/div[@class='q-qiaoer']"
                                 "/header[@class='q_header_w']/div[@class='q_w1200 q_header']"
                                 "/ul[@class='q_h_nav r']/li[@class='trade-center ng-scope'][1]/a[2]"
                                 "/span[@class='ng-binding']").click()
for i in range(1,7):
    driver.find_element_by_xpath("//*[@id='legalImp']//*/div[1]/table/tbody/tr[%s]/td[7]/span"%i).click()

    sleep(0.2)
    driver.find_element_by_xpath("/html/body/div[@class='q-qiaoer']/div[@class='ng-scope']"
                                 "/ui-view[@class='ng-scope']/*"
                                 "/span[@class='layui-layer-setwin']"
                                 "/a[starts-with(@class,'layui-layer-ico')]").click()
    sleep(0.2)





























# a = os.path.getctime('C:\Users\Administrator\Downloads\\0355a9daec49ceda5a8612f2a824caa8.jpg')
# print a
# b = os.path.getsize('D:\Java.rar')
# print b
# c = (os.getcwd())
# print c

# payload = {"access_key":"null","limit":"5","page":"1","token":"c47d3f663dbaeefc12d36e008e9f4a43"}
# cookies = dict(cookies_are="PHPSESSID=771a78iq790d4dcvbgg6nnmvb0; think_language=zh-cn")
# time1 = time.time()
# r = requests.post('http://api.coinworldau.com/finance/index',json=payload,cookies=cookies,stream=True)
# time2 = time.time()
# pending = time2 - time1
# print r.text
# print r.status_code
# print pending

# wd = webdriver.Chrome()
# a = wd.get('http://web.bhrt666.com')
# import re
# pattern = re.compile(r'([a-z]+) ([a-z]+) ([a-z]+) ([a-z]+)', re.I)
# m = pattern.match('Hello World Wide Web')
#
# print m.groups()
# print m.group(3)
# print m.span(02)
# pattern = re.compile(r'\d+')
# result1 = pattern.findall('runoob1o2 3google456')
# result2 = pattern.findall('run88oo b123google456', 0, 10)
#
# print(result1)
# print(result2)
#
# it = re.finditer(r"\d+","12a32bc43jf3")
# for match in it:
#     print (match.group() )
#
# a = re.split('\W+', 'runoob, runoob, runoob.')
# print a
# b = re.split('(\W+)', ' runoob, runoob, runoob.')
# print b
# c = re.split('\W+', ' runoob, runoob, runoob.', 1)
# print c
#
# d = re.split('a*', 'hello world')
# print d
#
# string1  = '1102231990xxxxxxxx'
# res = re.search('(?P<province>\d{3})(?P<city>\d{3})(?P<born_year>\d{3})',string1)
# print(res.groupdict())
#
# # -*- coding: UTF-8 -*-
#
# import thread
# import time
#
#
# def print_time( threadName, delay):
#    count = 0
#    while count < 5:
#       time.sleep(delay)
#       count += 1
#       print "%s: %s" % ( threadName, time.ctime(time.time()) )
#
#
# try:
#    thread.start_new_thread( print_time, ("Thread-1", 2, ) )
#    thread.start_new_thread( print_time, ("Thread-2", 4, ) )
# except:
#    print "Error: unable to start thread"
#
# while 1:
#    pass