package cn.siso.chk.web.servlet;

import cn.siso.chk.domain.Order;
import cn.siso.chk.service.OrderService;
import cn.siso.chk.service.impl.OrderServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/orderListServlet")
public class OrderListServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        OrderService orderService = new OrderServiceImpl();
        List<Order> orders = orderService.findAll();
        req.setAttribute("orders", orders);
        req.getRequestDispatcher("/jsp/orders.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
