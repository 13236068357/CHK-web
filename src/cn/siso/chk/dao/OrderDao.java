package cn.siso.chk.dao;

import cn.siso.chk.domain.Order;

import java.util.List;

public interface OrderDao {
    List<Order> findAll();
}
