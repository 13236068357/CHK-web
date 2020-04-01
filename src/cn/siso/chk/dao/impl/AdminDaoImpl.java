package cn.siso.chk.dao.impl;

import cn.siso.chk.dao.AdminDao;
import cn.siso.chk.domain.Admin;
import cn.siso.chk.util.JDBCUtil;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

public class AdminDaoImpl implements AdminDao {

    JdbcTemplate jdbcTemplate = new JdbcTemplate(JDBCUtil.getDataSource());

    @Override
    public Admin login(Admin loginAdmin) {
        String sql = "select * from admins where username = ? and password = ?";
        Admin admin = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<Admin>(Admin.class), loginAdmin.getUsername(), loginAdmin.getPassword());
        return admin;
    }
}
