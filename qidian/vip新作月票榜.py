import random
import re
import time

import pymysql
import requests
from fake_useragent import UserAgent
from lxml import etree
from fontTools.ttLib import TTFont
from io import BytesIO


def get_font(url):
    time.sleep(1)
    response = requests.get(url)
    font = TTFont(BytesIO(response.content))
    cmap = font.getBestCmap()
    font.close()
    return cmap


def get_encode(cmap, values):
    WORD_MAP = {'zero': '0', 'one': '1', 'two': '2', 'three': '3', 'four': '4', 'five': '5', 'six': '6',
                'seven': '7', 'eight': '8', 'nine': '9', 'period': '.'}
    word_count = ''
    list = values.split(';')
    list.pop(-1)
    for value in list:
        value = value[2:]
        key = cmap[int(value)]
        word_count += WORD_MAP[key]
    return word_count


conn = pymysql.connect(host='127.0.0.1', user='root', password='123456', port=3306, database='qidian')
cursor = conn.cursor()
for page in range(1, 6):
    header = {
        "Sec-Ch-Ua": "\"Not/A)Brand\";v=\"99\", \"Google Chrome\";v=\"115\", \"Chromium\";v=\"115\"",
        "Sec-Ch-Ua-Mobile": "?0",
        "Sec-Ch-Ua-Platform": "\"Windows\"",
        "Sec-Fetch-Dest": "document",
        "Sec-Fetch-Mode": "navigate",
        "Sec-Fetch-Site": "none",
        "Sec-Fetch-User": "?1",
        "Upgrade-Insecure-Requests": "1",
        "User-Agent": UserAgent().random
    }
    url = f'https://www.qidian.com/rank/yuepiao/chn0/year2023-month08-page{page}/'
    a = requests.get(url=url, headers=header)
    pattern = re.compile('</style><span.*?>(.*?)</span>', re.S)
    #  获取当前页面所有被字数字符
    numberlist = re.findall(pattern, a.text)
    # 获取当前包含字体文件链接的文本
    reg = re.compile('<style>(.*?)\s*</style>', re.S)
    fonturl = re.findall(reg, a.text)[0]
    # 通过正则获取当前页面字体文件链接
    url = re.search('woff.*?url.*?\'(.+?)\'.*?truetype', fonturl).group(1)
    cmap = get_font(url)
    num_list = []
    for per in numberlist:
        num_list.append(get_encode(cmap, per))
    response = etree.HTML(a.text)
    data = response.xpath('//div[@class="book-img-text"]//li')
    num = 0
    for i in data:
        title = ''.join(i.xpath('.//h2//text()'))
        book_type = ''.join(i.xpath('.//p[@class="author"]/a[2]//text()'))
        hot = num_list[num]
        print(title, book_type, hot)
        num = num + 1
        sql = "insert into `vip新作月票榜`(title,type,hot) values('%s','%s','%s')" % (title, book_type, hot)
        cursor.execute(sql)
        conn.commit()
    time.sleep(random.randint(1, 3))
cursor.close()
# 关闭连接
conn.close()
