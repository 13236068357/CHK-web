<%--
  Created by IntelliJ IDEA.
  User: MACHENIKE
  Date: 2020/3/30
  Time: 22:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            height: 950px;
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
        }

        table input {
            font-size: 30px;
            border-radius: 5px;
        }

        .image {
            margin: 100px;
            width: 75%;
            border: 1px solid #111111;
        }

        .inputLabel {
            position: fixed;
            top: 300px;
            left: 300px;
            width: 50px;
        }

    </style>
    <script>
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

        var imgUrl = [];// 将图片暂时保存在数组

        function change() {
            var uploadUrl = getFileUrl('inputFile');//获取文件
            imgUrl.push(uploadUrl);//将元素添加进数组
            document.getElementById("allImgUrl").value = imgUrl;
            var previewlImg = document.getElementById("previewlImg");//绑定div

            //创建标签
            var outDiv = document.createElement("div");
            var container = document.createElement("div");
            var img = document.createElement("img");
            var deleteImg = document.createElement("img");

            //设置样式、属性
            img.src = uploadUrl;
            img.className = "upImg";
            img.name = "allImgUrl";
            deleteImg.id = imgUrl.indexOf(uploadUrl);
            deleteImg.className = "delete";
            deleteImg.src = "../images/delete.png";
            container.className = "container";
            outDiv.id = imgUrl.indexOf(uploadUrl);//获取当前元素在数组中的下标
            outDiv.className = "outDiv";

            //添加标签
            container.appendChild(deleteImg);
            outDiv.appendChild(img);
            outDiv.appendChild(container);
            previewlImg.append(outDiv);

            //给删除图标添加监听事件
            var deletebtn = document.getElementsByClassName("delete");
            for (var i = 0; i < deletebtn.length; i++) {
                deletebtn[i].onclick = function (e) {
                    // console.log(e.target.id);
                    imgUrl.splice(e.target.id, 1);
                    document.getElementById("allImgUrl").value = imgUrl;
                    var outDiv = document.getElementById(e.target.id);
                    var parentObj = outDiv.parentNode;
                    parentObj.removeChild(outDiv);

                }
            }
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
<form action="" method="post" enctype="multipart/form-data">
    <div class="overall">
        <div class="leftImage">
            <div class="image">
                <div id="previewlImg" class="previewImg">
                    <input id="inputFile" class="inputLabel" onchange="change('preview');" type="file"
                           style="opacity: 0;">
                    <label class="inputLabel" for="inputFile">
                        <img style="width: 100px;" src="../images/addImg.png"/></label>
                </div>
            </div>
        </div>

        <table>
            <tr>
                <td>
                    <b>名称:</b>
                </td>
                <td><input type="text" name="name"/></td>
            </tr>
            <tr>
                <td><b>价格:</b></td>
                <td><input type="text" name="price"/></td>
            </tr>
            <tr>
                <td><b>类别:</b></td>
                <td><select id="sort" name="sort">
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
    </div>
    </table>
    </div>
    <button type="reset" value="重置"/>
    <button type="submit" value="添加"/>
</form>
</body>
</html>
