package cn.siso.chk.web.servlet;

import cn.siso.chk.domain.Community;
import cn.siso.chk.domain.Good;
import cn.siso.chk.service.CommunityService;
import cn.siso.chk.service.GoodService;
import cn.siso.chk.service.impl.CommunityServiceImpl;
import cn.siso.chk.service.impl.GoodServiceImpl;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@WebServlet("/communityAddServlet")
public class CommunityAddServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("utf-8");
        Map<String, String[]> map = req.getParameterMap();
        Community community = new Community();
        try {
            BeanUtils.populate(community, map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        String id = req.getParameter("id");
        CommunityService communityService = new CommunityServiceImpl();
        communityService.addCommunity(community, id);
        resp.sendRedirect(req.getContextPath() + "/communityListServlet");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
