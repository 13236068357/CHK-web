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
	<%
		//连接数据库的五大参数
		String driverClass = "com.mysql.cj.jdbc.Driver";
		String userName = "root";
		String pwd = "123456";
		String jdbcUrl = "jdbc:mysql://localhost:3306/test2020?serverTimezone=Asia/Shanghai&useSSL=true";
		Class.forName(driverClass);//读取JDBC
		Connection con = DriverManager.getConnection(jdbcUrl, userName, pwd);//链接数据库
		String sql;
		PreparedStatement ps;
		ResultSet rs;//ResultSet是一个指向数据库的变量，本质上是不保存任何数据的，执行查询
	%>
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
			<%
				sql = "select * from orderForm";
				ps = con.prepareStatement(sql);
				rs = ps.executeQuery();
				while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getInt("id")%></td>
				<%
					ResultSet rsGoods;
						int id = rs.getInt("good_id");
						sql = "select * from goods where id=?";
						ps = con.prepareStatement(sql);
						ps.setObject(1, id);
						rsGoods = ps.executeQuery();
						while (rsGoods.next()) {
				%>
				<td><%=rsGoods.getString("name")%></td>
				<td><%=rsGoods.getString("sort")%></td>
				<%
					}
				%>
				<%
					ResultSet rsUser;
						int userid = rs.getInt("user_id");
						sql = "select * from admin where id=?";
						ps = con.prepareStatement(sql);
						ps.setObject(1, userid);
						rsUser = ps.executeQuery();
						while (rsUser.next()) {
				%>
				<td><%=rsUser.getString("address")%></td>
				<%
					}
				%>
				<td><button style="background-color: green;"
						onclick="openwindow(<%=rs.getInt("id")%>)">详情</button>
					<button style="background-color: red;"
						onclick="javascript:window.location.href='goods_mysql/delete.jsp?id=<%=rs.getString("id")%>'">分发</button></td>
			</tr>
			<%
				}
				ps.close();
				con.close();
			%>
		</table>
	</div>
</body>
</html>