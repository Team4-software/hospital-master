<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="bean.WorkDay" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页--在线预约挂号系统</title>
    <jsp:include page="include/headtag.jsp"/>
</head>
<body>
<jsp:include page="include/head.jsp"/>
<jsp:include page="include/menu.jsp"/>

<div style="margin-top: 100px;margin-left: 300px">
    <div wid="page-inner">
        <div class="container">
<%--            <div class="h3 alert-info info">我的信息</div>--%>
<%--            <div class="row">--%>
<%--            <div class="ysjs ">--%>
<%--                <div class="title">--%>
<%--                    <div class="t">--%>
<%--                        <span><a href="showWeek?wid=${doctor.did}">${doctor.dname}</a></span>--%>
<%--                        <span class="gender">${doctor.gender}</span>--%>
<%--                        <span class="career">${doctor.career}</span>--%>
<%--                        <span class="career">${doctor.age}岁</span>--%>
<%--                    </div>--%>
<%--                    <img src="${doctor.picpath}">--%>
<%--                </div>--%>
<%--                <div class="content">--%>
<%--                    <div >--%>
<%--                        <div>介绍：</div>--%>
<%--                        <div>${doctor.description}</div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <style>--%>
<%--                    .ysjs:after{--%>
<%--                        content: "";--%>
<%--                        clear: both;--%>
<%--                        display: block;--%>
<%--                    }--%>
<%--                    .ysjs{--%>
<%--                        float: left;--%>
<%--                        margin: 20px auto;--%>
<%--                        border-radius: 8px;--%>
<%--                        width: 680px;--%>
<%--                        border: 1px #000 solid;--%>
<%--                    }--%>
<%--                    .ysjs .title{--%>
<%--                        margin: 20px;--%>
<%--                        position: relative;--%>
<%--                    }--%>
<%--                    .ysjs .title:after{--%>
<%--                        visibility: hidden;--%>
<%--                        display: block;--%>
<%--                        font-size: 0;--%>
<%--                        content: "";--%>
<%--                        clear: both;--%>
<%--                        height: 0;--%>
<%--                    }--%>
<%--                    .ysjs .title .t span{--%>
<%--                        margin: 20px;--%>
<%--                        color: rgb(43,43,43);--%>
<%--                        font-size: 30px;--%>
<%--                        line-height: 30px;--%>
<%--                    }--%>
<%--                    .ysjs .title img{--%>
<%--                        position: absolute;--%>
<%--                        top: -20px;--%>
<%--                        left: 480px;--%>
<%--                        width: 100px;--%>
<%--                        height: 125px;--%>
<%--                    }--%>
<%--                    .ysjs .title .t .gender{--%>
<%--                        color:rgb(95, 156, 236);--%>
<%--                    }--%>
<%--                    .ysjs .title .t .career{--%>
<%--                        font-size: 17px;--%>
<%--                        margin-left: 30px;--%>
<%--                        color:rgb(61,175,167);--%>
<%--                    }--%>
<%--                    .ysjs .content {--%>
<%--                        border-top: 1px solid rgb(219, 219, 219);--%>
<%--                        margin: 30px;--%>
<%--                        text-align: left;--%>
<%--                        width: 640px;--%>
<%--                    }--%>
<%--                    .ysjs .content div{--%>
<%--                        padding-top: 10px;--%>
<%--                    }--%>
<%--                </style>--%>
<%--            </div>--%>
<%--            </div>--%>
            <div class="h3 alert-info info">我的排班</div>
            <%--显示医生排班--%>
            <div class="schedule">
                <div class="week">
                    <div class="ysjj1">
                        <div style="width: 30%;">
                            <div class="ysjj">
                                <div class="title1">医生介绍</div>
                                <img src="${doctor.picpath}">
                                <div class="title">
                                    <div><span class="name">${doctor.dname}</span>
                                        <span class="career">${doctor.career}</span>
                                        <span class="gender">${doctor.gender}</span></div>
                                    <p>介绍：${doctor.description}</p>
                                </div>
                                <div class="work">
                                    <div>上午</div>
                                    <div>下午</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="title2">
                        <%
                            List<WorkDay> workDays= (List<WorkDay>) request.getAttribute("workDays");
                            StringBuffer sb=new StringBuffer();
                            for(int i=0;i<7;i++){
                                sb.append("<ul><li class='date'>");
                                sb.append("星期");
                                if("0".equals(workDays.get(i*2).getWorktime())){
                                    sb.append("天");
                                }else {
                                    sb.append(workDays.get(i*2).getWorktime());
                                }
                                sb.append("</li>");
                                for(int j=0;j<2;j++){
                                    sb.append("<li class='");
                                    sb.append(workDays.get(i*2+j).getState());
                                    sb.append("'><a style='display:block; height=100%' data-toggle=\"modal\" data-target=\"#myModal\" data-wid='");
                                    sb.append(workDays.get(i*2+j).getWid());
                                    sb.append("'><br>");
                                    sb.append(workDays.get(i*2+j).getState());
                                    sb.append("<br>号源数");
                                    sb.append(workDays.get(i*2+j).getNsnum());
                                    sb.append("</a></li>");
                                }
                                sb.append("</ul>");
                            }
                            out.write(sb.toString());
                        %>
                    </div>
                </div>
                <style>
                    .schedule{
                        text-align: center;
                        width: 80%;
                        border: 1px #0065AF solid;
                    }
                    .schedule:after{
                        content:"";
                        clear: both;
                        display: block;
                    }
                    .schedule .week {
                        float: left;
                        height: 250px;
                        width: 100%;
                    }
                    .schedule .week .title1{
                        font-size: 18px;
                    }
                    .schedule .week .title2{
                        width: 70%;
                    }
                    .schedule .week:after{
                        content: '';
                        clear: both;
                        display: block;
                    }
                    .ysjj{
                        width: 100%;
                        float: left;
                    }
                    .ysjj img{
                        width: 30%;
                        float: left;
                        margin-right: 10px; /* 留出头像与信息间的空隙 */
                        margin-left: 10px; /* 头像与左侧边框的空隙 */
                    }
                    .ysjj .title{
                        float: left;
                        width: 50%;
                        overflow: hidden;
                    }
                    .ysjj .title span{
                        float: left;
                        margin: 5px;
                    }
                    .ysjj .title .name{
                        font-size: 15px;
                    }
                    .ysjj .title .career{
                        font-size: 15px;
                    }
                    .ysjj .title .gender{
                        font-size: 15px;
                    }
                    .ysjj .title div:after{
                        content: '';
                        clear: both;
                        display: block;
                    }
                    .ysjj .title p{
                        height: 140px;
                        width: 110%;
                        overflow-y: scroll;
                    }
                    .ysjj .work{
                        float: right;
                        width: 10%;
                        font-size: 10px;
                    }
                    .ysjj .work div{
                        width: 100%;
                        height: 100px;
                        line-height: 100px;
                        text-align: center;
                    }
                    .schedule .week .title2{
                        float: left;
                        height: 100%;
                    }
                    .schedule .week .title2 ul{
                        float: left;
                        height: 100%;
                        width: 14.27%;
                    }
                    .schedule .week .title2 ul li{
                        list-style: none;
                        background-color: #eeeeee;
                        height: 40%;
                        border-left: #0065AF 1px solid;
                    }
                    .schedule .week .title2 ul li:nth-of-type(even){
                        background: rgb(250, 250, 250);
                    }
                    .schedule .week .title2 .date{
                        height: 20%;
                        line-height: 3;
                    }
                    .schedule .week .title2 .预约{
                        background: rgb(219, 255, 211)!important;
                        color: rgb(61, 175, 167);
                        cursor: pointer;
                    }
                    .schedule .week .title2 .预约:hover{
                        color: rgb(255, 255, 255);
                        background: rgb(61, 175, 167)!important;
                    }
                    .schedule .week .title2 .停诊{
                        background: rgb(208, 222, 251)!important;
                        color: rgb(20, 82, 205)!important;
                    }

                    .schedule .week ul:after{
                        content: '';
                        clear: both;
                        display: block;
                    }

                    .work1{
                        width: 70%;
                        float: left;
                    }
                    .work1 ul li{
                        float: left;
                        list-style: none;
                        width: 12.303%;
                        height: 100px;
                        line-height: 100px;
                        text-align: center;
                        border: 1px dashed rgb(219, 219, 219);
                    }
                    .work1 ul li:nth-of-type(odd){
                        background: rgb(250, 250, 250);
                    }
                    .work1 ul .预约{
                        background: rgb(219, 255, 211)!important;
                        color: rgb(61, 175, 167);
                        cursor: pointer;
                    }
                    .work1 ul .预约:hover{
                        color: rgb(255, 255, 255);
                        background: rgb(61, 175, 167)!important;
                    }
                    .work1 ul .停诊{
                        background: rgb(208, 222, 251)!important;
                        color: rgb(20, 82, 205)!important;
                    }
                </style>
                <%--修改排班--%>
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" style="margin-top: 200px;" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">申请</h4>
                            </div>
                            <form class="form-horizontal" action='applyWork' method='post'>
                                <input id="action" hidden value="alter" name="action">
                                <input id="wid" hidden  name="wid">
                                <input  hidden  name="did" value="${doctor.did}">
                                <div class="modal-body">
                                    <div class="form-group">
                                        <label for="state" class="col-sm-2 control-label">状态</label>
                                        <div class="col-sm-10" >
                                            <select class="form-control" id="state" name="request">
                                                <option>申请出诊</option>
                                                <option>申请停诊</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="reason" class="col-sm-2 control-label">原因</label>
                                        <div class="col-sm-10" >
                                            <textarea id="reason" name="reason" class="form-control" rows="3" placeholder="请输入原因,例如请病假"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                    <button  type="submit" class="btn btn-primary order">提交申请</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <script>
                    $(function () {
                        $('#myModal').on('show.bs.modal', function (event) {
                            var  a=$(event.relatedTarget);
                            var wid =a .data('wid');
                            console.log(wid);
                            $("#wid").val(wid);
                        });
                    })
                </script>
            </div>

            <%--显示预约的号源信息--%>
            <div class="haoyuan">
                <ul>
                </ul>
                <style>
                    .haoyuan{
                        margin: 20px auto;
                        background-color: #eeeeee;
                    }
                    .haoyuan:after{
                        display: block;
                        content: '';
                        clear: both;
                    }
                    .haoyuan ul{
                        list-style: none;
                    }
                    .haoyuan ul li{
                        float: left;
                        margin:10px 20px;
                    }
                    .haoyuan ul .已被预约{
                        color: #999;
                    }
                    .haoyuan ul .可预约{
                        color: #0065AF;
                        cursor: pointer;
                    }
                    .haoyuan ul .可预约:hover{
                        background-color: #00E8D7;
                    }
                </style>
            </div>
        </div>
    </div>
