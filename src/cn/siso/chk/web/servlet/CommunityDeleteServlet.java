package cn.siso.chk.web.servlet;

import cn.siso.chk.service.CommunityService;
import cn.siso.chk.service.GoodService;
import cn.siso.chk.service.impl.CommunityServiceImpl;
import cn.siso.chk.service.impl.GoodServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/communityDeleteServlet")
public class CommunityDeleteServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        CommunityService communityService = new CommunityServiceImpl();
        communityService.deleteCommunity(id);
        resp.sendRedirect(req.getContextPath() + "/communityListServlet");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
