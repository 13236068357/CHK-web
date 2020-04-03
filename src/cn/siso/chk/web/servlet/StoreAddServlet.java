package cn.siso.chk.web.servlet;

import cn.siso.chk.domain.Good;
import cn.siso.chk.domain.Store;
import cn.siso.chk.service.GoodService;
import cn.siso.chk.service.StoreService;
import cn.siso.chk.service.impl.GoodServiceImpl;
import cn.siso.chk.service.impl.StoreServiceImpl;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@WebServlet("/storeAddServlet")
public class StoreAddServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("utf-8");
        Map<String, String[]> map = req.getParameterMap();
        Store store = new Store();
        try {
            BeanUtils.populate(store, map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        String id = req.getParameter("id");
        StoreService storeService = new StoreServiceImpl();
        storeService.addStore(store);
        resp.sendRedirect(req.getContextPath() + "/storeListServlet");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
