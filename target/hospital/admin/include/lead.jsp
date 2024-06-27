<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>在线预约挂号系统（管理员）菜单</title>
    <style>
        body {
            background-color: #fff;
            color: #333;
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
            padding: 20px;
            width: 80%;
        }
        .menu-item {
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: #129CD1;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .menu-item img {
            width: 100px;  /* 图标宽度 */
            height: 100px; /* 图标高度 */
            margin-bottom: 10px;
            border-radius: 10px;
        }
        .menu-item a {
            text-decoration: none;
            color: #fff;
            font-size: 18px;
            font-weight: bold;
            background-color: #333;
            padding: 10px 0;
            width: 100%; /* 链接宽度与图标宽度一致 */
            border-radius: 0 0 10px 10px;
            transition: background-color 0.3s;
        }
        .menu-item a:hover {
            background-color: #1abc9c;
        }
    </style>
</head>
<body>
<div class="menu-section">
    <div class="menu-item">
        <img src="<%=request.getContextPath()%>/images/basicinfo.png" alt="Basic Info Icon">
        <a href="<%=request.getContextPath()%>/admin/basicinfo.jsp">基本信息</a>
    </div>
    <div class="menu-item">
        <img src="<%=request.getContextPath()%>/images/doctorManage.png" alt="Doctor Manage Icon">
        <a href="<%=request.getContextPath()%>/admin/doctorManage">医生信息管理</a>
    </div>
    <div class="menu-item">
        <img src="<%=request.getContextPath()%>/images/patientManage.png" alt="Patient Manage Icon">
        <a href="<%=request.getContextPath()%>/admin/patientManage">患者信息管理</a>
    </div>
    <div class="menu-item">
        <img src="<%=request.getContextPath()%>/images/officeManage.png" alt="Office Manage Icon">
        <a href="<%=request.getContextPath()%>/admin/office">科室信息管理</a>
    </div>
    <div class="menu-item">
        <img src="<%=request.getContextPath()%>/images/applyManage.png" alt="Apply Manage Icon">
        <a href="<%=request.getContextPath()%>/admin/applyManage">排班申请管理</a>
    </div>
    <div class="menu-item">
        <img src="<%=request.getContextPath()%>/images/modifyPwd.png" alt="Modify Password Icon">
        <a href="<%=request.getContextPath()%>/admin/modifyPwd.jsp">修改个人密码</a>
    </div>
    <div class="menu-item">
        <img src="<%=request.getContextPath()%>/images/logout.png" alt="Logout Icon">
        <a href="<%=request.getContextPath()%>/logout">安全退出</a>
    </div>
</div>
</body>
</html>