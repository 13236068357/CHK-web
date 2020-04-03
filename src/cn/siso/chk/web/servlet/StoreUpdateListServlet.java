package cn.siso.chk.web.servlet;

import cn.siso.chk.service.GoodService;
import cn.siso.chk.service.StoreService;
import cn.siso.chk.service.impl.GoodServiceImpl;
import cn.siso.chk.service.impl.StoreServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;


@WebServlet("/storeUpdateListServlet")
public class StoreUpdateListServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        StoreService storeService = new StoreServiceImpl();
        Map<String, Object> store = storeService.selectId(id);
        req.setAttribute("store", store);
        //转发
        req.getRequestDispatcher("/jsp/store_update.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
