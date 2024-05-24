<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>找回密码--在线预约挂号系统</title>
    <jsp:include page="include/headtag.jsp"/>
    <style>
        body{
            background-image: url("../images/1.jpg");
            background-size: 100%;
            text-align: center;
        }
        .form-box{
            margin: 0 auto;
            width: 550px;
            color: #fff;
        }
        .form-box a{
            color: #de615e;
            text-decoration: none;
        }
        .form-top {
            overflow: hidden;
            padding: 0 25px 15px 25px;
            background: #444;
            background: rgba(0, 0, 0, 0.35);
            -moz-border-radius: 4px 4px 0 0;
            -webkit-border-radius: 4px 4px 0 0;
            border-radius: 4px 4px 0 0;
            text-align: left;
        }
        .form-bottom {
            padding: 25px 25px 30px 25px;
            background: #444;
            background: rgba(0, 0, 0, 0.3);
            -moz-border-radius: 0 0 4px 4px;
            -webkit-border-radius: 0 0 4px 4px;
            border-radius: 0 0 4px 4px;
            text-align: left;
        }
        .form-top-left {
            float: left;
            width: 75%;
            padding-top: 25px;
        }
        .form-top-left h3 {
            margin-top: 0;
            color: #969696;
        }
        .form-top-left p {
            opacity: 0.8;
            color: #fff;
        }

        .text-danger {
            color: #b94a48;
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
            color: #888;
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
            background: #de615e;
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
    </style>
</head>
<body>
<div class="form-box">
    <div class="form-top">
        <div class="form-top-left">
            <h3 style="color: #969696;">找回密码</h3>
            <p>请输入你的账号和身份证号</p>
        </div>
        <div class="pull-right-bottom">
            <p style="margin-top: 20px" class="text-danger"
               id="errorTip">${message}</p>
        </div>
    </div>
    <div class="form-bottom">
        <form role="form" action="<%=request.getContextPath()%>/patient/findPwd" method="post" class="login-form">
            <div class="form-group col-xs-12">
                <label class="sr-only" for="account">账号</label>账号(*):<input
                    style="font-weight: bold" type="text" name="account" id="account"
                    class="form-control input-control clearfix"
                    required />
            </div>
<%--            <div class="form-group col-xs-12">--%>
<%--                <label class="sr-only" for="userid">身份证号</label>身份证号(*):<input--%>
<%--                    style="font-weight: bold" type="text" name="uid"--%>
<%--                    id="userid" class="form-control input-control clearfix"--%>
<%--                    required onkeyup="isCheckUserid()" /><span id="emailTip"></span>--%>
<%--            </div>--%>
            <div class="form-group col-xs-12">
                <label class="sr-only" for="pwd1">密码</label>密码(*):<input
                    style="font-weight: bold" type="password" name="password"
                    class="form-password form-control" id="pwd1" required />
            </div>
            <div class="form-group col-xs-12">
                <label class="sr-only" for="pwd2">确认密码</label>确认密码(*):<input
                    style="font-weight: bold" type="password"
                    name="passwordCof" class="form-password form-control "
                    id="pwd2" required onkeyup="isCheckPwd()" /> <span id="pwdTip"></span>
            </div>

            <div class="form-group col-xs-12">
                <button type="submit" class="btn" id="btn">重置密码</button>
            </div>
        </form>
        <span><a href="<%=request.getContextPath()%>/patient/register.jsp">用户注册</a></span> <span><a
            href="<%=request.getContextPath()%>/patient/login.jsp" class="pull-right">用户登录</a></span>
    </div>

    <script>
        <%--function isCheckUserid() {--%>
        <%--    var userid = document.getElementById("userid").value;--%>
        <%--    document.getElementById("errorTip").innerHTML = "";--%>
        <%--    if (userid != "") {--%>
        <%--        var reg = /^[1-9]\d{5}(18|19|20\d{2})((0[1-9])|(1[0-2]))(([0-2][1-9])|(10|20|30|31))\d{3}[\dXx]$/;--%>
        <%--        var isok = reg.test(userid);--%>
        <%--        if (isok) {--%>
        <%--            // 假设 currentUID 是服务器端传递的当前用户的身份证号--%>
        <%--            var currentUID = "${currentUID}";--%>
        <%--            if (userid === currentUID) {--%>
        <%--                document.getElementById("emailTip").innerHTML = "身份证号格式正确";--%>
        <%--                document.getElementById("btn").disabled = false;--%>
        <%--            } else {--%>
        <%--                document.getElementById("emailTip").innerHTML = "身份证号不匹配";--%>
        <%--                document.getElementById("btn").disabled = true;--%>
        <%--            }--%>
        <%--            return true;--%>
        <%--        } else {--%>
        <%--            document.getElementById("btn").disabled = true;--%>
        <%--            document.getElementById("emailTip").innerHTML = "身份证号格式不正确";--%>
        <%--            return false;--%>
        <%--        }--%>
        <%--    } else {--%>
        <%--        document.getElementById("emailTip").innerHTML = "";--%>
        <%--        return false;--%>
        <%--    }--%>
        <%--}--%>

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
