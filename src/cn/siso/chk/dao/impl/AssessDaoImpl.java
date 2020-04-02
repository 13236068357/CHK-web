package cn.siso.chk.dao.impl;

import cn.siso.chk.dao.AssessDao;
import cn.siso.chk.domain.Assess;
import cn.siso.chk.util.JDBCUtil;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class AssessDaoImpl implements AssessDao {

    JdbcTemplate jdbcTemplate = new JdbcTemplate(JDBCUtil.getDataSource());

    @Override
    public List<Assess> findAll() {
        String sql = "select * from assesses";
        List<Assess> assesses = jdbcTemplate.query(sql, new BeanPropertyRowMapper<Assess>(Assess.class));
        return assesses;
    }
}
