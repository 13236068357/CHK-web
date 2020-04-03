<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="menu.jsp"/>
    <meta charset="UTF-8">
    <link href="${pageContext.request.contextPath}/css/public.css" type="text/css" rel="stylesheet"/>
    <title>商家管理</title>
</head>

<body>
<div class="head">
    <h4 align="center">商家管理</h4>
    <select class="belong" name="belong" onclick="">
    </select>
    <button class="add" onclick="window.location.href='jsp/store_add.jsp'">新增商家</button>
    <button class="delete" onclick="window.location.href='${pageContext.request.contextPath}/jsp/.jsp'">删除选中</button>
</div>
<hr>
<div class="excel" style="height: 95%; overflow: scroll;">
    <table>
        <tr>
            <th><input id="checkAll" name="checkAll" type="checkbox"/></th>
            <th>编号</th>
            <th>名称</th>
            <th>联系电话</th>
            <th>地址</th>
            <th>信息</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${stores}" var="store" varStatus="s">
            <tr>
                <td><input id="${store.id}" name="check" type="checkbox"/></td>
                <td>${s.count}</td>
                <td>${store.name}</td>
                <td>${store.phone}</td>
                <td>${store.address}</td>
                <td>${store.info}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/storeUpdateListServlet?id=${good.id}"> 编辑</a>
                    <a href="${pageContext.request.contextPath}/storeDeleteServlet?id=${good.id}"> 删除</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>