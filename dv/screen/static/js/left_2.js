$.ajax({
    url: '/screen/product_data',
    type: 'GET',
    dataType: 'json',
    contentType: 'application/json;charset=UTF-8',
    data: {},
    success: function (data) {
        console.log(data.class_name);
        console.log(data.class_value);
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('data_product'));
        var mydata = [
            {
                name: '数量',
                children: [
                    {
                        name: data.class_name[0],
                        value: data.class_value[0],
                        children: [
                            {
                                name: data.class_name[1],
                                value: data.class_value[1],
                                children: [
                                    {
                                        name: '12',
                                        value: 12
                                    }
                                ]
                            },
                            {
                                name: data.class_name[2],
                                value: data.class_value[2],
                                children: [
                                    {
                                        name: '14',
                                        value: 14
                                    }
                                ]
                            },
                            {
                                name: data.class_name[3],
                                value: data.class_value[3],
                                children: [
                                    {
                                        name: '16',
                                        value: 16
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        name: data.class_name[4],
                        value: data.class_value[4],
                        children: [
                            {
                                name: data.class_name[5],
                                value: data.class_value[5],
                                children: [
                                    {
                                        name: '1',
                                        value: 1
                                    }
                                ]
                            },
                            {
                                name: data.class_name[6],
                                value: data.class_value[6],
                                children: [
                                    {
                                        name: '13',
                                        value: 13
                                    }
                                ]
                            },
                            {
                                name: data.class_name[7],
                                value: data.class_value[7],
                                children: [
                                    {
                                        name: '8',
                                        value: 8
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        name: data.class_name[8],
                        value: data.class_value[8],
                        children: [
                            {
                                name: data.class_name[9],
                                value: data.class_value[9],
                                children: [
                                    {
                                        name: '17',
                                        value: 17
                                    }
                                ]
                            },
                            {
                                name: data.class_name[10],
                                value: data.class_value[10],
                                children: [
                                    {
                                        name: '6',
                                        value: 6
                                    }
                                ]
                            },
                            {
                                name: data.class_name[11],
                                value: data.class_value[11],
                                children: [
                                    {
                                        name: '25',
                                        value: 25
                                    }
                                ]
                            }
                        ]
                    }
                ]
            }
        ];
        var option = {
            series: {
                itemStyle: {
                    color: 'rgba(1, 132, 213, 0.4)',
                    barBorderRadius: 5,
                    borderWidth: 2
                },
                textBorderWidth: 0,
                type: 'sunburst',
                data: mydata,
                radius: [0, '90%'],
                label: {
                    fontSize: 8,
                    rotate: 'radial'
                },
                levels: [
                    {},
                    {
                        r0: 0,
                        r: 30
                    },
                    {
                        r0: 30,
                        r: 60
                    },
                    {
                        r0: 60,
                        r: 90
                    },
                    {
                        r0: 90,
                        r: 130,
                    }
                ]
            }
        };
        myChart.setOption(option, true);
    }
});