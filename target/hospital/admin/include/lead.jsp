<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>在线预约挂号系统（管理员）菜单</title>
    <style>
        body {
            background-color: #fff; /* 背景颜色 */
            color: #129CD1; /* 文字颜色 */
            font-family: Arial, sans-serif; /* 字体 */
            text-align: center; /* 文本居中 */
            display: flex;
            justify-content: center; /* 水平居中 */
            align-items: center; /* 垂直居中 */
            height: 100vh; /* 高度100视口高度 */
            margin: 0; /* 去除默认外边距 */
        }
        .menu-section {
            display: grid; /* 使用网格布局 */
            grid-template-columns: repeat(3, 1fr); /* 三列均分 */
            gap: 20px; /* 网格间距 */
            padding: 20px; /* 内边距 */
            width: 80%; /* 宽度80% */
        }
        .menu-item {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .menu-item img {
            width: 300px; /* 图标宽度 */
            height: 200px; /* 图标高度 */
            margin-bottom: 10px; /* 下外边距 */
            /* 去掉图片的圆角边框 */
        }
        .menu-item a {
            text-decoration: none; /* 去除下划线 */
            color: #fff; /* 文字颜色 */
            font-size: 18px; /* 字体大小 */
            font-weight: bold; /* 字体加粗 */
            background-color: #129CD1; /* 背景颜色 */
            padding: 10px 0; /* 上下内边距 */
            width: 300px; /* 链接宽度与图标宽度一致 */
            border-radius: 0 0 10px 10px; /* 底部圆角 */
            transition: background-color 0.3s; /* 背景颜色过渡效果 */
        }
        .menu-item a:hover {
            background-color: #1abc9c; /* 悬停背景颜色 */
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
        <img src="<%=request.getContextPath()%>/images/image2.png" alt="Modify Password Icon">
        <a href="<%=request.getContextPath()%>/admin/modifyPwd.jsp">修改个人密码</a>
    </div>
    <div class="menu-item">
        <img src="<%=request.getContextPath()%>/images/logout.png" alt="Logout Icon">
        <a href="<%=request.getContextPath()%>/logout">安全退出</a>
    </div>
</div>
</body>
</html>