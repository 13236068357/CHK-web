package cn.siso.chk.service;

import cn.siso.chk.domain.Order;

import java.util.List;

public interface OrderService {
    List<Order> findAll();
}
