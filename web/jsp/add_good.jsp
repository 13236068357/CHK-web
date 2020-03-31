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
    <meta charset="utf-8"/>
    <title>添加商品</title>
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

            //给删除图标添加监听事件
            // let deleteBtn = document.getElementsByClassName("delete");
            // for (var i = 0; i < deletebtn.length; i++) {
            //     deleteBtn[i].onclick = function (e) {
            //         imgUrl.splice(e.target.id, 1);
            //         document.getElementById("images").value = imgUrl;
            //         var container = document.getElementById(e.target.id);
            //         var parentObj = container.parentNode;
            //         parentObj.removeChild(container);
            //
            //     }
            // }
        }

        //判断浏览器类型
        function getFileUrl(sourceId) {
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

    </script>
</head>
<body>
<h3 align="center">添加商品</h3>
<form action="${pageContext.request.contextPath}/addGoodServlet" method="post">
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
                <td>
                    <b>名称:</b>
                </td>
                <td><input id="name" type="text" name="name"/></td>
                <td><input id="images" name="images" type="hidden"/></td>
            </tr>
            <tr>
                <td><b>价格:</b></td>
                <td><input type="text" name="price"/></td>
            </tr>
            <tr>
                <td><b>类别:</b></td>
                <td><select id="sort" name="sort"
                            style="font-size: 30px;width: 369px;border: 2px solid #111111;border-radius: 5px;">
                    <option>搬家</option>
                    <option>保洁</option>
                    <option>保姆</option>
                    <option>家务</option>
                    <option>维修</option>
                </select>
                </td>
            </tr>
            <tr>
                <td><b>信息：</b></td>
                <td><input type="text" name="info"/></td>
            </tr>
            <tr>
                <td><input type="hidden" name="user_id" value="${user.id}"/></td>
            </tr>
        </table>
    </div>
    <div class="r-s-button">
        <button type="reset" value="重置">重置</button>
        <button type="submit" value="添加">添加</button>
    </div>
</form>
<input id="inputFile" name="inputFile" class="inputFile" onchange="change();" type="file"
       style="opacity: 0;">
</body>
</html>
