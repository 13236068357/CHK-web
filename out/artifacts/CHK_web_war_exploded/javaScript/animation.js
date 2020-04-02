/**
 */
// 弹窗openwindow()
function openwindow(id) {
    // 获取弹窗得div
    switch (id) {
        case null:
            var modal = document.getElementById('myModal');
            break;
        default:
            var modal = document.getElementById('editModal');
            var goodId = document.getElementById("goodId");
            goodId.value = id;
            doSendParam(id);
            break;
    }
    // 获取弹窗中得确定按钮
    var ok = document.getElementsByClassName("ok")[0];
    // 窗体弹出
    modal.style.display = "block";
    // 点击确定
    ok.onclick = function () {
        // 关闭窗口
        modal.style.display = "none";
    }
    // 在用户点击其他地方时，关闭弹窗
    window.onclick = function (event) {
        // 点击窗口外内容，关闭窗口
        if (event.target == modal)
            modal.style.display = "none";
    }
}

function doSendParam(id) {
    url = "../jsp/goods.jsp?param=" + id;
    window.location.href = url;
}

