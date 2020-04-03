package cn.siso.chk.web.servlet;

import cn.siso.chk.domain.Assess;
import cn.siso.chk.service.AssessService;
import cn.siso.chk.service.impl.AssessServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/assessListServlet")
public class AssessListServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        AssessService assessService = new AssessServiceImpl();
        List<Assess> assesses = assessService.findAll();
        req.setAttribute("assesses", assesses);
        req.getRequestDispatcher("/jsp/assesses.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
