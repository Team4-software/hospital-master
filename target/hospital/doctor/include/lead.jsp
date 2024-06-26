<%--
  Created by IntelliJ IDEA.
  User: 16951
  Date: 2024/6/27
  Time: 2:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>菜单展示</title>
    <style>
        body {
            background-color: #fff; /* 背景颜色 */
            color: #fff; /* 字体颜色 */
            font-family: Arial, sans-serif;
            text-align: center;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .menu-section {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            width: 80%;
        }
        .menu-item {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .menu-item img {
            width: 300px; /* 图标大小 */
            height: 250px;
            margin-bottom: 0px;
            border-radius: 10px; /* 圆角处理 */
        }
        .menu-item a {
            text-decoration: none;
            color: #fff;
            font-size: 18px;
            font-weight: bold;
            background-color: #129CD1; /* 背景颜色 */
            padding: 10px 0;
            width: 300px; /* 设置与图标相同的宽度 */
            border-radius: 0 0 10px 10px; /* 矩形下部的圆角处理 */
            display: inline-block;
            transition: background-color 0.3s;
        }
        .menu-item a:hover {
            background-color: #1abc9c; /* 悬停效果 */
        }
    </style>
</head>
<body>

<!-- 菜单分块展示 -->
<div class="menu-section">

    <div class="menu-item">
        <img src="<%=request.getContextPath()%>/images/dimage1.png" alt="Doctor Icon"> <!-- 替换为相应的图标路径 -->
        <a href="<%=request.getContextPath()%>/doctor/myWork">排班信息</a>
    </div>
    <div class="menu-item">
        <img src="<%=request.getContextPath()%>/images/dimage2.png" alt="Appointment Icon"> <!-- 替换为相应的图标路径 -->
        <a href="<%=request.getContextPath()%>/doctor/myApply">我的申请</a>
    </div>
    <div class="menu-item">
        <img src="<%=request.getContextPath()%>/images/dimage3.png" alt="Password Icon"> <!-- 替换为相应的图标路径 -->
        <a href="<%=request.getContextPath()%>/doctor/patientList">患者队列</a>
    </div>
    <div class="menu-item">
        <img src="<%=request.getContextPath()%>/images/dimage4.png" alt="Password Icon"> <!-- 替换为相应的图标路径 -->
        <a href="<%=request.getContextPath()%>/doctor/myInfo.jsp">我的信息</a>
    </div>
    <div class="menu-item">
        <img src="<%=request.getContextPath()%>/images/image2.png" alt="Password Icon"> <!-- 替换为相应的图标路径 -->
        <a href="<%=request.getContextPath()%>/doctor/modifyPwd.jsp">修改密码</a>
    </div>
</div>

</body>
</html>
