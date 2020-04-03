<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="menu.jsp"/>
    <meta charset="UTF-8">
    <link href="${pageContext.request.contextPath}/css/public.css" type="text/css" rel="stylesheet"/>
    <title>社区管理</title>
<<<<<<< HEAD
=======
    <style type="text/css">
    </style>
>>>>>>> 675324a76923d1f881d53eab0c813fa21166c87a
</head>
<body>
<div class="head">
    <h4 align="center">社区管理</h4>
<<<<<<< HEAD
    <button class="add" onclick="window.location.href='jsp/community_add.jsp'">新增社区</button>
    <button class="delete" onclick="window.location.href='${pageContext.request.contextPath}/jsp/.jsp'">删除选中</button>
</div>
<hr>
<div class="excel" style="height: 75%; overflow: scroll;">
=======
    <button class="add" onclick="">新增社区</button>
</div>
<hr>
<div class="excel">
>>>>>>> 675324a76923d1f881d53eab0c813fa21166c87a
    <table>
        <tr>
            <th>编号</th>
            <th>社区名称</th>
            <th>地址</th>
            <th>联系热线</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${communities}" var="community" varStatus="s">
            <tr>
<<<<<<< HEAD
                <td><input id="${community.id}" name="check" type="checkbox"/>${community.id}</td>
=======
                <td>${community.id}</td>
>>>>>>> 675324a76923d1f881d53eab0c813fa21166c87a
                <td>${community.name}</td>
                <td>${community.address}</td>
                <td>${community.phone}</td>
                <td>
<<<<<<< HEAD
                    <button style="background-color: cornflowerblue;"
                            onclick="window.location.href='${pageContext.request.contextPath}/communityUpdateListServlet?id=${community.id}'">
                        编辑
                    </button>
                    <button style="background-color: red;"
                            onclick="window.location.href='${pageContext.request.contextPath}/communityDeletServlet?id=${community.id}'">
=======
                    <button style="background-color: green;"
                            onclick="window.location.href='${pageContext.request.contextPath}/?id=${community.id}'">
                        编辑
                    </button>
                    <button style="background-color: red;"
                            onclick="window.location.href='${pageContext.request.contextPath}/?id=${community.id}'">
>>>>>>> 675324a76923d1f881d53eab0c813fa21166c87a
                        删除
                    </button>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>