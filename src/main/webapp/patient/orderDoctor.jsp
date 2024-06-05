<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>找医生--在线预约挂号系统</title>
    <jsp:include page="include/headtag.jsp"/>
</head>
<body>
<jsp:include page="include/head.jsp"/>
<jsp:include page="include/menu.jsp"/>

<div style="margin-top: 100px; margin-left: 300px">
    <div id="page-inner">
        <div class="search">
            <h1>按医生挂号</h1>
            <form id="doctor" action="searchDoctor" method="post">
                <input value="${doctor}" name="doctor" autocomplete="off" class="" placeholder="查找医生">
                <input id="start" hidden value="1" name="start">
                <input id="order" hidden value="doctor" name="order">
                <button type="submit">查找医生</button>
            </form>
            <style>
                .search {
                    height: 150px;
                    border-bottom: 2px #2e2e2e solid;
                    display: flex;
                    flex-direction: column;
                    align-items: center;
                    justify-content: center;
                }
                .search input {
                    height: 40px;
                    width: 300px;
                    color: #2e2e2e;
                    padding: 0 20px;
                    border-radius: 4px;
                    margin-bottom: 10px;
                    border: 1px solid #ddd;
                }
                .search button {
                    height: 40px;
                    color: #fff;
                    background-color: #0065AF;
                    padding: 0 20px;
                    border-radius: 4px;
                    border: none;
                    cursor: pointer;
                }
                .search button:hover {
                    background-color: #0050a0;
                }
            </style>
        </div>

        <div class="doctors">
            <c:forEach items="${doctors}" var="item">
                <div class="doctor-card">
                    <img src="./../..${item.picpath}" alt="${item.dname}">
                    <div class="name"><a href="showWeek?did=${item.did}">${item.dname}</a></div>
                    <div class="specialty">${item.career}</div>
                    <div class="contact">${item.gender} | ${item.age}岁</div>
                    <div class="contact">介绍：${item.description}</div>
                </div>
            </c:forEach>

            <style>
                .doctors {
                    display: flex;
                    flex-wrap: wrap;
                    gap: 20px;
                    justify-content: center;
                    padding: 20px;
                }
                .doctor-card {
                    background-color: #fff;
                    border-radius: 8px;
                    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                    width: 300px;
                    padding: 20px;
                    box-sizing: border-box;
                    text-align: center;
                    margin: 10px;
                }
                .doctor-card img {
                    border-radius: 50%;
                    width: 80px;
                    height: 80px;
                    margin-bottom: 15px;
                }
                .doctor-card .name {
                    font-size: 18px;
                    font-weight: bold;
                    margin-bottom: 10px;
                }
                .doctor-card .specialty {
                    color: #666;
                    margin-bottom: 10px;
                }
                .doctor-card .contact {
                    color: #333;
                    font-size: 14px;
                }
            </style>
        </div>

        <c:if test="${pages.totalPage > 0}">
            <form id="pagination">
                <ul class="pagination">
                    <li <c:if test="${pages.currentPage < 1}">class="disabled"</c:if>><a
                            onclick="jump('${pages.prePage}')">&laquo;</a></li>
                    <c:forEach begin="${pages.pageNumStart}" end="${pages.pageNumEnd}"
                               varStatus="status">
                        <li>
                            <a <c:if test="${status.index == pages.currentPage}">class="disabled"</c:if>
                               onclick="jump('${status.index}')">
                                    ${status.index} </a>
                        </li>
                    </c:forEach>
                    <li
                            <c:if test="${pages.currentPage > pages.totalPage}">class="disabled"</c:if>>
                        <a onclick="jump('${pages.nextPage}')">&raquo;</a>
                    </li>
                    <li><input class="text-input" id="index" placeholder="Page #"></li>
                    <li><a onclick="jumpInput()">Go</a></li>
                    <li><a class="disabled">共${pages.totalPage}页${pages.totalRecord}条记录</a></li>
                </ul>
            </form>

            <style>
                #pagination {
                    width: 100%;
                    text-align: center;
                    padding: 20px 0;
                }
                .pagination {
                    display: inline-block;
                    padding-left: 0;
                    margin: 0;
                    border-radius: 4px;
                }
                .pagination li {
                    display: inline;
                }
                .pagination a {
                    border-radius: 6px;
                    color: #eb6864;
                    cursor: pointer;
                    padding: 14px 16px;
                    font-size: 19px;
                    line-height: 1.3333333;
                    border: 1px solid #dddddd;
                    margin-left: -1px;
                    text-decoration: none;
                }
                .pagination a:hover {
                    background-color: #eeeeee;
                }
                .pagination input {
                    border: 1px solid #dddddd;
                    width: 60px;
                    padding: 8px 12px;
                    font-size: 15px;
                    line-height: 1.5;
                    color: #777777;
                    margin-left: 5px;
                }
                .pagination .disabled {
                    cursor: not-allowed;
                    color: #aaa;
                }
            </style>

            <script>
                function jump(index) {
                    $("#start").val(index);
                    $("#doctor").submit();
                }
                function jumpInput() {
                    var index = $("#index").val();
                    var match = /^[1-9][0-9]*$/;
                    if (match.test(index)) {
                        jump(index);
                    } else {
                        alert("请输入有效的页码！");
                    }
                }
            </script>
        </c:if>
    </div>
</div>

</body>
</html>
