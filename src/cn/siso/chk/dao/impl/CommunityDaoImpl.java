package cn.siso.chk.dao.impl;

import cn.siso.chk.dao.CommunityDao;
import cn.siso.chk.domain.Community;
import cn.siso.chk.util.JDBCUtil;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class CommunityDaoImpl implements CommunityDao {

    JdbcTemplate jdbcTemplate = new JdbcTemplate(JDBCUtil.getDataSource());

    @Override
    public List<Community> findAll() {
<<<<<<< HEAD
        String sql = "select * from communities";
=======
        String sql = "select * from community";
>>>>>>> 2badce7968e9096ccd3afadadbcc702d1af92b3a
        List<Community> communities = jdbcTemplate.query(sql, new BeanPropertyRowMapper<Community>(Community.class));
        return communities;
    }
}
