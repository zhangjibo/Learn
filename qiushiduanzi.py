#coding = utf-8
import urllib3.request
import re
from urllib3 import request
from bs4 import BeautifulSoup
import ssl
from time import sleep

articleUrl = 'https://www.qiushibaike.com/textnew/page/%d'
commentUrl = 'https://www.qiushibaike.com/article/%s'

def getContentOrComment(url):

    agent =' Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'
    headers = {'User-Agent':agent}
    context = ssl._create_unverified_context()
    req = request.Request(url=url,headers=headers)
    response = urllib.request.urlopen(req,context=context)
    content = response.read().decode('utf-8')
    return content

page = 1
while True:
    # raw = input('click enter to view or input exit to quit:')
    # if raw == 'exit':
    #     break
    #
    # page += 1
    try:
        ContentUrl = articleUrl % page
        articlePage = getContentOrComment(ContentUrl)
        soup = BeautifulSoup(articlePage, 'html.parser')

        article_floor = 1
        for content in soup.find_all(attrs='article block untagged mb15'):

            commentId = str(content.get('id')).strip()[11:]
            print('\n')
            print(article_floor, '<-->', content.find(attrs='content').get_text().strip())
            article_floor += 1

            CommentUrl = commentUrl % commentId
            commentPage = getContentOrComment(CommentUrl)
            soup = BeautifulSoup(commentPage, 'html.parser')

            comment_floor = 1
            for comment in soup.find_all(attrs={'body'}):
                print('------>', str(comment_floor)+'floor replied:', comment.get_text())
                comment_floor += 1
    except:
        pass
        print(ContentUrl,'-----fail to get!!!-----')
    print('*****************',"the"+str(page)+"page end",'*****************')
    sleep(5)
    page += 1