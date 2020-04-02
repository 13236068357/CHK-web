package cn.siso.chk.dao.impl;

import cn.siso.chk.dao.OrderDao;
import cn.siso.chk.domain.Order;
import cn.siso.chk.util.JDBCUtil;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class OrderDaoImpl implements OrderDao {

    JdbcTemplate jdbcTemplate = new JdbcTemplate(JDBCUtil.getDataSource());

    @Override
    public List<Order> findAll() {
        String sql = "select * from orders";
        List<Order> orders = jdbcTemplate.query(sql, new BeanPropertyRowMapper<Order>(Order.class));
        return orders;
    }
}
