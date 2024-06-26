<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>在线预约挂号系统（管理员) - 基本信息</title>
  <jsp:include page="include/headtag.jsp"/>
  <script src="<%=request.getContextPath()%>/scripts/echarts.min.js"></script>
  <style>
    body {
      font-family: 'Arial', sans-serif;
      background-color: #f8f9fa;
      margin: 0;
      padding: 0;
    }
    .sidebar {
      position: fixed;
      top: 0;
      bottom: 0;
      left: 0;
      width: 250px;
      background-color: #343a40;
      padding-top: 20px;
    }
    .sidebar a {
      color: white;
      padding: 15px;
      text-decoration: none;
      display: block;
    }
    .sidebar a:hover {
      background-color: #495057;
    }
    .content {
      margin-left: 270px;
      padding: 20px;
      padding-top: 80px; /* 确保内容不被顶部遮挡 */
    }
    .header {
      background-color: white;
      padding: 20px;
      margin-bottom: 20px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      position: fixed;
      top: 0;
      left: 270px;
      right: 0;
      z-index: 1000;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
    .header h2 {
      margin: 0;
    }
    .charts-container {
      display: flex;
      flex-wrap: wrap;
      gap: 20px;
    }
    .chart-card {
      background-color: white;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      width: calc(50% - 20px); /* 两列布局 */
      box-sizing: border-box;
    }
    .chart-card h5 {
      margin-bottom: 20px;
    }
    .print-button-container {
      display: flex;
      justify-content: flex-end;
      margin-bottom: 20px;
    }
  </style>
</head>
<body>
<jsp:include page="include/head.jsp"/>
<jsp:include page="include/menu.jsp"/>

<div class="content">
  <div class="header">
    <h2>在线预约挂号系统（管理员）</h2>
    <button class="btn btn-success" onclick="printContent()">打印</button>
  </div>
  <div class="charts-container">
    <div class="chart-card">
      <h5>各科室基本信息</h5>
      <div id="main1" style="width: 100%;height: 400px;"></div>
    </div>
    <div class="chart-card">
      <h5>每日预约人数</h5>
      <div id="main2" style="width: 100%;height: 400px;"></div>
    </div>
    <div class="chart-card">
      <h5>科室预约人数</h5>
      <div id="main3" style="width: 100%;height: 400px;"></div>
    </div>
    <div class="chart-card">
      <h5>科室医生人数</h5>
      <div id="main4" style="width: 100%;height: 400px;"></div>
    </div>
  </div>
</div>

<script type="text/javascript">
  function printContent() {
    var printContent = document.querySelector('.content').innerHTML;
    var originalContent = document.body.innerHTML;
    document.body.innerHTML = printContent;
    window.print();
    document.body.innerHTML = originalContent;
    location.reload(); // 重新加载页面以恢复事件绑定
  }

  $.post("<%=request.getContextPath()%>/count", {action: "1"}, function(data) {
    console.log(data);
    var myChart1 = echarts.init(document.getElementById("main1"));
    var option1 = {
      color: ['#3398DB'],
      tooltip: {trigger: 'axis', axisPointer: {type: 'shadow'}},
      grid: {left: '3%', right: '4%', bottom: '3%', containLabel: true},
      xAxis: [{type: 'category', data: ['科室', '诊室', '医生', '患者'], axisTick: {alignWithLabel: true}}],
      yAxis: [{type: 'value'}],
      series: [{name: '数量', type: 'bar', barWidth: '60%', data: data}]
    };
    myChart1.setOption(option1);
  });

  $.post("<%=request.getContextPath()%>/count", {action: "2"}, function(data) {
    console.log(data);
    var myChart2 = echarts.init(document.getElementById("main2"));
    var option2 = {
      color: ['#40bfdb'],
      tooltip: {trigger: 'axis', axisPointer: {type: 'shadow'}},
      grid: {left: '3%', right: '4%', bottom: '3%', containLabel: true},
      xAxis: [{type: 'category', data: data.data, axisTick: {alignWithLabel: true}, axisLabel: {rotate: 60}}],
      yAxis: [{type: 'value'}],
      series: [{name: '预约量', type: 'bar', barWidth: '60%', data: data.data1}]
    };
    myChart2.setOption(option2);
  });

  $.post("<%=request.getContextPath()%>/count", {action: "3"}, function(data) {
    console.log(data);
    var myChart3 = echarts.init(document.getElementById("main3"));
    var option3 = {
      color: ['#7049db'],
      tooltip: {trigger: 'axis', axisPointer: {type: 'shadow'}},
      grid: {left: '3%', right: '4%', bottom: '3%', containLabel: true},
      xAxis: [{type: 'category', data: ['星期天','星期一','星期二','星期三','星期四','星期五','星期六'], axisTick: {alignWithLabel: true}}],
      yAxis: [{type: 'value'}],
      series: [{name: '预约量', type: 'bar', barWidth: '60%', data: data}]
    };
    myChart3.setOption(option3);
  });

  // 新增加的图表，显示科室医生人数
  $.post("<%=request.getContextPath()%>/count", {action: "4"}, function(data) {
    console.log(data);
    var myChart4 = echarts.init(document.getElementById("main4"));
    var option4 = {
      color: ['#ff6347'],
      tooltip: {trigger: 'axis', axisPointer: {type: 'shadow'}},
      grid: {left: '3%', right: '4%', bottom: '3%', containLabel: true},
      xAxis: [{type: 'category', data: ['星期天','星期一','星期二','星期三','星期四','星期五','星期六'], axisTick: {alignWithLabel: true}}],
      yAxis: [{type: 'value'}],
      series: [{name: '出诊医生人数', type: 'bar', barWidth: '60%', data: data}]
    };
    myChart4.setOption(option4);
  });
</script>
</body>
</html>