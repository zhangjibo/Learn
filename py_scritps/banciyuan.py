from urllib import request
from urllib.parse import urlencode
import re,ssl,socket,urllib.request
from pprint import pprint
from time import time,ctime

socket.setdefaulttimeout(30)
ssl._create_default_https_context = ssl._create_unverified_context
agent = 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'
headers = {'User-Agent': agent}

details_url = 'https://bcy.net/item/detail/%s'
details_list = []
def getImgList(since=27089.21):
    while 1:
        ajax_data = {'since':since,'grid_type':'flow','sort':'hot','tag_id':'399'}
        web_dynamic = request.Request('https://bcy.net/circle/timeline/showtag?' + urlencode(ajax_data),headers=headers)
        resp = request.urlopen(web_dynamic)
        html_source = resp.read().decode('utf-8')
        details_RegExp = re.compile(r'<a href="/item/detail/(.*?)" class="db posr ovf"',re.S)
        details = re.findall(details_RegExp, html_source)

        for de in details:
            detail = details_url % de
            details_list.append(detail)

        imgs_list = []
        for url in details_list:
            req = request.Request(url=url, headers=headers)
            response = request.urlopen(req)
            content = response.read().decode('utf-8')
            datum = re.compile(r'\\"path\\":\\"(.*?)\\",\\"type\\":',re.S)
            url_data = re.findall(datum,content)

            for datum in url_data:
                datum = datum.replace('\\\\u002F', '/')
                imgs_list.append(datum)

        for j in imgs_list:
            try:
                urllib.request.urlretrieve(j, 'bcy\\%s.jpg' % time())
            except socket.timeout:
                count = 1
                while count <= 3:
                    try:
                        urllib.request.urlretrieve(j, 'bcy\\%s.txt' % time())
                        break
                    except socket.timeout:
                        err_info = 'Reloading for %d time' % count if count == 1 else 'Reloading for %d times' % count
                        pprint(err_info)
                        count += 1
                if count > 3:
                    pprint("downloading imgs failed!")
            pprint("[+]Download Completed!!!")

        del imgs_list[:]
        pprint(ctime())
        since -= 1

getImgList()
