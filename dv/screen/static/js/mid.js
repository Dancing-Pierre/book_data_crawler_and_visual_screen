$.ajax({
    url: '/screen/province_data',
    type: 'GET',
    dataType: 'json',
    contentType: 'application/json;charset=UTF-8',
    data: {},
    success: function (data) {
        console.log(data.class_name);
        console.log(data.class_value);
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('data_province'));
        var option = {
            tooltip: {
                trigger: 'axis',
                axisPointer: {type: 'shadow'},
            }, "grid": {
                "top": "20%",
                "right": "50",
                "bottom": "20",
                "left": "30",
            },
            legend: {
                data: ['月票榜', '女生月票榜', 'VIP新作月票榜'],
                right: 'center', width: '100%',
                textStyle: {
                    color: "rgba(255,255,255,.5)"
                },
                itemWidth: 12,
                itemHeight: 10,
            },
            "xAxis": [
                {
                    "type": "category",
                    data: data.class_name,
                    axisLine: {show: false,},
                    axisLabel: {
                        textStyle: {
                            fontSize: 14,
                            color: "rgba(255,255,255,.5)",
                        },
                    },

                },
            ],
            "yAxis": [
                {
                    type: "value",
                    axisTick: {show: false},
                    splitLine: {show: false,},
                    axisLine: {
                        show: false,
                        min: 0,
                        max: 10,
                    },
                    "axisLabel": {
                        show: true,
                        fontSize: 14,
                        color: "rgba(255,255,255,.5)"
                    },
                },
                {
                    "type": "value",
                    "show": true,
                    "axisLabel": {
                        formatter: "{value} %",
                        fontSize: 14,
                        color: "rgba(255,255,255,.5)"
                    },
                    axisTick: {show: false},
                    splitNumber: 3,
                    axisLine: {show: false},//右线色
                    splitLine: {lineStyle: {color: 'rgba(255,255,255,.05)'}},//x轴线
                },
            ],
            "series": [
                {
                    "name": "月票榜",
                    "type": "bar",
                    "data": data.data1,
                    "barWidth": "10%",
                    "itemStyle": {
                        "normal": {
                            barBorderRadius: 15,
                            color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                                offset: 0,
                                color: '#248ff7'
                            }, {
                                offset: 1,
                                color: '#6851f1'
                            }]),
                        }
                    },
                    "barGap": "0.2"
                },
                {
                    "name": "女生月票榜",
                    "type": "bar",
                    "data": data.data2,
                    "barWidth": "10%",
                    "itemStyle": {
                        "normal": {
                            barBorderRadius: 15,
                            color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                                offset: 0,
                                color: '#fccb05'
                            }, {
                                offset: 1,
                                color: '#f5804d'
                            }]),
                        }
                    },
                    "barGap": "0.2"
                },
                {
                    "name": "VIP新作月票榜",
                    "type": "line",
                    "yAxisIndex": 1,
                    "data": data.data3,
                    lineStyle: {
                        normal: {
                            width: 2
                        },
                    },
                    "itemStyle": {
                        "normal": {
                            "color": "#3496f8",

                        }
                    },
                    symbolSize: 0,
                }
            ]
        };
        myChart.setOption(option, true);
    }
});