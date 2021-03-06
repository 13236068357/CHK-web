package cn.siso.chk.dao.impl;

import cn.siso.chk.dao.CommunityDao;
import cn.siso.chk.domain.Community;
import cn.siso.chk.util.JDBCUtil;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;
import java.util.Map;

public class CommunityDaoImpl implements CommunityDao {

    JdbcTemplate jdbcTemplate = new JdbcTemplate(JDBCUtil.getDataSource());

    @Override
    public List<Community> findAll() {
        String sql = "select * from communities";
        List<Community> communities = jdbcTemplate.query(sql, new BeanPropertyRowMapper<Community>(Community.class));
        return communities;
    }

    @Override
    public void addCommunity(Community community, String userId) {
        String sql = "insert into communities values(null,?,?,?,?,?)";
        jdbcTemplate.update(sql, community.getName(), community.getImages(), community.getAddress(), community.getPhone(), userId);
    }

    @Override
    public Map<String, Object> selectId(int id) {
        String sql = "select * from communities where id =?";
        Map<String, Object> community = jdbcTemplate.queryForMap(sql, id);
        return community;
    }

    @Override
    public void deleteCommunity(int id) {
        String sql = "delete from communities where id =?";
        jdbcTemplate.update(sql, id);
    }
}
