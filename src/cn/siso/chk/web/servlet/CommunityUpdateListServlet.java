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
import java.util.Map;


@WebServlet("/communityUpdateListServlet")
public class CommunityUpdateListServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        CommunityService communityService = new CommunityServiceImpl();
        Map<String, Object> community = communityService.selectId(id);
        req.setAttribute("community", community);
        //转发
        req.getRequestDispatcher("/jsp/community_update.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
