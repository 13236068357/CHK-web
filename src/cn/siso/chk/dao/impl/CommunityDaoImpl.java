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
        String sql = "select * from community";
        List<Community> communities = jdbcTemplate.query(sql, new BeanPropertyRowMapper<Community>(Community.class));
        return communities;
    }
}
