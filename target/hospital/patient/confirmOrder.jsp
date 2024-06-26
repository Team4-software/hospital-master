<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>确定预约--在线预约挂号系统</title>
    <jsp:include page="include/headtag.jsp"/>
</head>
<body>
<jsp:include page="include/head.jsp"/>
<jsp:include page="include/menu.jsp"/>

<div style="margin-top: 100px;margin-left: 300px">
    <div id="page-inner">
        <c:if test="${numSource != null}">
            <div class="container1">
                <style>
                    .container1 .title{color: #00E8D7;margin:20px auto;display: table;}
                    .container1 .left{float: left;width: 30%;}
                    .container1 .left .send{background-color: #009F95;color:#fff;border-radius: 5px;border: #009F95;cursor: pointer;}
                    .container1 .left .confirm{text-align: center;background-color: #009F95;color:#fff;border-radius: 10px;height:30px;cursor:pointer;}
                </style>
                <h2 class="title">预约信息核对</h2>
                <div class="left">
                    <form autocomplete="off" method="post" action="order">
                        <input hidden name="wid" value="${numSource.state}">
                        <input hidden name="did" value="${doctor.did}">
                        <input hidden name="action" value="confirm">
                        <table>
                            <tr><td>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</td><td>${sessionScope.patient.name}</td></tr>
                            <tr><td>预约医生：</td><td>${doctor.dname}</td></tr>
                            <tr><td>就诊时间：</td><td>${numSource.visitdate} ${numSource.visitnoon} ${numSource.visittime}第${numSource.serialnumber}号</td></tr>
                            <tr><td colspan="2"  class="confirm">确定</td></tr>
                        </table>
                    </form>
                    <script>
                        $(function () {
                            $(".confirm").bind("click",function () {
                                $("form").submit();
                            });
                        });
                    </script>
                </div>
            </div>
        </c:if>
    </div>
</div>

</body>
</html>
