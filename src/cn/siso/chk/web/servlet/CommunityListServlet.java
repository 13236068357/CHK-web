package cn.siso.chk.web.servlet;

import cn.siso.chk.domain.Community;
import cn.siso.chk.service.CommunityService;
import cn.siso.chk.service.impl.CommunityServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/communityListServlet")
public class CommunityListServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CommunityService communityService = new CommunityServiceImpl();
        List<Community> communities = communityService.findAll();
        req.setAttribute("communities", communities);
        req.getRequestDispatcher("/jsp/communities.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
