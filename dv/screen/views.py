import pymysql
from django.http import HttpResponse
import json
import pandas as pd
import numpy as np
from django.shortcuts import render


def index(request):
    return render(request, 'index.html', context={})


# 男女月票榜得票情况
def left_1(request):
    conn = pymysql.connect(host='localhost', user='root', password='123456', database='qidian', charset='utf8')
    cursor = conn.cursor()
    sql = "SELECT * FROM `月票榜`"
    cursor.execute(sql)
    result = cursor.fetchall()
    columns = [desc[0] for desc in cursor.description]
    df_man = pd.DataFrame(result, columns=columns)
    sql = "SELECT * FROM `女生月票榜`"
    cursor.execute(sql)
    result = cursor.fetchall()
    columns = [desc[0] for desc in cursor.description]
    df_woman = pd.DataFrame(result, columns=columns)
    cursor.close()
    conn.close()
    month = []
    for i in range(1, 101):
        month.append(' ')
    profit = df_man['hot'].tolist()
    sales = df_woman['hot'].tolist()
    data = {'class_name': month, 'class_profit': profit, 'class_sales': sales}
    return HttpResponse(json.dumps(data), content_type='application/json')


# 推荐榜单类别情况
def left_2(request):
    conn = pymysql.connect(host='localhost', user='root', password='123456', database='qidian', charset='utf8')
    cursor = conn.cursor()
    sql = "SELECT * FROM `推荐榜`"
    cursor.execute(sql)
    result = cursor.fetchall()
    columns = [desc[0] for desc in cursor.description]
    df = pd.DataFrame(result, columns=columns)
    cursor.close()
    conn.close()
    result = df.groupby('type').size()
    result = result.reset_index().rename(columns={0: 'count'})
    name = result['type'].tolist()
    value = (result['count'].tolist(),)
    data = {'class_name': name, 'class_value': value}
    return HttpResponse(json.dumps(data), content_type='application/json')


# 各榜单月票得票情况
def mid(request):
    conn = pymysql.connect(host='localhost', user='root', password='123456', database='qidian', charset='utf8')
    cursor = conn.cursor()
    sql = "SELECT * FROM `月票榜`"
    cursor.execute(sql)
    result = cursor.fetchall()
    columns = [desc[0] for desc in cursor.description]
    df_man = pd.DataFrame(result, columns=columns)
    sql = "SELECT * FROM `女生月票榜`"
    cursor.execute(sql)
    result = cursor.fetchall()
    columns = [desc[0] for desc in cursor.description]
    df_woman = pd.DataFrame(result, columns=columns)
    sql = "SELECT * FROM `vip新作月票榜`"
    cursor.execute(sql)
    result = cursor.fetchall()
    columns = [desc[0] for desc in cursor.description]
    df_vip = pd.DataFrame(result, columns=columns)
    cursor.close()
    conn.close()
    df_man = df_man.groupby('type').size()
    df_man = df_man.reset_index().rename(columns={0: 'count_man'})
    df_woman = df_woman.groupby('type').size()
    df_woman = df_woman.reset_index().rename(columns={0: 'count_woman'})
    df_woman['type'] = df_woman['type'].replace('仙侠奇缘', '仙侠')
    df_woman['type'] = df_woman['type'].replace('古代言情', '历史')
    df_woman['type'] = df_woman['type'].replace('游戏竞技', '游戏')
    df_woman['type'] = df_woman['type'].replace('科幻空间', '玄幻')
    df_vip = df_vip.groupby('type').size()
    df_vip = df_vip.reset_index().rename(columns={0: 'count_vip'})
    result = pd.merge(df_man, df_woman, on='type')
    result = pd.merge(result, df_vip, on='type')
    province_profit = result['type'].tolist()
    data1 = result['count_man'].tolist()
    data2 = result['count_woman'].tolist()
    data3 = result['count_vip'].tolist()
    data = {'class_name': province_profit, 'data1': data1, 'data2': data2, 'data3': data3}
    return HttpResponse(json.dumps(data), content_type='application/json')


# 月票榜各类型书籍情况
def right_1(request):
    conn = pymysql.connect(host='localhost', user='root', password='123456', database='qidian', charset='utf8')
    cursor = conn.cursor()
    sql = "SELECT * FROM `月票榜`"
    cursor.execute(sql)
    result = cursor.fetchall()
    columns = [desc[0] for desc in cursor.description]
    df = pd.DataFrame(result, columns=columns)
    cursor.close()
    conn.close()
    # 按照书籍类型分组并计算每种类型的数量
    result = df.groupby('type').size()
    result = result.reset_index().rename(columns={0: 'count'})
    region = result['type'].tolist()
    sales = result['count'].tolist()
    region_sales = []
    for i in range(len(region)):
        region_sales.append({"name": region[i], "value": sales[i]})
    profit = []
    data = {'class_name': region_sales, 'class_value': profit}
    return HttpResponse(json.dumps(data), content_type='application/json')


# vip新作月票榜和月票榜情况
def right_2(request):
    conn = pymysql.connect(host='localhost', user='root', password='123456', database='qidian', charset='utf8')
    cursor = conn.cursor()
    sql = "SELECT * FROM `月票榜`"
    cursor.execute(sql)
    result = cursor.fetchall()
    columns = [desc[0] for desc in cursor.description]
    df = pd.DataFrame(result, columns=columns)
    sql = "SELECT * FROM `vip新作月票榜`"
    cursor.execute(sql)
    result = cursor.fetchall()
    columns = [desc[0] for desc in cursor.description]
    new_df = pd.DataFrame(result, columns=columns)
    cursor.close()
    conn.close()
    # 按照书籍类型分组并计算每种类型的数量
    df = df.groupby('type').size()
    df = df.reset_index().rename(columns={0: 'count'})
    new_df = new_df.groupby('type').size()
    new_df = new_df.reset_index().rename(columns={0: 'count'})
    result = pd.merge(df, new_df, on='type')
    manager = result['type'].tolist()
    profit = result['count_x'].tolist()
    sales = result['count_y'].tolist()
    data = {'class_name': manager, 'class_sales': sales, 'class_profit': profit}
    return HttpResponse(json.dumps(data), content_type='application/json')
