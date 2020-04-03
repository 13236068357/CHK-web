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

@WebServlet("/storeDeleteServlet")
public class StoreDeleteServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        StoreService storeService = new StoreServiceImpl();
        storeService.deleteStore(id);
        resp.sendRedirect(req.getContextPath() + "/storeListServlet");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
