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
                            onclick="window.location.href='${pageContext.request.contextPath}/deleteGoodServlet?id=${good.id}'">删除
                    </button>
                </td>
            </tr>
        </c:forEach>
    </table>
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