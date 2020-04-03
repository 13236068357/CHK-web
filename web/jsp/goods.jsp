<<<<<<< HEAD
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
    <button class="delete" onclick="window.location.href='${pageContext.request.contextPath}/jsp/.jsp'">删除选中</button>
    <button class="add" onclick="window.location.href='jsp/good_add.jsp'">新增商品</button>
</div>
<hr>
<div class="excel" style="height: 75%; overflow: scroll;">
    <form action="${pageContext.request.contextPath}/goodDelSelServlet" method="post">
        <table>
            <tr>
                <th style="width: 4%;"><input id="checkAll" name="checkAll" type="checkbox"/></th>
                <th style="width: 5%;">编号</th>
                <th style="width: 15%;">名称</th>
                <th style="width: 8%;">图片</th>
                <th style="width: 7%;">价格</th>
                <th style="width: 10%;">类别</th>
                <th style="white-space: nowrap;text-overflow: ellipsis;overflow: hidden;">信息</th>
                <th style="width: 10%;">操作</th>
            </tr>
            <c:forEach items="${goods}" var="good" varStatus="s">
                <tr>
                    <td><input id="${good.id}" name="check" type="checkbox" value="${good.id}"/></td>
                    <td>${s.count}</td>
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
    </form>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<jsp:include page="menu.jsp"/>
<html>
<head>
    <meta charset="UTF-8">
    <link href="css/public.css" type="text/css" rel="stylesheet"/>
    <script src="javaScript/animation.js" charset="utf-8"></script>
    <title>商品管理</title>
</head>
<body>

<div class="head">
    <h4 align="center">商品管理</h4>
    <button class="add" onclick="window.location.href='${pageContext.request.contextPath}/jsp/add_good.jsp'">新增商品
    </button>
</div>
<hr>
<div class="excel" style="height: 95%; overflow: scroll;">
    <table style="table-layout: fixed;">
        <tr>
            <th>编号</th>
            <th>名称</th>
            <th>图片</th>
            <th>价格</th>
            <th>类别</th>
            <th>信息</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${goods}" var="good" varStatus="s">
            <tr>
                <td>${good.id}</td>
                <td>${good.name}</td>
                <td style="white-space: nowrap;text-overflow: ellipsis;overflow: hidden;">${good.images}</td>
                <td>${good.price}</td>
                <td>${good.sort}</td>
                <td>${good.info}</td>
                <td>
                    <button style="background-color: green;"
<<<<<<< HEAD
                            onclick="window.location.href='${pageContext.request.contextPath}/goodUpdateListServlet?id=${good.id}'">
                        编辑
                    </button>
                    <button style="background-color: red;"
                            onclick="window.location.href='${pageContext.request.contextPath}/goodDeleteServlet?id=${good.id}'">
=======
                            onclick="window.location.href='${pageContext.request.contextPath}/updateGoodListServlet?id=${good.id}'">
                        编辑
                    </button>
                    <button style="background-color: red;"
                            onclick="window.location.href='${pageContext.request.contextPath}/deleteGoodServlet?id=${good.id}'">
>>>>>>> 2badce7968e9096ccd3afadadbcc702d1af92b3a
                        删除
                    </button>
                </td>
            </tr>
        </c:forEach>
    </table>
>>>>>>> 675324a76923d1f881d53eab0c813fa21166c87a
</div>
</body>
</html>