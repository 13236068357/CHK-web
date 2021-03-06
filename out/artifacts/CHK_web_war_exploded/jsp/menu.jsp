<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style>
        body {
            background-color: #EDEDED;
            margin: 0;
            padding: 0;
            border: 0;
        }

        .menu {
            /* 设置宽度高度背景颜色 */
            width: 200px;
            height: 100%;
            background: #4d5e70;
            position: fixed; /*固定在顶部*/
            color: #fff;
            padding-top: 100px;
        }

        .caiDan div {
            font-size: 15px;
            margin-top: 20px;
            color: #aab1b7;
            cursor: pointer;
            padding-left: 20px;
        }

        .caiDan div a {
            font-size: 15px;
            color: #aab1b7;
            cursor: pointer;
            text-decoration: none
        }

        img {
            vertical-align: middle;
            height: 25px;
        }

        .caiDan div:nth-child(1) {
            color: #828e9a;
            font-weight: bold;
        }
    </style>
</head>
<body>
<div class="menu">
    <div style=" padding-left: 20px;"><h3>${admin.username}</h3>
        <h4>欢迎您！</h4></div>
    <div class="caiDan">
        <div>
            <img src="${pageContext.request.contextPath}/images/index.png"/> <a
                href="${pageContext.request.contextPath}/indexServlet">首页</a>
        </div>
        <div>分销管理</div>
        <div>
            <img src="${pageContext.request.contextPath}/images/goods.png"/> <a
                href="${pageContext.request.contextPath}/goodListServlet">商品管理</a>
        </div>
        <div>
            <img src="${pageContext.request.contextPath}/images/order.png"/> <a
                href="${pageContext.request.contextPath}/orderListServlet">订单管理</a></div>
    </div>
    <div class="caiDan">
        <div>信息管理</div>
        <div>
            <img src="${pageContext.request.contextPath}/images/comm.png"/> <a
                href="${pageContext.request.contextPath}/communityListServlet">社区管理</a>
        </div>
        <div>
            <img src="${pageContext.request.contextPath}/images/store.png"/> <a
                href="${pageContext.request.contextPath}/storeListServlet">商家管理</a>
        </div>
        <div>
            <img src="${pageContext.request.contextPath}/images/user.png"/> <a
                href="${pageContext.request.contextPath}/userListServlet">用户管理</a>
        </div>
        <div>
            <img src="${pageContext.request.contextPath}/images/assess.png"/> <a
                href="${pageContext.request.contextPath}/assessListServlet">评价管理</a>
        </div>
    </div>
</div>
</body>
</html>