<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="menu.jsp"/>
    <meta charset="UTF-8">
    <link href="${pageContext.request.contextPath}/css/public.css" type="text/css" rel="stylesheet"/>
    <title>商家管理</title>
    <style>
        .uplist select {
            font-size: 24px;
            width: 300px;
        }

        .list div:nth-child(4) {
            border-radius: 0 10px 10px 0;
        }
    </style>
</head>

<body>


<div class="head">
    <h4 align="center">商家管理</h4>
    <select class="belong" name="belong" onclick="">
    </select>
    <button class="add" onclick="">新增商家</button>
</div>
<hr>
<div class="excel" style="height: 95%; overflow: scroll;">
    <table>
        <tr>
            <th>编号</th>
            <th>名称</th>
            <th>联系电话</th>
            <th>地址</th>
            <th>信息</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${stores}" var="store" varStatus="s">
            <tr>
                <td>${store.id}</td>
                <td>${store.name}</td>
                <td>${store.phone}</td>
                <td>${store.address}</td>
                <td>${store.info}</td>
                <td>
                    <button style="background-color: green;"
                            onclick="window.location.href='${pageContext.request.contextPath}/goodUpdateListServlet?id=${store.id}'">
                        编辑
                    </button>
                    <button style="background-color: red;"
                            onclick="window.location.href='${pageContext.request.contextPath}/goodDeleteServlet?id=${store.id}'">
                        删除
                    </button>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>