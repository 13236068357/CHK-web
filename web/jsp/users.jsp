<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<jsp:include page="menu.jsp"/>
<html>
<head>
    <meta charset="UTF-8">
    <link href="${pageContext.request.contextPath}/css/public.css" type="text/css" rel="stylesheet"/>
    <style>
        .list div:nth-child(4) {
            border-radius: 0 10px 10px 0;
        }
    </style>
    <title>订单管理</title>
</head>

<body>
<div class="head">
    <h4 align="center">用户管理</h4>
    <select class="belong" name="belong" onclick="select()">
    </select>
</div>
<hr>
<div class="excel" style="height: 95%; overflow: scroll;">
    <table>
        <tr>
            <th>编号</th>
            <th>用户名</th>
            <th>联系电话</th>
            <th>社区</th>
            <th>地址</th>
            <th>地址</th>
        </tr>
        <c:forEach items="${users}" var="user" varStatus="s">
            <tr>
                <td>${user.id}</td>
                <td>${user.username}</td>
                <td>${user.phone}</td>
                <td>${user.belong}</td>
                <td>${user.address}</td>
                <td>${user.address}</td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>