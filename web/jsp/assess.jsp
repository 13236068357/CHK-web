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
.assess {
	width: 33%;
	height: 200px;
	margin: 25px 0 25px 25px;
	width: 33%;
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
				<th>编号</th>
				<th>商品名称</th>
				<th>用户昵称</th>
				<th>联系电话</th>
				<th>类型</th>
				<th>操作</th>
			</tr>
			<%
				sql = "select * from assess";
				ps = con.prepareStatement(sql);
				rs = ps.executeQuery();
				while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getInt("id")%></td>
				<%
					int id = rs.getInt("good_id");
						sql = "select * from goods where id=?";
						ps = con.prepareStatement(sql);
						ps.setObject(1, id);
						ResultSet rsG = ps.executeQuery();
						while (rsG.next()) {
				%>
				<td><%=rsG.getString("name")%></td>
				<%
					}
				%>
				<%
					int userid = rs.getInt("user_id");
						sql = "select * from user where id=?";
						ps = con.prepareStatement(sql);
						ps.setObject(1, userid);
						ResultSet rsU = ps.executeQuery();
						while (rsU.next()) {
				%>
				<td><%=rsU.getInt("username")%></td>
				<td><%=rsU.getInt("phone")%></td>
				<%
					}
				%>
				<td><%=rs.getString("sort")%></td>
				<td>
					<button style="background-color: green;" onclick="openwindow(<%=rs.getInt("id")%>)">详情</button>
				</td>
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