<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="menu.jsp"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="${pageContext.request.contextPath}/css/public.css" type="text/css" rel="stylesheet"/>
    <title>订单管理</title>
</head>
<body>
<div class="head">
    <h4 align="center">订单管理</h4>
    <select class="belong" name="belong" onclick="select()">
        <option>待分发</option>
        <option>已分发</option>
        <option>已结束</option>
    </select>
</div>
<hr>
<div class="excel" style="height: 95%; overflow: scroll;">
    <table>
        <tr>
            <th>编号</th>
            <th>商品名称</th>
            <th>联系电话</th>
            <th>地址</th>
            <th>时间</th>
            <th>状态</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${orders}" var="order" varStatus="s">
            <tr>
                <td>${order.id}</td>
                <td>${order.goodName}</td>
                <td>${order.phone}</td>
                <td>${order.address}</td>
                <td>${order.starTime}--${order.endTime}</td>
                <td>${order.sort}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/g?id=${good.id}">分发</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>