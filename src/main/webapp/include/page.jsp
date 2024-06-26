<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>角色选择菜单</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            color: #fff;
            text-align: center;
        }
        .carousel {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
        }
        .carousel .item img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            display: block;
            opacity: 0;
            transition: opacity 0.5s;
        }
        .carousel .item img.lazyloaded {
            opacity: 1;
        }
        .content {
            position: relative;
            z-index: 1;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background: rgba(0, 0, 0, 0.5);
        }
        h1 {
            font-size: 3em;
            margin: 0;
            padding: 20px 0;
        }
        ul {
            list-style-type: none;
            padding: 0;
        }
        li {
            margin: 20px 0;
        }
        a {
            text-decoration: none;
            color: #fff;
            font-size: 1.5em;
            background: #129CD1;
            padding: 15px 30px;
            border-radius: 5px;
            transition: background 0.3s;
            display: inline-block;
            width: 200px;
            text-align: center;
        }
        a:hover {
            background: #0a7ca7;
        }
    </style>
</head>
<body>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <!-- Wrapper for slides -->
    <div class="carousel-inner">
        <div class="item active">
            <img class="lazyload" data-src="./images/img_0.jpg" alt="First slide">
        </div>
        <div class="item">
            <img class="lazyload" data-src="./images/img_3.jpg" alt="Second slide">
        </div>
        <div class="item">
            <img class="lazyload" data-src="./images/img_2.jpg" alt="Third slide">
        </div>
    </div>
</div>

<div class="content">
    <h1>欢迎来到角色选择菜单</h1>
    <ul>
        <li><a href="<%=request.getContextPath()%>/admin/login.jsp">管理员登录</a></li>
        <li><a href="<%=request.getContextPath()%>/doctor/login.jsp">医生登录</a></li>
        <li><a href="<%=request.getContextPath()%>/patient/login.jsp">用户登录</a></li>
        <li><a href="<%=request.getContextPath()%>/help.jsp">帮助中心</a></li> <!-- 新增帮助中心按钮 -->
    </ul>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/lazysizes/5.3.2/lazysizes.min.js" async></script>
<script>
    $(document).ready(function(){
        $('.carousel').carousel();
    });
</script>
</body>
</html>
