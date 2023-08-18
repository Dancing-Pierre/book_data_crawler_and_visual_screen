import pandas as pd
import pymysql
from pyecharts import options as opts
from pyecharts.charts import Bar

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
# 这里用一个示例数据来模拟你的数据
data = {
    "class_name": manager,
    "class_sales": profit,
    "class_profit": sales
}

# 初始化柱状图
bar = (
    Bar()
    .add_xaxis(data["class_name"])
    .add_yaxis("总月票", data["class_profit"], stack="manager")
    .add_yaxis("vip新作月票", data["class_sales"], stack="manager")
    .set_series_opts(label_opts=opts.LabelOpts(is_show=False))
    .set_global_opts(
        tooltip_opts=opts.TooltipOpts(trigger="axis", axis_pointer_type="shadow"),
        legend_opts=opts.LegendOpts(
            textstyle_opts=opts.TextStyleOpts(color="black")  # 设置图例文字颜色为黑色
        ),
        toolbox_opts=opts.ToolboxOpts(
            is_show=True,
            orient="vertical",
            pos_right="5%",
            pos_top="center",
            feature={
                "mark": {"show": True},
                "dataView": {"show": True, "readOnly": False},
                "magicType": {"show": True, "type": ["line", "bar", "stack", "tiled"]},
                "restore": {"show": True},
                "saveAsImage": {"show": True},
            },
        ),
        xaxis_opts=opts.AxisOpts(type_="category"),
        yaxis_opts=opts.AxisOpts(type_="value"),
    )
)

# 生成 HTML 文件
bar.render("right2.html")
