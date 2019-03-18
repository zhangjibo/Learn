#coding = utf-8
import re
from urllib import request
from bs4 import BeautifulSoup
import ssl
from time import sleep
ssl._create_default_https_context = ssl._create_unverified_context
articleUrl = 'https://www.qiushibaike.com/textnew/page/%d'
commentUrl = 'https://www.qiushibaike.com/article/%s'

def getContentOrComment(url):

    agent =' Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'
    headers = {'User-Agent':agent}
    #context = ssl._create_unverified_context()
    req = request.Request(url=url,headers=headers)
    response = request.urlopen(req)
    content = response.read()
    return content

page = 1
while True:

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
        for comment in soup.find_all(attrs='body'):
            print('------>', str(comment_floor)+'楼回复:', comment.get_text())
            comment_floor += 1
    print('*****************',"第"+str(page)+"页完",'********************')
    sleep(4)
    page += 1