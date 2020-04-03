package cn.siso.chk.web.servlet;

import cn.siso.chk.domain.Store;
import cn.siso.chk.service.StoreService;
import cn.siso.chk.service.impl.StoreServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/storeListServlet")
public class StoreListServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        StoreService storeService = new StoreServiceImpl();
        List<Store> stores = storeService.findAll();
        req.setAttribute("stores", stores);
        req.getRequestDispatcher("/jsp/stores.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
