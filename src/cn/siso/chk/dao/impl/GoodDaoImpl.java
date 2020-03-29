package cn.siso.chk.dao.impl;

import cn.siso.chk.dao.GoodDao;
import cn.siso.chk.domain.Good;
import cn.siso.chk.util.JDBCUtil;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class GoodDaoImpl implements GoodDao {
    JdbcTemplate jdbcTemplate = new JdbcTemplate(JDBCUtil.getDataSource());

    @Override
    public List<Good> findAll() {
        //使用JDBC操作数据库
        String sql = "select * from goods";
        List<Good> goods = jdbcTemplate.query(sql, new BeanPropertyRowMapper<Good>(Good.class));
        return goods;
    }
}
