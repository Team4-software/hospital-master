<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>管理员登录--在线预约挂号系统</title>--%>
<%--    <jsp:include page="include/headtag.jsp"/>--%>
<%--    <style>--%>
<%--        body{--%>
<%--            &lt;%&ndash;background-image: url("<%=request.getContextPath()%>/images/1.jpg");&ndash;%&gt;--%>
<%--            background: #000000;--%>
<%--            background-size: 100%;--%>
<%--            text-align: center;--%>
<%--        }--%>
<%--        .form-box{--%>
<%--            margin: 100px auto;--%>
<%--            width: 550px;--%>
<%--            color: #fff;--%>
<%--        }--%>
<%--        .form-box a{--%>
<%--            color: #de615e;--%>
<%--            text-decoration: none;--%>
<%--        }--%>
<%--        .form-top {--%>
<%--            overflow: hidden;--%>
<%--            padding: 0 25px 15px 25px;--%>
<%--            background: #444;--%>
<%--            background: rgba(0, 0, 0, 0.35);--%>
<%--            -moz-border-radius: 4px 4px 0 0;--%>
<%--            -webkit-border-radius: 4px 4px 0 0;--%>
<%--            border-radius: 4px 4px 0 0;--%>
<%--            text-align: left;--%>
<%--        }--%>
<%--        .form-bottom {--%>
<%--            padding: 25px 25px 30px 25px;--%>
<%--            background: #444;--%>
<%--            background: rgba(0, 0, 0, 0.3);--%>
<%--            -moz-border-radius: 0 0 4px 4px;--%>
<%--            -webkit-border-radius: 0 0 4px 4px;--%>
<%--            border-radius: 0 0 4px 4px;--%>
<%--            text-align: left;--%>
<%--        }--%>
<%--        .form-top-left {--%>
<%--            float: left;--%>
<%--            width: 75%;--%>
<%--            padding-top: 25px;--%>
<%--        }--%>
<%--        .form-top-left h3 {--%>
<%--            margin-top: 0;--%>
<%--            color: #969696;--%>
<%--        }--%>
<%--        .form-top-left p {--%>
<%--            opacity: 0.8;--%>
<%--            color: #fff;--%>
<%--        }--%>

