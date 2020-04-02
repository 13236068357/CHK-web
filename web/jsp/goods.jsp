<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="menu.jsp"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="${pageContext.request.contextPath}/css/public.css" type="text/css" rel="stylesheet"/>
    <title>商品管理</title>
</head>
<body>
<div class="head">
    <h4 align="center">商品管理</h4>
    <button class="add" onclick="window.location.href='${pageContext.request.contextPath}/jsp/add_good.jsp'">新增商品
    </button>
    <button class="delete" onclick="window.location.href='${pageContext.request.contextPath}/jsp/.jsp'">删除选中</button>
</div>
<hr>
<div class="excel" style="height: 95%; overflow: scroll;">
    <table>
        <tr>
            <th style="width: 8%;">编号</th>
            <th style="width: 15%;">名称</th>
            <th style="width: 8%;">图片</th>
            <th style="width: 10%;">价格</th>
            <th style="width: 15%;">类别</th>
            <th style="white-space: nowrap;text-overflow: ellipsis;overflow: hidden;">信息</th>
            <th style="width: 10%;">操作</th>
        </tr>
        <c:forEach items="${goods}" var="good" varStatus="s">
            <tr>
                <td><input id="${good.id}" name="check" type="checkbox"/>${good.id}</td>
                <td>${good.name}</td>
                <td><a href="#">查看</a></td>
                <td style="color: red">${good.price}¥</td>
                <td>${good.sort}-${good.sortChild}</td>
                <td>${good.info}</td>
                <td>
                    <button style="background-color: cornflowerblue;"
                            onclick="window.location.href='${pageContext.request.contextPath}/goodUpdateListServlet?id=${good.id}'">
                        编辑
                    </button>
                    <button style="background-color: red;"
                            onclick="window.location.href='${pageContext.request.contextPath}/goodDeleteServlet?id=${good.id}'">
                        删除
                    </button>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>