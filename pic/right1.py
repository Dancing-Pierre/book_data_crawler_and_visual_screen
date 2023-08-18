import pandas as pd
import pymysql
from pyecharts import options as opts
from pyecharts.charts import Pie

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
# 这里用一个示例数据来模拟你的数据
data = {
    "class_name": region,
    "class_value": sales
}

# 初始化饼图
pie = (
    Pie()
    .add("", [list(z) for z in zip(data["class_name"], data["class_value"])])
    .set_global_opts(
        title_opts=opts.TitleOpts(
            title="月票榜各类型书籍占比情况",
            title_textstyle_opts=opts.TextStyleOpts(color="#6d767e")
        ),
        tooltip_opts=opts.TooltipOpts(
            formatter="{a} <br /> {b} <strong>数量：{c}</strong> 占比{d}%"
        )
    )
    .set_series_opts(label_opts=opts.LabelOpts(formatter="{b}: {c}"))
)

# 生成 HTML 文件
pie.render("right1.html")
