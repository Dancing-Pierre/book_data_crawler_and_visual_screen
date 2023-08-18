$.ajax({
    url: '/screen/region_data',
    type: 'GET',
    dataType: 'json',
    contentType: 'application/json;charset=UTF-8',
    data: {},
    success: function (data) {
        console.log(data.class_name);
        console.log(data.class_value);
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('data_region'));
        // 指定图表的配置项和数据
        var option = {
			    // 标题
			    title: {
			      text: '月票榜各类型书籍占比情况',
			      textStyle: {
			        color: '#6d767e'
			      }
			    },
			    // 鼠标移入的提示
			    tooltip: {
			      formatter: '{a} <br /> {b} <strong>数量：{c}</strong> 占比{d}%'
			    },
			    // 系列数据
			    series: [
			      {
			        name: '各类别数量', // 和提示有关系
			        type: 'pie', // 表示这是饼图（line表示折线图、bar表示柱状图）
			        radius: ['10%', '60%'], // 半径，一个表示饼图的内圈半径；一个表示外圈半径
			        center: ['50%', '50%'], // 圆心点坐标
			        roseType: 'area',
			        // itemStyle 每一项的样式
			        itemStyle: {
			          borderRadius: 4
			        },
			        data: data.class_name
			      }
			    ]
			  };
        myChart.setOption(option, true);
    }
});