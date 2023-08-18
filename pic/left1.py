import pandas as pd
import pymysql
from pyecharts import options as opts
from pyecharts.charts import Line
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
cursor.close()
conn.close()
month = []
for i in range(1, 101):
    month.append(i)
profit = df_man['hot'].tolist()
sales = df_woman['hot'].tolist()
example_class_name = month
example_data1 = profit
example_data2 = sales

# 创建一个折线图
line_chart = Line(init_opts=opts.InitOpts(theme=ThemeType.DARK))

# 添加 x 轴数据（班级名称）
line_chart.add_xaxis(example_class_name)

# 添加第一条折线数据
line_chart.add_yaxis(
    "男生",
    example_data1,
    is_symbol_show=True,
    linestyle_opts=opts.LineStyleOpts(width=2),
    itemstyle_opts=opts.ItemStyleOpts(color="#0184d5"),
)

# 添加第二条折线数据
line_chart.add_yaxis(
    "女生",
    example_data2,
    is_symbol_show=True,
    linestyle_opts=opts.LineStyleOpts(width=2),
    itemstyle_opts=opts.ItemStyleOpts(color="#00d887"),
)

# 设置图表的全局选项
line_chart.set_global_opts(
    tooltip_opts=opts.TooltipOpts(trigger="axis", axis_pointer_type="shadow"),
    title_opts=opts.TitleOpts(title="男女月票榜得票情况"),
    legend_opts=opts.LegendOpts(pos_top="8%"),
    xaxis_opts=opts.AxisOpts(axislabel_opts=opts.LabelOpts(rotate=-15)),
    yaxis_opts=opts.AxisOpts(name="数量", type_="value"),
)

# 渲染图表
line_chart.render("left1.html")
