package cn.siso.chk.web.servlet;

import cn.siso.chk.domain.Admin;
<<<<<<< HEAD
import cn.siso.chk.service.AdminService;
import cn.siso.chk.service.impl.AdminServiceImpl;
=======
import cn.siso.chk.service.UserService;
>>>>>>> 2badce7968e9096ccd3afadadbcc702d1af92b3a
import cn.siso.chk.service.impl.UserServiceImpl;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("utf-8");
        //获取用户输入验证码
        String verifyCode = req.getParameter("verifyCode");
        //获取servlet生成验证码
        HttpSession session = req.getSession();
        String check_code = String.valueOf(session.getAttribute("CHECK_CODE"));
        session.removeAttribute("CHECK_CODE");
        //如果不正确返回登录
        if (!check_code.equalsIgnoreCase(verifyCode)) {
            req.setAttribute("msg", "验证码错误！");
            //跳转回登录页面
<<<<<<< HEAD
            req.getRequestDispatcher("jsp/login.jsp").forward(req, resp);
=======
            req.getRequestDispatcher("/jsp/login.jsp").forward(req, resp);
>>>>>>> 2badce7968e9096ccd3afadadbcc702d1af92b3a
            return;
        }
        //获取用户全部输入
        Map<String, String[]> map = req.getParameterMap();
        //创建User对象
        Admin loginAdmin = new Admin();
        try {
            //封装User对象
            BeanUtils.populate(loginAdmin, map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        //调用登录方法
<<<<<<< HEAD
        AdminService adminService = new AdminServiceImpl();
        Admin login = adminService.login(loginAdmin);
        if (login != null) {
            //将用户存入session
            session.setAttribute("user", login);
            resp.sendRedirect(req.getContextPath() + "/jsp/index.jsp");
        } else {
            System.out.println("222");
            req.setAttribute("msg", "用户名或密码错误！");
            req.getRequestDispatcher("jsp/login.jsp").forward(req, resp);
=======
        UserService userService = new UserServiceImpl();
        Admin login = userService.login(loginAdmin);
        if (login != null) {
            //将用户存入session
            session.setAttribute("user", login);
            resp.sendRedirect(req.getContextPath() + "/index.jsp");
        } else {
            System.out.println("222");
            req.setAttribute("msg", "用户名或密码错误！");
            req.getRequestDispatcher("/jsp/login.jsp").forward(req, resp);
>>>>>>> 2badce7968e9096ccd3afadadbcc702d1af92b3a
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
