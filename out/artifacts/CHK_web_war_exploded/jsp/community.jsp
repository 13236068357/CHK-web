<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="menu.jsp"/>
    <meta charset="UTF-8">
    <link href="../css/public.css" type="text/css" rel="stylesheet"/>
    <title>社区管理</title>
    <style type="text/css">
    </style>
</head>
<body>
<div class="head">
    <h4 align="center">社区管理</h4>
    <button class="add" onclick="">新增社区</button>
</div>
<hr>
<div class="excel">
    <table>
        <tr>
            <th>编号</th>
            <th>社区名称</th>
            <th>地址</th>
            <th>联系热线</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${communities}" var="good" varStatus="s">
            <tr>
                <td>${communities.id}</td>
                <td>${communities.name}</td>
                <td>${communities.address}</td>
                <td>${communities.phone}</td>
                <td>
                    <button style="background-color: green;"
                            onclick="window.location.href='${pageContext.request.contextPath}/updateListServlet?id=${good.id}'">
                        编辑
                    </button>
                    <button style="background-color: red;"
                            onclick="window.location.href='${pageContext.request.contextPath}/deleteGoodServlet?id=${good.id}'">
                        删除
                    </button>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>