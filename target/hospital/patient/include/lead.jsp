<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2024/5/21
  Time: 0:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>菜单展示</title>
    <!-- 在这里包含你的 CSS 文件 -->
    <style>
        body {
            background-color: white; /* 修改页面背景颜色为白色 */
            display: flex;
            justify-content: center; /* 让内容水平居中 */
            align-items: center; /* 让内容垂直居中 */
            height: 100vh; /* 让内容铺满整个视口高度 */
        }
        .menu-section {
            width: 70%; /* 控制菜单的宽度 */
            display: flex;
            justify-content: space-between; /* 让三个菜单块均匀分布 */
        }
        .menu-item {
            width: 30%; /* 控制菜单块宽度 */
            background-color: #333; /* 调整菜单块颜色为深灰色 */
            padding: 20px;
            border-radius: 5px;
            box-sizing: border-box; /* 让 padding 不影响宽度 */
        }
        .menu-item a {
            text-decoration: none;
            color: white;
            font-weight: bold;
            font-size: 18px; /* 调整字体大小 */
        }
    </style>
</head>
<body>

<!-- 菜单分块展示 -->
<div class="menu-section">
    <div class="menu-item">
        <a href="<%=request.getContextPath()%>/patient/searchDoctor?order=doctor">按医生挂号</a>
    </div>
    <div class="menu-item">
        <a href="<%=request.getContextPath()%>/patient/orderList">我的预约</a>
    </div>
    <div class="menu-item">
        <a href="<%=request.getContextPath()%>/patient/modifyPwd.jsp">修改密码</a>
    </div>
</div>

<!-- 在这里包含你的 JavaScript 文件 -->

</body>
</html>
