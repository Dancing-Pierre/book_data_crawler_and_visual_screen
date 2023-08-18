import pandas as pd
import pymysql
from pyecharts import options as opts
from pyecharts.charts import Bar
from pyecharts.globals import ThemeType

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
example_class_name = province_profit
example_data1 = data1
example_data2 = data2
example_data3 = data2

# 创建一个柱状图
bar_chart = Bar(init_opts=opts.InitOpts(theme=ThemeType.DARK))

# 添加 x 轴数据（班级名称）
bar_chart.add_xaxis(example_class_name)

# 添加第一组柱子数据
bar_chart.add_yaxis("月票榜", example_data1)

# 添加第二组柱子数据
bar_chart.add_yaxis("女生月票榜", example_data2)

# 添加第三组柱子数据
bar_chart.add_yaxis("VIP新作月票榜", example_data3)

# 设置图表的全局选项
bar_chart.set_global_opts(
    tooltip_opts=opts.TooltipOpts(trigger="axis", axis_pointer_type="shadow"),
    title_opts=opts.TitleOpts(title="各榜单月票得票情况"),
    legend_opts=opts.LegendOpts(pos_top="8%"),
    xaxis_opts=opts.AxisOpts(axislabel_opts=opts.LabelOpts(rotate=-15)),
    yaxis_opts=opts.AxisOpts(name="数量", type_="value"),
)

# 渲染图表
bar_chart.render("mid.html")
