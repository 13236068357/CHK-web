<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="menu.jsp"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="${pageContext.request.contextPath}/css/public.css" type="text/css" rel="stylesheet"/>
    <script>
        function deleteGood(id) {
            if (confirm("您确定要删除吗？")) {
                location.href = "${pageContext.request.contextPath}/goodDeleteServlet?id=${good.id}"
            }
        }

        window.onload = function () {
            document.getElementById("delSeleted").onclick = function () {
                document.getElementById("goodForm").submit()
            }
        }
    </script>
    <title>商品管理</title>
</head>
<body>
<div class="head">
    <h4 align="center">商品管理</h4>
    <a class="delete" href="${pageContext.request.contextPath}/jsp/.jsp">删除选中</a>
    <a class="add" href="javascript:void(0)" id="delSeleted">新增商品</a>
</div>
<hr>
<div class="excel" style="height: 75%; overflow: scroll;">
    <form id="goodForm" action="${pageContext.request.contextPath}/goodDelSelServlet" method="post">
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
                    <td><input id="${good.id}" name="gid" type="checkbox" value="${good.id}"/></td>
                    <td>${s.count}</td>
                    <td>${good.name}</td>
                    <td><a href="#">查看</a></td>
                    <td style="color: red">${good.price}¥</td>
                    <td>${good.sort}-${good.sortChild}</td>
                    <td>${good.info}</td>
                    <td>
                        <a type="button" href="${pageContext.request.contextPath}/goodUpdateListServlet?id=${good.id}">
                            编辑</a>
                        <a onclick="deleteGood(${good.id})"> 删除</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </form>
</div>
</body>
</html>