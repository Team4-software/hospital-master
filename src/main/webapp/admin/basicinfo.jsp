<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2024/6/27
  Time: 14:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>在线预约挂号系统（管理员) - 基本信息</title>
  <jsp:include page="include/headtag.jsp"/>
  <script src="<%=request.getContextPath()%>/scripts/echarts.min.js"></script>
</head>
<body>
<jsp:include page="include/head.jsp"/>
<jsp:include page="include/menu.jsp"/>

<div style="margin-top: 100px;margin-left: 300px">
  <div id="page-inner">


    <div ><button class="btn btn-success">打印</button></div>
    <div id="main1" style="width: 600px;height: 400px;float: left"></div>
    <div id="main2" style="width: 600px;height: 400px;float: left"></div>
    <div id="main3" style="width: 600px;height: 400px;float: left"></div>

    //容器
    <script type="text/javascript">
      //打印按钮
      $(".btn").bind('click',function () {
        console.log("打印");
        var newstr = document.getElementById("page-inner").innerHTML;//得到需要打印的元素HTML
        var imgDom = $(newstr);
        $('#wrapper').hide();//将左边的菜单隐藏
        $('.navbar1').hide();//上边的导航栏隐藏
        $('body').append(imgDom);
        window.print();
        imgDom.remove();
        $('#wrapper').show();
        $('.navbar1').show();
      });


      //图1
      $.post("<%=request.getContextPath()%>/count",{action:"1"},
              function(data){
                console.log(data);
                var myChart1 = echarts.init(document.getElementById("main1"));
                var option1 = {
                  color: ['#3398DB'],
                  tooltip : {trigger: 'axis', axisPointer : {type : 'shadow'}},
                  grid: {left: '3%', right: '4%', bottom: '3%', containLabel: true},
                  xAxis : [{type : 'category', data : ['科室', '诊室', '医生', '患者'], axisTick: {alignWithLabel: true}}],
                  yAxis : [{type : 'value'}],
                  series : [{name:'数量', type:'bar', barWidth: '60%', data:data}]
                };
                myChart1.setOption(option1);
              });
      //图2
      $.post("<%=request.getContextPath()%>/count",{action:"2"},
              function(data){
                console.log(data);
                var myChart2 = echarts.init(document.getElementById("main2"));
                var option2 = {
                  color: ['#40bfdb'],
                  tooltip : {
                    trigger: 'axis',
                    axisPointer : {type : 'shadow'}
                  },
                  grid: {
                    left: '3%',
                    right: '4%',
                    bottom: '3%',
                    containLabel: true
                  },
                  xAxis : [
                    {
                      type : 'category',
                      data : data.data,
                      axisTick: {
                        alignWithLabel: true
                      }
                    }
                  ],
                  yAxis : [
                    {
                      type : 'value'
                    }
                  ],
                  series : [
                    {
                      name:'预约量',
                      type:'bar',
                      barWidth: '60%',
                      data:data.data1
                    }
                  ]
                };
                myChart2.setOption(option2);
              });
      //图3
      $.post("<%=request.getContextPath()%>/count",{action:"3"},
              function(data){
                console.log(data);
                var myChart3 = echarts.init(document.getElementById("main3"));
                var option3 = {
                  color: ['#7049db'],
                  tooltip : {
                    trigger: 'axis',
                    axisPointer : {type : 'shadow'}
                  },
                  grid: {
                    left: '3%',
                    right: '4%',
                    bottom: '3%',
                    containLabel: true
                  },
                  xAxis : [
                    {
                      type : 'category',
                      data : ['星期天','星期一','星期二','星期三','星期四','星期五','星期六'],
                      axisTick: {
                        alignWithLabel: true
                      }
                    }
                  ],
                  yAxis : [
                    {
                      type : 'value'
                    }
                  ],
                  series : [
                    {
                      name:'预约量',
                      type:'bar',
                      barWidth: '60%',
                      data:data
                    }
                  ]
                };
                myChart3.setOption(option3);
              });
    </script>
  </div>
</div>
</body>
</html>
