<%--
  Created by IntelliJ IDEA.
  User: MACHENIKE
  Date: 2020/3/30
  Time: 22:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <style>

        form {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            width: 100%;
            height: 800px;
        }

        .overall {
            display: flex;
            flex-direction: row;
            width: 80%;
            height: 80%;
        }

        .leftImage {
            display: flex;
            width: 60%;
            height: 100%;
        }

        table {
            width: 40%;
            height: auto;
            margin-top: 50px;
        }

        table input {
            font-size: 30px;
            border-radius: 5px;
        }

        .image {
            margin: 50px 100px 100px 100px;
            width: 100%;
            height: 500px;
            border: 1px dotted #111111;
        }

        .upImg {
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
        }

        .inputLabel {
            margin-top: 30px;
            margin-left: 25px;
        }

        .img {
            width: 200px;
            height: 200px;
            object-fit: cover; /* 等比缩放 */
        }

        .container {
            display: flex;
            justify-content: space-around;
            border: 1px dotted #111111;
            margin-left: 25px;
            margin-top: 30px;
        }

        .r-s-button {
            display: flex;
            width: 300px;
        }

        .r-s-button button {
            width: 100px;
            height: 50px;
            margin-left: 20px;
            background-color: aquamarine;
            font-size: 30px;
            border-radius: 5px;
        }
    </style>
    <script>
        let imgUrl = [];// 将图片暂时保存在数组

        function change() {
            let uploadUrl = getFileUrl('inputFile');//获取文件
            console.log(uploadUrl);
            imgUrl.push(uploadUrl);//将元素添加进数组
            document.getElementById("images").value = imgUrl;
            let upImg = document.getElementById("upImg");//绑定div

            //创建标签
            let container = document.createElement("div");
            let img = document.createElement("img");

            //设置样式、属性
            img.src = uploadUrl;
            img.className = "img";
            container.className = "container";
            container.id = uploadUrl.indexOf(imgUrl);

            //添加标签
            container.append(img);
            upImg.append(container);
        }

        //判断浏览器类型
        function getFileUrl(sourceId) {
            console.log(sourceId);
            var url;
            if (navigator.userAgent.indexOf("MSIE") >= 1) { // IE
                url = document.getElementById(sourceId).value;
            } else if (navigator.userAgent.indexOf("Firefox") > 0) { // 火狐
                url = window.URL.createObjectURL(document.getElementById(sourceId).files.item(0));
            } else if (navigator.userAgent.indexOf("Chrome") > 0) { // 谷歌
                url = window.URL.createObjectURL(document.getElementById(sourceId).files.item(0));
            }
            return url;
        }

        function selectChange(sort) {
            let sortChild = document.getElementsByName("sortChild");
            let option = document.getElementById("0");
            let option1 = document.getElementById("1");
            let option2 = document.getElementById("2");
            let option3 = document.getElementById("3");
            switch (sort.value) {
                case "保洁":
                    option1.textContent = "家庭保洁";
                    option2.textContent = "开荒";
                    option3.textContent = "空气净化";
                    option4.textContent = "除虫除蚁";
                    break;
                case "保姆":
                    option1.textContent = "月嫂";
                    option2.textContent = "育儿嫂";
                    option3.textContent = "钟点工";
                    option4.textContent = "保姆";
                    break;
                case "家务":
                    option1.textContent = "回收";
                    option2.textContent = "开锁";
                    option3.textContent = "疏通";
                    option4.textContent = "煤气";
                    break;
                case "维修":
                    option1.textContent = "家电";
                    option2.textContent = "房屋";
                    option3.textContent = "家居";
                    option4.textContent = "电脑";
                    break;
                default:
                    option1.textContent = "居民";
                    option2.textContent = "长途";
                    option3.textContent = "空调移机";
                    option4.textContent = "设备";
                    break;
            }
        }

    </script>
    <meta charset="utf-8"/>
    <title>添加商家</title>
</head>
<body>
<h3 align="center">添加商家</h3>
<form action="${pageContext.request.contextPath}/storeAddServlet" method="post">
    <div class="overall">
        <div class="leftImage">
            <div class="image">
                <div id="upImg" class="upImg">
                    <label class="inputLabel" for="inputFile">
                        <img style="width: 200px;" src="../images/addImg.png"/></label>
                </div>
            </div>
        </div>

        <table>
            <tr>
                <td><b>名称:</b></td>
                <td><input id="name" type="text" name="name"/></td>
                <td><input id="images" name="images" type="hidden"/></td>
            </tr>
            <tr>
                <td><b>信息：</b></td>
                <td><input type="text" name="info"/></td>
            </tr>
            <tr>
                <td><b>地址:</b></td>
                <td><input type="text" name="address"/></td>
            </tr>
            <tr>
                <td><b>电话:</b></td>
                <td><input type="text" name="phone"/></td>
            </tr>
            <tr>
                <td><b>社区:</b></td>
                <td><input type="text" name="belong"/></td>
            </tr>
        </table>
    </div>
    <div class="r-s-button">
        <button type="reset" value="重置">重置</button>
        <button type="submit" value="添加">添加</button>
    </div>
</form>
<input id="inputFile" name="inputFile" class="inputFile" onchange="change();" type="file"
       style="display:none;opacity: 0;">
</body>
</html>
