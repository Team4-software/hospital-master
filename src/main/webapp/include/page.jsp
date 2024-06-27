<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2024/5/21
  Time: 9:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu</title>
</head>
<body>
<h1>Welcome to the Role Selection Menu</h1>
<ul>
    <li><a href="<%=request.getContextPath()%>/admin/login.jsp">管理员登录</a></li>
    <li><a href="<%=request.getContextPath()%>/doctor/login.jsp">医生登录</a></li>
    <li><a href="<%=request.getContextPath()%>/patient/index.jsp">用户登录</a></li>
</ul>
</body>
</html>