<%--        .text-danger {--%>
<%--            color: #b94a48;--%>
<%--        }--%>
<%--        .form-group {--%>
<%--            margin-bottom: 15px;--%>
<%--        }--%>
<%--        .col-xs-12 {--%>
<%--            width: 100%;--%>
<%--            float: left;--%>
<%--            position: relative;--%>
<%--            min-height: 1px;--%>
<%--            padding-left: 15px;--%>
<%--            padding-right: 15px;--%>
<%--        }--%>
<%--        .sr-only {--%>
<%--            position: absolute;--%>
<%--            width: 1px;--%>
<%--            height: 1px;--%>
<%--            margin: -1px;--%>
<%--            padding: 0;--%>
<%--            overflow: hidden;--%>
<%--            clip: rect(0, 0, 0, 0);--%>
<%--            border: 0;--%>
<%--        }--%>
<%--        input[type="text"], input[type="password"], textarea, textarea.form-control {--%>
<%--            display: block;--%>
<%--            width: 90%;--%>
<%--            height: 50px;--%>
<%--            margin: 0;--%>
<%--            padding: 0 20px;--%>
<%--            vertical-align: middle;--%>
<%--            background: #fff;--%>
<%--            border: 1px solid #cccccc;--%>
<%--            font-family: 'Roboto', sans-serif;--%>
<%--            font-size: 16px;--%>
<%--            font-weight: 300;--%>
<%--            line-height: 50px;--%>
<%--            color: #888;--%>
<%--            -moz-border-radius: 4px;--%>
<%--            -webkit-border-radius: 4px;--%>
<%--            border-radius: 4px;--%>
<%--            -moz-box-shadow: none;--%>
<%--            -webkit-box-shadow: none;--%>
<%--            box-shadow: none;--%>
<%--            -o-transition: all .3s;--%>
<%--            -moz-transition: all .3s;--%>
<%--            -webkit-transition: all .3s;--%>
<%--            transition: all .3s;--%>
<%--        }--%>
<%--        .btn {--%>
<%--            width: 90%;--%>
<%--            display: inline-block;--%>
<%--            height: 50px;--%>
<%--            margin: 0;--%>
<%--            padding: 0 20px;--%>
<%--            vertical-align: middle;--%>
<%--            background: #de615e;--%>
<%--            border: 0;--%>
<%--            font-family: 'Roboto', sans-serif;--%>
<%--            font-size: 16px;--%>
<%--            font-weight: 300;--%>
<%--            line-height: 50px;--%>
<%--            color: #fff;--%>
<%--            -moz-border-radius: 4px;--%>
<%--            -webkit-border-radius: 4px;--%>
<%--            border-radius: 4px;--%>
<%--            text-shadow: none;--%>
<%--            -moz-box-shadow: none;--%>
<%--            -webkit-box-shadow: none;--%>
<%--            box-shadow: none;--%>
<%--            -o-transition: all .3s;--%>
<%--            -moz-transition: all .3s;--%>
<%--            -webkit-transition: all .3s;--%>
<%--            transition: all .3s;--%>
<%--        }--%>
<%--        .pull-right{--%>
<%--            float: right;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="form-box">--%>
<%--    <div class="form-top">--%>
<%--        <div class="form-top-left">--%>
<%--            <h3 style="color: #969696;">管理员登录-在线预约挂号系统后台管理</h3>--%>
<%--            <p>请输入登录信息</p>--%>
<%--        </div>--%>
<%--        <div class="pull-right-bottom">--%>
<%--            <p class="text-danger"--%>
<%--               id="errorTip">${message}</p>--%>
<%--        </div>--%>
<%--        <form role="form" action="<%=request.getContextPath()%>/login" method="post" class="login-form">--%>
<%--            <div class="form-group col-xs-12">--%>
<%--                <label class="sr-only" ></label>账号(*):<input--%>
<%--                    style="font-weight: bold" type="text" name="account"--%>
<%--                    class="form-control input-control clearfix"--%>
<%--                    required  /><span id="accountTip"></span>--%>
<%--            </div>--%>
<%--            <div class="form-group col-xs-12">--%>
<%--                <label class="sr-only" >password</label>密码(*):<input--%>
<%--                    style="font-weight: bold" type="password" name="password"--%>
<%--                    class="form-password form-control" id="pwd1" required />--%>
<%--            </div>--%>
<%--            <input hidden value="管理员" name="accounttype">--%>
<%--            <div class="form-group col-xs-12">--%>
<%--                <button type="submit" class="btn" id="btn">立即登录</button>--%>
<%--            </div>--%>
<%--        </form>--%>
<%--    </div>--%>
<%--    <div class="form-bottom">--%>

<%--    </div>--%>

<%--</div>--%>
<%--</body>--%>
<%--</html>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登录--在线预约挂号系统</title>
    <jsp:include page="include/headtag.jsp"/>
    <style>
        body {
            background-image: url("../images/1.jpg");
            background-size: 100%;
            text-align: center;
        }
        .form-box {
            margin: 100px auto;
            width: 500px;
            color: #2e2e2e;
            background: #fff;
            position: relative; /* 确保子元素能够绝对定位 */
        }
        .form-box a {
            color: #129CD1;
            text-decoration: none;
        }
        .form-top {
            overflow: hidden;
            padding: 0 25px 15px 25px;
            background: #fff;
            border-radius: 4px 4px 0 0;
            text-align: center;
            position: relative; /* 确保子元素能够绝对定位 */
        }
        .form-bottom {
            padding: 25px 25px 30px 25px;
            background: #fff;
            border-radius: 0 0 4px 4px;
            text-align: left;
            height: 300px; /* 设置固定高度为300像素 */
        }
        .form-top-left {
            width: 100%;
            padding-top: 25px;
            text-align: center; /* 标题居中 */
        }
        .form-top-left h3 {
            margin-top: 0;
            color: #129CD1;
            border-bottom: 2px solid #129CD1; /* 添加下划线 */
            padding-bottom: 5px; /* 添加一些内边距以调整下划线和文本之间的距离 */
            display: inline-block; /* 使下划线根据文本长度 */
        }
        .form-top-left p {
            opacity: 0.8;
            color: #2e2e2e;
            text-align: left; /* 文字左对齐 */
            margin-top: 10px; /* 添加一些内边距使其与标题分开 */
            font-size: 20px; /* 增大字体 */
            font-weight: bold; /* 加粗字体 */
        }
        .text-danger {
            color: #c9302c;
            font-weight: bold;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .col-xs-12 {
            width: 100%;
            float: left;
            position: relative;
            min-height: 1px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .sr-only {
            position: absolute;
            width: 1px;
            height: 1px;
            margin: -1px;
            padding: 0;
            overflow: hidden;
            clip: rect(0, 0, 0, 0);
            border: 0;
        }
        input[type="text"], input[type="password"], textarea, textarea.form-control {
            display: block;
            width: 90%;
            height: 50px;
            margin: 0;
            padding: 0 20px;
            vertical-align: middle;
            background: #fff;
            border: 1px solid #cccccc;
            font-family: 'Roboto', sans-serif;
            font-size: 16px;
            font-weight: 300;
            line-height: 50px;
            color: #2e2e2e;
            border-radius: 4px;
            transition: all .3s;
        }
        .btn {
            width: 90%;
            display: inline-block;
            height: 50px;
            margin: 0;
            padding: 0 20px;
            vertical-align: middle;
            background: #129CD1;
            border: 0;
            font-family: 'Roboto', sans-serif;
            font-size: 16px;
            font-weight: 300;
            line-height: 50px;
            color: #fff;
            border-radius: 4px;
            transition: all .3s;
        }
        .pull-right {
            float: right;
        }
        .pull-right-top {
            position: absolute;
            top: 10px;
            right: 10px;
        }
        .s-message {
            position: absolute;
            top: 10px;
            left: 10px;
            color: green;
            font-weight: bold;
        }
    </style>
</head>
<body>
<div class="form-box">
    <div class="form-top">
        <div class="form-top-left">
            <h3>管理员登录-在线预约挂号系统后台管理</h3>
            <p>请输入登录信息</p>
        </div>
        <div class="pull-right-bottom">
            <p class="text-danger"
               id="errorTip">${message}</p>
        </div>
    </div>
    <div class="form-bottom">
        <form role="form" action="<%=request.getContextPath()%>/login" method="post" class="login-form">
            <div class="form-group col-xs-12">
                <label class="sr-only"></label>账号(*):<input
                    style="font-weight: bold" type="text" name="account"
                    class="form-control input-control clearfix"
                    required/><span id="accountTip"></span>
            </div>
            <div class="form-group col-xs-12">
                <label class="sr-only">password</label>密码(*):<input
                    style="font-weight: bold" type="password" name="password"
                    class="form-password form-control" id="pwd1" required/>
            </div>
            <input hidden value="管理员" name="accounttype">
            <div class="form-group col-xs-12">
                <button type="submit" class="btn" id="btn">立即登录</button>
            </div>
        </form>
    </div>
</div>
<script>
    window.onload = function() {
        const errorTip = document.getElementById("errorTip");
        const inputs = document.querySelectorAll("input[type='text'], input[type='password']");

        if (errorTip) {
            errorTip.innerText = "";
        }

        inputs.forEach(input => {
            input.addEventListener("input", () => {
                if (errorTip) {
                    errorTip.innerText = "";
                }
            });
        });
    };
</script>
</body>
</html>