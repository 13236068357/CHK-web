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
        .assess {
            width: 33%;
            height: 200px;
            margin: 25px 0 25px 25px;
            width: 33%;
        }
    </style>
    <title>订单管理</title>
    <script src="../javaScript/animation.js" charset="utf-8"></script>
</head>

<body>
<div class="head">
    <h4 align="center">用户管理</h4>
    <select class="belong" name="belong" onclick="select()">
        <option>好评</option>
        <option>中评</option>
        <option>差评</option>
    </select>
</div>
<hr>
<div class="excel" style="height: 95%; overflow: scroll;">
    <table>
        <tr>
            <th style="width: 10%">商品名称</th>
            <th style="width: 10%">用户昵称</th>
            <th style="width: 10%">类型</th>
            <th>内容</th>
            <th style="width: 10%">操作</th>
        </tr>
        <c:forEach items="${assesses}" var="assess" varStatus="s">
            <tr>
                <td>${assess.goodName}</td>
                <td>${assess.userName}</td>
                <td>${assess.sort}</td>
                <td>${assess.cont}</td>
                <td>
                    <button style="background-color: cornflowerblue;"
                            onclick="window.location.href='${pageContext.request.contextPath}/?id=${assess.id}'">
                        回复
                    </button>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>