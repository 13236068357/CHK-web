<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<%
		//获取参数
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		//连接数据库的五大参数
		String driverClass = "com.mysql.cj.jdbc.Driver";
		String serverIp = "localhost";
		String databaseName = "test2020";
		String userName = "root";
		String pwd = "123456";

		String jdbcUrl = "jdbc:mysql://" + serverIp + ":3306/" + databaseName
				+ "?serverTimezone=Asia/Shanghai&useSSL=true";
		Class.forName(driverClass);
		Connection con = DriverManager.getConnection(jdbcUrl, userName, pwd);
		String sql = "select * from adm where username = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setObject(1, username);
		ResultSet rs = ps.executeQuery();
		//结果集为空
		if (rs.next()) {
			if (rs.getString("password").equals(password)) {//不为空
				response.sendRedirect("index.jsp");
			} else {
	%>
	<script type="text/javascript" language="javascript">
		alert("用户名或密码错误！"); // 弹出错误信息
		window.location = '../login.jsp'; // 跳转到登录界面
	</script>
	<%
		}
		} else {
	%>
	<script type="text/javascript" language="javascript">
		alert("此用户不存在！"); // 弹出错误信息
		window.location = '../login.jsp'; // 跳转到登录界面
	</script>
	<%
		}
		ps.close();
		con.close();
	%>
</body>
</html>