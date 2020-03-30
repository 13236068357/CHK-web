<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>登录</title>
    <style>
        form {
            display: flex;
            flex-direction: column;
            width: 100%;
            height: 100%;
            align-content: center;
        }

        table {
            width: 40%;
            height: 200px;
            align-self: center;
            text-align: center;
        }

        table td:nth-child(1), td:nth-child(3) {
            width: 35%;
        }

        table td:nth-child(2), td:nth-child(4) {
            width: 65%;
        }

        table tr:nth-child(3) {
            text-align: center;
        }

        table input {
            font-size: 30px;
            border-radius: 5px;
        }

        button {
            align-self: center;
            margin-top: 30px;
            margin-left: 50px;
            font-size: 22px;
            border-radius: 5px;
            background-color: aquamarine;

        }
    </style>
    <script type="text/javascript">
        function check() {
            if (document.getElementById("username").value == '') {
                alert("用户名不能为空");
                return false;
            }
            if (document.getElementById("password").value == '') {
                alert("密码不能为空");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
<div class="main">
    <form action="${pageContext.request.contextPath}/loginServlet" method="post">
        <h4 align="center">社区家政通管理系统</h4>
        <h5 align="center">登录</h5>
        <table>
            <tr>
                <td><b>用户名: </b></td>
                <td><input id="username" name="username" type="text" value=""/> <br/></td>
            </tr>
            <tr>
                <td><b>密码:</b></td>
                <td><input id="password" type="password" name="password" value=""/></td>
            </tr>
        </table>
        <button type="submit" style="width: 150px; height: 35px" onclick="return check()">登录
        </button>
    </form>
</div>
</body>
</html>