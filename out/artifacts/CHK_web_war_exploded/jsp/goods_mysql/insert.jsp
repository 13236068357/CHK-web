<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@page import="java.sql.*" %>
<%@ page import="java.util.logging.Logger" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>添加</title>
</head>
<body>
<%
    //获取参数
    String image = request.getParameter("allImgUrl");
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

    try {
        Class.forName(driverClass);
        Connection con = null;
        con = DriverManager.getConnection(jdbcUrl, userName, pwd);
        String sql = "insert into goods(name,image,price,sort,info) values(?,?,?,?,?)";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, name);
        ps.setString(2, image);
        ps.setInt(3, price);
        ps.setString(4, sort);
        ps.setString(5, info);
        ps.executeUpdate();
        ps.close();
        con.close();
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    } finally {
        response.sendRedirect("../goods.jsp");
    }
%>
</body>
</html>