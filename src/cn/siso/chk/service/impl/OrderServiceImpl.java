package cn.siso.chk.service.impl;

import cn.siso.chk.dao.OrderDao;
import cn.siso.chk.dao.impl.OrderDaoImpl;
import cn.siso.chk.domain.Order;
import cn.siso.chk.service.OrderService;

import java.util.List;

public class OrderServiceImpl implements OrderService {

    OrderDao orderDao = new OrderDaoImpl();
    @Override
    public List<Order> findAll() {
        return orderDao.findAll();
    }
}
