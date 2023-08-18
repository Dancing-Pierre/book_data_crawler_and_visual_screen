$.ajax({
    url: '/screen/manager_data',
    type: 'GET',
    dataType: 'json',
    contentType: 'application/json;charset=UTF-8',
    data: {},
    success: function (data) {
        console.log(data.class_name);
        console.log(data.class_sales);
        console.log(data.class_profit);
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('data_manager'));
        // 指定图表的配置项和数据
        var option = {
				tooltip: {
					trigger: 'axis',
					axisPointer: {
						type: 'shadow'
					}
				},
				legend: {
					data: ['vip新作月票', '总月票'],
					textStyle: {
                    color: "rgba(255, 250, 250, 1)"
                }
				},
				toolbox: {
					show: true,
					orient: 'vertical',
					x: 'right',
					y: 'center',
					feature: {
						mark: {
							show: true
						},
						dataView: {
							show: true,
							readOnly: false
						},
						magicType: {
							show: true,
							type: ['line', 'bar', 'stack', 'tiled']
						},
						restore: {
							show: true
						},
						saveAsImage: {
							show: true
						}
					}
				},
				xAxis: [{
					type: 'category',
					data: data.class_name
				}],
				yAxis: [{
					type: 'value'
				}],
				series: [

					{
						name: '总月票',
						type: 'bar',
						stack: 'manager',
						data: data.class_profit
					},
					{
						name: 'vip新作月票',
						type: 'bar',
						stack: 'manager',
						data: data.class_sales
					},
				],

			};
        myChart.setOption(option, true);
    }
});