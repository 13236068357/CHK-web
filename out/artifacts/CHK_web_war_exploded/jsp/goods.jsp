<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<jsp:include page="menu.jsp"/>
<html>
<head>
    <meta charset="UTF-8">
    <link href="css/public.css" type="text/css" rel="stylesheet"/>
    <script src="javaScript/animation.js" charset="utf-8"></script>
    <title>商品管理</title>
    <style type="text/css">
        .previewImg {
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
            width: 85%;
            height: 90%;
            margin: 10px;
            border: 1px dashed #111111;
        }

        .upImg {
            width: 200px;
            height: 180px;
            object-fit: cover; /* 等比缩放 */
            border: 1px solid #111111;
        }

        .container {
            display: flex;
            flex-direction: row;
            justify-content: center;
            margin: 0 20px 0 0;
            width: 198px;
            border: 2px solid #111111;
        }

        .delete {
            width: 35px;
            height: 35px;
        }

        .outDiv {
            display: flex;
            flex-direction: column;
            margin: 25px 25px 25px 30px;
        }

    </style>
</head>
<body>

<div class="head">
    <h4 align="center">商品管理</h4>
    <button class="add" onclick="openwindow(null)">新增商品</button>
</div>
<hr>
<div class="excel" style="height: 95%; overflow: scroll;">
    <table style="table-layout: fixed;">
        <tr>
            <th>编号</th>
            <th>名称</th>
            <th>图片</th>
            <th>价格</th>
            <th>类别</th>
            <th>信息</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${goods}" var="good" varStatus="s">
            <tr>
                <td>${good.id}</td>
                <td>${good.name}</td>
                <td style="white-space: nowrap;text-overflow: ellipsis;overflow: hidden;">${good.images}</td>
                <td>${good.price}</td>
                <td>${good.sort}</td>
                <td>${good.info}</td>
                <td>
                    <button style="background-color: green;" onclick="openwindow(${good.id})">编辑</button>
                    <button style="background-color: red;"
                            onclick="window.location.href='goods_mysql/delete.jsp?id=${good.id}'">删除
                    </button>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>

<script>
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
<!-- 新增弹窗隐藏区域 -->
<div id="myModal" class="modal">
    <!-- 弹窗内容 -->
    <div class="modal-content">
        <div class="modal-body">
            <form action="goods_mysql/insert.jsp" enctype="multipart/form-data">
                <div class="upimage">
                    <div class="carousel">
                        <div align="center" style="background-color: #4d5e70; font-size: 24px; color: #fff;">图片（1/6）
                        </div>
                        <div id="previewlImg" class="previewImg"></div>
                        <input id="inputFile" class="inputLabel" onchange="change('preview');" type="file"
                               style="opacity: 0;"> <label class="inputLabel" for="inputFile">选择图片</label>
                        <!-- 一二两次上传相同图片失败 -->
                    </div>
                </div>
                <div class="uplist">
                    <div class="modal-header">
                        <div>新增商品</div>
                    </div>
                    <textarea id="allImgUrl" name="allImgUrl" type=""></textarea>
                    <div>
                        名称:<label>
                        <input type="text" name="name"/>
                    </label>
                    </div>
                    <div>
                        价格:<label>
                        <input type="text" name="price"/>
                    </label>
                    </div>
                    <div>
                        类别:<select id="sort" name="sort" style="font-size: 24px;width: 295px;margin-left: 5px;">
                        <option>搬家</option>
                        <option>保洁</option>
                        <option>保姆</option>
                        <option>家务</option>
                        <option>维修</option>
                    </select>
                    </div>
                    <div>
                        信息:<label>
                        <input type="text" name="info"/>
                    </label>
                    </div>
                    <div colspan="2">
                        <input type="reset" value="重置" id="reset"/> <input class="ok" type="submit" value="添加"/>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- 编辑弹窗隐藏区域 -->
<div id="editModal" class="modal">
    <!-- 弹窗内容 -->
    <div class="modal-content">
        <div class="modal-header">
            <div>编辑商品</div>
        </div>
        <div class="modal-body">
            <form action="goods_mysql/upData.jsp" enctype="multipart/form-data">
                <div class="upimage">
                    <div class="carousel">
                        <div align="center" style="background-color: #4d5e70; font-size: 24px; color: #fff;">图片（1/6）
                        </div>
                        <div id="editpreviewlImg" class="previewImg"></div>
                        <input id="editinputFile" class="inputLabel" onchange="change('preview');" type="file"
                               style="opacity: 0;"> <label class="inputLabel" for="inputFile">选择图片</label>
                        <!-- 一二两次上传相同图片失败 -->
                    </div>
                </div>
                <div class="uplist">
                    <div class="modal-header">
                        <div>新增商品</div>
                        <input id="goodId" name="goodId" type="hidden" value=""/>
                    </div>
                    <textarea id="editallImgUrl" name="allImgUrl" type=""></textarea>
                    <div>
                        名称:<label>
                        <input type="text" name="name"/>
                    </label>
                    </div>
                    <div>
                        价格:<label>
                        <input type="text" name="price"/>
                    </label>
                    </div>
                    <div>
                        类别:<select id="editsort" name="sort" style="font-size: 24px;width: 295px;margin-left: 5px;">
                        <option>搬家</option>
                        <option>保洁</option>
                        <option>保姆</option>
                        <option>家务</option>
                        <option>维修</option>
                    </select>
                    </div>
                    <div>
                        信息:<label>
                        <input type="text" name="info"/>
                    </label>
                    </div>
                    <div colspan="2">
                        <input type="reset" value="重置" id="editreset"/> <input class="ok" type="submit" value="添加"/>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>