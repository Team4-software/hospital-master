<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册--在线预约挂号系统</title>
    <jsp:include page="include/headtag.jsp"/>
    <style>
        body{
            background-image: url("../images/1.jpg");
            background-size: 100%;
            text-align: center;
        }
        .form-box{
            margin: 100px auto;
            width: 500px;
            color: #2e2e2e;
            height: 700px; /* 修改高度为650px */
            background: #fff;
            position: relative; /* 确保子元素能够绝对定位 */
        }
        .form-box a{
            color: #129CD1;
            text-decoration: none;
        }
        .form-top {
            overflow: hidden;
            padding: 0 25px 15px 25px;
            background: #fff;
            -moz-border-radius: 4px 4px 0 0;
            -webkit-border-radius: 4px 4px 0 0;
            border-radius: 4px 4px 0 0;
            text-align: center;
            position: relative; /* 确保子元素能够绝对定位 */
        }
        .form-bottom {
            padding: 25px 25px 30px 25px;
            background: #fff;
            -moz-border-radius: 0 0 4px 4px;
            -webkit-border-radius: 0 0 4px 4px;
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
            color:#2e2e2e;
            -moz-border-radius: 4px;
            -webkit-border-radius: 4px;
            border-radius: 4px;
            -moz-box-shadow: none;
            -webkit-box-shadow: none;
            box-shadow: none;
            -o-transition: all .3s;
            -moz-transition: all .3s;
            -webkit-transition: all .3s;
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
            -moz-border-radius: 4px;
            -webkit-border-radius: 4px;
            border-radius: 4px;
            text-shadow: none;
            -moz-box-shadow: none;
            -webkit-box-shadow: none;
            box-shadow: none;
            -o-transition: all .3s;
            -moz-transition: all .3s;
            -webkit-transition: all .3s;
            transition: all .3s;
        }
        .pull-right{
            float: right;
        }
        .pull-right-top {
            position: absolute;
            top: 10px;
            right: 10px;
        }
    </style>
</head>
<body>
<div class="form-box">
    <div class="form-top">
        <div class="form-top-left">
            <h3>用户注册</h3>
            <p>请输入注册信息</p>
        </div>
        <div class="pull-right-bottom">
            <p class="text-danger"
               id="errorTip">${message}</p>
        </div>

    </div>
    <div class="form-bottom">
        <form role="form" action="<%=request.getContextPath()%>/patient/register" method="post" class="login-form">
            <div class="form-group col-xs-12">
                <label class="sr-only" for="userid">userid</label>账号(*):<input
                    style="font-weight: bold" type="text" name="account"
                     class="form-control input-control clearfix"
                    required onkeyup="isCheckUserid()" /><span id="accountTip"></span>
            </div>
            <div class="form-group col-xs-12">
                <label class="sr-only" for="userid">userid</label>身份证号(*):<input
                    style="font-weight: bold" type="text" name="email"
                    id="userid" class="form-control input-control clearfix"
                    required onkeyup="isCheckUserid()" /><span id="emailTip"></span>
            </div>
            <div class="form-group col-xs-12">
                <label class="sr-only" for="userName">name</label>姓名(*):<input
                    style="font-weight: bold" type="text" name="name"
                    id="userName" class="form-username form-control" required />
            </div>
            <div class="form-group col-xs-12">
                <label class="sr-only" >password</label>密码(*):<input
                    style="font-weight: bold" type="password" name="password"
                    class="form-password form-control" id="pwd1" required />
            </div>
            <div class="form-group col-xs-12">
                <label class="sr-only" >passwordCof</label>确认密码(*):<input
                    style="font-weight: bold" type="password"
                    name="passwordCof" class="form-password form-control "
                    id="pwd2" required onkeyup="isCheckPwd()" /> <span id="pwdTip"></span>
            </div>
            <div class="form-group col-xs-12">
                <button type="submit" class="btn" id="btn">立即注册</button>
            </div>
        </form>
        <span><a href="<%=request.getContextPath()%>/patient/findPwd.jsp">找回密码</a></span> <span><a
            href="<%=request.getContextPath()%>/patient/login.jsp" class="pull-right">用户登录</a></span>
    </div>

    <script>

        function isCheckUserid() {
            var userid= document.getElementById("userid").value;
            document.getElementById("errorTip").innerHTML = "";
            if (userid != "") {
                var reg = /^[1-9]\d{5}(18|19|20)\d{2}(0[1-9]|1[0-2])(0[1-9]|[12]\d|3[01])\d{3}([0-9Xx])?$/;
                isok = reg.test(userid);
                if (isok) {
                    document.getElementById("emailTip").innerHTML = "身份证号格式正确";
                    document.getElementById("btn").disabled = false;
                    return true;
                } else {
                    document.getElementById("btn").disabled = true;
                    document.getElementById("emailTip").innerHTML = "身份证号格式不正确";
                    return false;
                }
            } else {
                document.getElementById("emailTip").innerHTML = "";
                return false;
            }
        }
        function isCheckPwd() {
            var pwd1 = document.getElementById("pwd1").value;
            var pwd2 = document.getElementById("pwd2").value;
            document.getElementById("errorTip").innerHTML = "";
            if (pwd1 == pwd2) {
                document.getElementById("pwdTip").innerHTML = "两次密码相同";
                document.getElementById("btn").disabled = false;
            } else {
                document.getElementById("pwdTip").innerHTML = "两次密码不相同";
                document.getElementById("btn").disabled = true;
            }
        }
    </script>
</div>
</body>
</html>
