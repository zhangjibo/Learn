# -*- coding:UTF-8 -*-
# @Time     :2018/11/29  下午8:57
# @Author   :Mr.Zhang
# @File     :budejie.py
# @EditBy   :PyCharm
import urllib.request,re,requests, threading
from time import ctime
from pprint import pprint

url_name = []
def getVideo(page=1):
	
    while 1:
        del url_name[:]
        headers = {"User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36"}
        url = "http://www.budejie.com/video/%d"%page
        pprint(url)
        html = requests.get(url,headers=headers).text
        url_content = re.compile(r'(<div class="j-r-list-c-desc">.*?</div>.*?</div>)',re.S)
        url_contents = re.findall(url_content,html)

        for i in url_contents:
            url_RegExp = re.compile(r'data-mp4="(.*?)"')
            url_items = re.findall(url_RegExp,i)

            if url_items:
                title_RegExp = re.compile(r'data-title="(.*?)..."')
                title_items = re.findall(title_RegExp,i)

                for title,url in zip(title_items,url_items):
                    url_name.append([title,url])

        if len(url_name) == 20:
            for j in url_name:
                #pprint(len(j))
                try:
                    j[0] = j[0].replace('/', '')
                    pprint(j[1])
                    urllib.request.urlretrieve(j[1], 'budejie\\%s.mp4' % j[0])
                except:
                    pass
        elif len(url_name) == 40:
            slic = url_name[20:]
            for k in slic:
                try:
                    k[0] = k[0].replace('/', '')
                    urllib.request.urlretrieve(k[1], 'budejie\\%s.mp4' % k[0])
                except:
                    pass
        else:
            pass
            print('第'+str(page)+'页长度异常！')
        print("%d"%page,"Bingo!!! at %s"%ctime())

        page += 1

getVideo()

# page_list = [(1,),(26,)]
# thread_list = []
# for page in page_list:
#     t = threading.Thread(target=getVideo,args=page)
#     thread_list.append(t)
#
# for t in thread_list:
#     t.setDaemon(True)
#     t.start()
#
# for t in thread_list:
#     t.join()