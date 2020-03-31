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
import java.util.Map;


@WebServlet("/updateListServlet")
public class UpdateListServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        GoodService goodService = new GoodServiceImpl();
        Map<String, Object> good = goodService.selectId(id);
        req.setAttribute("good", good);
        //转发
        req.getRequestDispatcher("jsp/update_good.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
