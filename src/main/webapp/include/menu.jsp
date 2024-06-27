<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!--右边菜单栏-->
<div id="wrapper" class="toggled1 ">

    <div id="sidebar-wrapper1">
        <ul class="sidebar-nav1">
            <li class="sidebar-brand1"><a href="#"> </a></li>
            <br />
            <br />
            <br />
            <li><a class="list-group-item1" href="<%=request.getContextPath()%>/admin/login.jsp"><font color="#fff">管理员登录</font></a></li>
            <li><a class="list-group-item1" href="<%=request.getContextPath()%>/doctor/login.jsp"><font color="#fff">医生登录</font></a></li>
            <li><a class="list-group-item1" href="<%=request.getContextPath()%>/patient/login.jsp"><font color="#fff">用户登录</font></a></li>
            <li><a class="list-group-item1" href="<%=request.getContextPath()%>/help.jsp"><font color="#fff">帮助中心</font></a></li>
        </ul>
    </div>
</div>