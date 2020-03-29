package cn.siso.chk.web.servlet;

import cn.siso.chk.domain.Good;
import cn.siso.chk.service.GoodService;
import cn.siso.chk.service.impl.GoodServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/goodListServlet")
public class GoodListServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //调用service完成查询
        GoodService goodService = new GoodServiceImpl();
        List<Good> goods = goodService.findAll();
        request.setAttribute("goods", goods);

        //转发
        request.getRequestDispatcher("jsp/goods.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
