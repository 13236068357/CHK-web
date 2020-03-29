<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除的业务逻辑执行页面</title>
</head>
<body>
	<%
		//获取参数
		String id = request.getParameter("id");

		//连接数据库的五大参数
		String driverClass = "com.mysql.cj.jdbc.Driver";
		String serverIp = "localhost";
		String databaseName = "chk";
		String userName = "root";
		String pwd = "123456";
		String jdbcUrl = "jdbc:mysql://" + serverIp + ":3306/" + databaseName
				+ "?serverTimezone=Asia/Shanghai&useSSL=true";

		Class.forName(driverClass);
		Connection con = DriverManager.getConnection(jdbcUrl, userName, pwd);
		String sql = "delete from goods where id = ?";
		PreparedStatement ps = con.prepareStatement(sql);

		//对应sql语句的问号跟上面从页面获取的参数相对应
		ps.setObject(1, id);
		//执行删除
		ps.executeUpdate();
		//关闭连接
		ps.close();
		con.close();

		//完成删除后跳转回index页面
		response.sendRedirect("../goods.jsp");
	%>
</body>
</html>