<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改</title>
</head>
<body>
	<%
		//获取参数
		String id = request.getParameter("goodId");
		String image = request.getParameter("image");
		String name = request.getParameter("name");
		int price = Integer.valueOf(request.getParameter("price")).intValue();
		String sort = request.getParameter("sort");
		String info = request.getParameter("info");
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
		String sql = "update  goods set name=?,image=?,price=?,sort=?,info=? where id=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(2, image);
		ps.setString(1, name);
		ps.setInt(3, price);
		ps.setString(4, sort);
		ps.setString(5, info);
		ps.setObject(6, id);
		ps.execute();
		ps.close();
		con.close();
		response.sendRedirect("../goods.jsp");
	%>
</body>
</html>