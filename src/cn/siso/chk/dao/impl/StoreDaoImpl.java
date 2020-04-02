package cn.siso.chk.dao.impl;

import cn.siso.chk.dao.StoreDao;
import cn.siso.chk.domain.Store;
import cn.siso.chk.util.JDBCUtil;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class StoreDaoImpl implements StoreDao {

    JdbcTemplate jdbcTemplate = new JdbcTemplate(JDBCUtil.getDataSource());

    @Override
    public List<Store> findAll() {
        String sql = "select * from stores";
        List<Store> stores = jdbcTemplate.query(sql, new BeanPropertyRowMapper<Store>(Store.class));
        return stores;
    }
}
