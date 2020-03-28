<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加</title>
</head>
<body>
	<%
		//获取参数
		String image = request.getParameter("image");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		int phone = Integer.valueOf(request.getParameter("phone")).intValue();

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

		String sql = "insert into community(name,image,address,phone) values(?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, name);
		ps.setString(2, image);
		ps.setString(3, address);
		ps.setInt(4, phone);
		ps.executeUpdate();
		ps.close();
		con.close();
		response.sendRedirect("../community.jsp");
	%>
</body>
</html>