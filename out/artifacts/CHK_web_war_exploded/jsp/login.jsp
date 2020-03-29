<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <link href="../css/login.css" type="text/css" rel="stylesheet"/>
    <title>登录</title>
</head>
<body>
<div class="main">
    <h4 align="center">社区家政通管理系统</h4>
    <div class="right">
        <form action="/chk/loginServlet" method="post">
            <h5 align="center">
                登录</h5>
            <p class="user_pwd">
                <tr>
                    <td><b>用户名: </b></td>
                    <td><input id="username" name="username" type="text" value=""/> <br/></td>
                </tr>
                <tr>
                    <td><b>密码:</b></td>
                    <td><input id="password" type="password" name="password" value=""/></td>
                </tr>
            </p>
            <p class="login_btn">
                <button type="submit" style="width: 150px; height: 35px"
                        onclick="return check()">登录
                </button>
            </p>
        </form>
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
    </div>
</div>
</body>
</html>