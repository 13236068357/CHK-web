<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="menu.jsp" />
<meta charset="UTF-8">
<link href="../css/public.css" type="text/css" rel="stylesheet" />
<title>商家管理</title>
<script src="../javaScript/animation.js" charset="utf-8"></script>
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
		<h4 align="center">商家管理</h4>
		<select class="belong" name="belong" onclick="select()">
			<%
				sql = "select * from community";
				ps = con.prepareStatement(sql);
				rs = ps.executeQuery();
				while (rs.next()) {
			%>
			<option value="<%=rs.getString("name")%>"><%=rs.getString("name")%></option>
			<%
				}
			%>
		</select>
		<button class="add" onclick="openwindow(null)">新增商家</button>
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
			<%
				sql = "select * from stores";
				ps = con.prepareStatement(sql);
				rs = ps.executeQuery();
				while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getInt("id")%></td>
				<td><%=rs.getString("name")%></td>
				<td><%=rs.getInt("phone")%></td>
				<td><%=rs.getString("address")%></td>
				<td><%=rs.getString("info")%></td>
				<td>
					<button style="background-color: green;"
						onclick="openwindow(<%=rs.getInt("id")%>)">编辑</button>
					<button style="background-color: red;"
						onclick="javascript:window.location.href='goods_mysql/delete.jsp?id=<%=rs.getString("id")%>'">删除</button>
				</td>
			</tr>
			<%
				}
				ps.close();
				con.close();
			%>
		</table>
	</div>

	<!-- 新增弹窗隐藏区域 -->
	<div id="myModal" class="modal">
		<!-- 弹窗内容 -->
		<div class="modal-content">
			<div class="modal-header">
				<h4>新增商家</h4>
			</div>
			<div class="modal-body">
				<form action="stores_mysql/insert.jsp">
					<div class="upimage">
						<img src="../images/1.jpg" />
					</div>
					<div class="uplist">
						<div>
							名称:<input type="text" name="name" />
						</div>
						<div>
							地址:<input type="text" name="address" />
						</div>
						<div>
							信息:<input type="text" name="info" />
						</div>
						<div>
							电话:<input type="text" name="phone" />
						</div>
						<div>
							附属:<select name="belong">
								<%
									sql = "select * from community";
									//读取JDBC
									Class.forName(driverClass);
									//链接数据库
									con = DriverManager.getConnection(jdbcUrl, userName, pwd);
									ps = con.prepareStatement(sql);
									//ResultSet是一个指向数据库的变量，本质上是不保存任何数据的，执行查询
									rs = ps.executeQuery();
									while (rs.next()) {
								%>
								<option value="<%=rs.getString("name")%>"><%=rs.getString("name")%></option>
								<%
									}
									ps.close();
									con.close();
								%>
							</select>
						</div>
						<div colspan="2">
							<input type="reset" value="重置" id="reset" /> <input class="ok"
								type="submit" value="添加" />
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- 编辑弹窗隐藏区域 -->
	<div id="editModal" class="modal">
		<!-- 弹窗内容 -->
		<div class="modal-content">
			<div class="modal-header">
				<h4>编辑商家</h4>
			</div>
			<div class="modal-body">
				<form action="stores_mysql/upData.jsp">
					<div class="upimage">
						<img src="../images/1.jpg" />
					</div>
					<div class="uplist">
						<div>
							名称:<input type="text" name="name" />
						</div>
						<div>
							地址:<input type="text" name="address" />
						</div>
						<div>
							信息:<input type="text" name="info" />
						</div>
						<div>
							电话:<input type="text" name="phone" />
						</div>
						<div>
							附属:<select name="belong">
								<%
									sql = "select * from community";
									//读取JDBC
									Class.forName(driverClass);
									//链接数据库
									con = DriverManager.getConnection(jdbcUrl, userName, pwd);
									ps = con.prepareStatement(sql);
									//ResultSet是一个指向数据库的变量，本质上是不保存任何数据的，执行查询
									rs = ps.executeQuery();
									while (rs.next()) {
								%>
								<option value="<%=rs.getString("name")%>"><%=rs.getString("name")%></option>
								<%
									}
									ps.close();
									con.close();
								%>
							</select>
						</div>
						<div colspan="2">
							<input type="reset" value="重置" id="reset" /> <input class="ok"
								type="submit" value="修改" />
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>