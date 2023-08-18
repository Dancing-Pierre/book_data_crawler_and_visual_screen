import json
import pandas as pd

with open("screen/static/data/sales_product.json", "r", encoding="utf-8") as f:
    json_data = json.load(f)
print(type(json_data[0]['value']))

# print(total_name)  # 9 4 4

# data = pd.read_csv("screen/static/data/sales_province.csv")
# province = data['province'].to_numpy().tolist()
# profit = data['profit'].to_numpy().tolist()
# sales = data['sales'].to_numpy().tolist()
# province_profit = []
# for i in range(len(province)):
#     province_profit.append({"name": province[i], "value": profit[i]})
# print(json.dumps(province_profit))

# data = pd.read_csv("screen/static/data/sales_region.csv")
# region = data['region'].to_numpy().tolist()
# profit = data['profit'].to_numpy().tolist()
# sales = data['sales'].to_numpy().tolist()
# region_sales = []
# for i in range(len(region)):
#     region_sales.append({"name": region[i], "value": profit[i]})
# print(json.dumps(region_sales))


# data = pd.read_csv("screen/static/data/sales_manager.csv")
# manager = data['sales_manager'].to_numpy().tolist()
# profit = data['profit'].to_numpy().tolist()
# sales = data['sales'].to_numpy().tolist()
# print(manager, profit, sales)
# data = pd.read_csv("screen/static/data/sales_month.csv")
# month = data['month'].to_numpy().tolist()
# profit = data['profit'].to_numpy().tolist()
# sales = data['sales'].to_numpy().tolist()
# print(month, profit, sales)
