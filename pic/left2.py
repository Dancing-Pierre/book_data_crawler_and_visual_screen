import pandas as pd
import pymysql
from pyecharts import options as opts
from pyecharts.charts import Pie

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
value = result['count'].tolist()
# 这里用一个示例数据来模拟你的数据
data = {
    "class_name": name,
    "class_value": value
}

# 初始化饼图
pie = (
    Pie()
    .add("", [list(z) for z in zip(data["class_name"], data["class_value"])])
    .set_global_opts(
        title_opts=opts.TitleOpts(
            title="推荐榜单类别情况",
            title_textstyle_opts=opts.TextStyleOpts(color="#6d767e")
        ),
        tooltip_opts=opts.TooltipOpts(
            formatter="{a} <br /> {b} <strong>数量：{c}</strong> 占比{d}%"
        )
    )
    .set_series_opts(label_opts=opts.LabelOpts(formatter="{b}: {c}"))
)

# 生成 HTML 文件
pie.render("left2.html")
