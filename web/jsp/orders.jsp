<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<jsp:include page="menu.jsp" />
<html>
<head>
<meta charset="UTF-8">
<link href="../css/public.css" type="text/css" rel="stylesheet" />
<title>订单管理</title>
<script src="../javaScript/animation.js" charset="utf-8"></script>
<style>
body {
	background-color: #fff;
}

form {
	position: fixed; /*固定在顶部*/
	left: 200px; /*离左的距离为0*/
	top: 100px; /*离顶部距离为0*/
	bottom: 0;
	right: 0;
	color: #111;
}

form table tr:nth-child(1) {
	background-color: #e3e8ee;
}

form table {
	width: 99%;
	margin: 10px;
}

form table, th, td {
	border: 1px solid #111;
}

form td {
	text-align: center;
}
</style>
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
				<th>类别</th>
				<th>地址</th>
				<th>操作</th>
			</tr>
		</table>
	</div>
</body>
</html>