</div>

</body>
</html>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ page import="bean.WorkDay" %>--%>
<%--<%@ page import="java.util.List" %>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>医生排班信息 - 在线预约挂号系统</title>--%>
<%--    <jsp:include page="include/headtag.jsp"/>--%>
<%--    <style>--%>
<%--        body {--%>
<%--            display: flex;--%>
<%--            min-height: 100vh;--%>
<%--            flex-direction: column;--%>
<%--            margin: 0;--%>
<%--            font-family: Arial, sans-serif;--%>
<%--        }--%>
<%--        .wrapper {--%>
<%--            display: flex;--%>
<%--            flex: 1;--%>
<%--        }--%>
<%--        .sidebar {--%>
<%--            width: 200px;--%>
<%--            background: #007bff;--%>
<%--            color: white;--%>
<%--            padding: 20px;--%>
<%--        }--%>
<%--        .sidebar a {--%>
<%--            color: white;--%>
<%--            text-decoration: none;--%>
<%--            display: block;--%>
<%--            padding: 10px 0;--%>
<%--        }--%>
<%--        .sidebar a:hover {--%>
<%--            background: #0056b3;--%>
<%--        }--%>
<%--        .content {--%>
<%--            flex: 1;--%>
<%--            padding: 20px;--%>
<%--        }--%>
<%--        .doctor-info, .schedule {--%>
<%--            margin-bottom: 20px;--%>
<%--            border-radius: 10px;--%>
<%--            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);--%>
<%--            background: white;--%>
<%--        }--%>
<%--        .doctor-info .content {--%>
<%--            display: flex;--%>
<%--            padding: 20px;--%>
<%--        }--%>
<%--        .doctor-info img {--%>
<%--            width: 100px;--%>
<%--            border-radius: 50%;--%>
<%--            margin-right: 20px;--%>
<%--        }--%>
<%--        .schedule h3 {--%>
<%--            text-align: center;--%>
<%--            padding: 10px 0;--%>
<%--            background: #f8f9fa;--%>
<%--            border-bottom: 1px solid #e9ecef;--%>
<%--            border-top-left-radius: 10px;--%>
<%--            border-top-right-radius: 10px;--%>
<%--        }--%>
<%--        .schedule table {--%>
<%--            width: 100%;--%>
<%--            border-collapse: collapse;--%>
<%--        }--%>
<%--        .schedule th, .schedule td {--%>
<%--            padding: 15px;--%>
<%--            text-align: center;--%>
<%--            border: 1px solid #e9ecef;--%>
<%--        }--%>
<%--        .schedule th {--%>
<%--            background: #f8f9fa;--%>
<%--        }--%>
<%--        .schedule td.available {--%>
<%--            background: #dff0d8;--%>
<%--            color: #3c763d;--%>
<%--        }--%>
<%--        .schedule td.unavailable {--%>
<%--            background: #f2dede;--%>
<%--            color: #a94442;--%>
<%--        }--%>
<%--        .modal-body {--%>
<%--            padding: 20px;--%>
<%--        }--%>
<%--        .modal-footer {--%>
<%--            display: flex;--%>
<%--            justify-content: flex-end;--%>
<%--            padding: 15px;--%>
<%--            border-top: 1px solid #e9ecef;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<jsp:include page="include/head.jsp"/>--%>

<%--<div class="wrapper">--%>
<%--  --%>
<%--    <!-- 内容区 -->--%>
<%--    <div class="content">--%>
<%--        <!-- 医生信息 -->--%>
<%--        <div class="doctor-info">--%>
<%--            <div class="content">--%>
<%--                <img src="${doctor.picpath}" alt="医生照片">--%>
<%--                <div>--%>
<%--                    <h2>${doctor.dname} <small>${doctor.career}</small></h2>--%>
<%--                    <p><strong>性别:</strong> ${doctor.gender}</p>--%>
<%--                    <p><strong>介绍:</strong> ${doctor.description}</p>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>

<%--        <!-- 排班信息 -->--%>
<%--        <div class="schedule">--%>
<%--            <h3>排班信息</h3>--%>
<%--            <table>--%>
<%--                <thead>--%>
<%--                <tr>--%>
<%--                    <th>时间</th>--%>
<%--                    <th>星期天</th>--%>
<%--                    <th>星期一</th>--%>
<%--                    <th>星期二</th>--%>
<%--                    <th>星期三</th>--%>
<%--                    <th>星期四</th>--%>
<%--                    <th>星期五</th>--%>
<%--                    <th>星期六</th>--%>
<%--                </tr>--%>
<%--                </thead>--%>
<%--                <tbody>--%>
<%--                <tr>--%>
<%--                    <td>上午</td>--%>
<%--                    <c:forEach var="day" items="${workDays}" varStatus="status">--%>
<%--                        <c:choose>--%>
<%--                            <c:when test="${status.index % 2 == 0}">--%>
<%--                                <td class="${day.state == '预约' ? 'available' : 'unavailable'}">--%>
<%--                                        ${day.state == '预约' ? '可预约' : '停诊'}<br>--%>
<%--                                    号源数: ${day.nsnum}--%>
<%--                                </td>--%>
<%--                            </c:when>--%>
<%--                        </c:choose>--%>
<%--                    </c:forEach>--%>
<%--                </tr>--%>
<%--                <tr>--%>
<%--                    <td>下午</td>--%>
<%--                    <c:forEach var="day" items="${workDays}" varStatus="status">--%>
<%--                        <c:choose>--%>
<%--                            <c:when test="${status.index % 2 != 0}">--%>
<%--                                <td class="${day.state == '预约' ? 'available' : 'unavailable'}">--%>
<%--                                        ${day.state == '预约' ? '可预约' : '停诊'}<br>--%>
<%--                                    号源数: ${day.nsnum}--%>
<%--                                </td>--%>
<%--                            </c:when>--%>
<%--                        </c:choose>--%>
<%--                    </c:forEach>--%>
<%--                </tr>--%>
<%--                </tbody>--%>
<%--            </table>--%>
<%--        </div>--%>

<%--        <!-- 申请修改排班 -->--%>
<%--        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">--%>
<%--            <div class="modal-dialog" role="document">--%>
<%--                <div class="modal-content">--%>
<%--                    <div class="modal-header">--%>
<%--                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">--%>
<%--                            <span aria-hidden="true">&times;</span>--%>
<%--                        </button>--%>
<%--                        <h4 class="modal-title" id="myModalLabel">申请</h4>--%>
<%--                    </div>--%>
<%--                    <form class="form-horizontal" action='applyWork' method='post'>--%>
<%--                        <input id="action" hidden value="alter" name="action">--%>
<%--                        <input id="wid" hidden  name="wid">--%>
<%--                        <input hidden name="did" value="${doctor.did}">--%>
<%--                        <div class="modal-body">--%>
<%--                            <div class="form-group">--%>
<%--                                <label for="state" class="col-sm-2 control-label">状态</label>--%>
<%--                                <div class="col-sm-10">--%>
<%--                                    <select class="form-control" id="state" name="request">--%>
<%--                                        <option>申请出诊</option>--%>
<%--                                        <option>申请停诊</option>--%>
<%--                                    </select>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="form-group">--%>
<%--                                <label for="reason" class="col-sm-2 control-label">原因</label>--%>
<%--                                <div class="col-sm-10">--%>
<%--                                    <textarea id="reason" name="reason" class="form-control" rows="3" placeholder="请输入原因，例如请病假"></textarea>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="modal-footer">--%>
<%--                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>--%>
<%--                            <button type="submit" class="btn btn-primary">提交申请</button>--%>
<%--                        </div>--%>
<%--                    </form>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<jsp:include page="include/footer.jsp"/>--%>
<%--<script>--%>
<%--    $(function () {--%>
<%--        $('#myModal').on('show.bs.modal', function (event) {--%>
<%--            var a = $(event.relatedTarget);--%>
<%--            var wid = a.data('wid');--%>
<%--            $("#wid").val(wid);--%>
<%--        });--%>
<%--    });--%>
<%--</script>--%>
<%--</body>--%>
<%--</html>--%>

