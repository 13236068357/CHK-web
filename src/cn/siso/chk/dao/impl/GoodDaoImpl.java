package cn.siso.chk.dao.impl;

import cn.siso.chk.dao.GoodDao;
import cn.siso.chk.domain.Good;
import cn.siso.chk.domain.User;
import cn.siso.chk.util.JDBCUtil;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class GoodDaoImpl implements GoodDao {
    JdbcTemplate jdbcTemplate = new JdbcTemplate(JDBCUtil.getDataSource());

    /**
     * 查询所有
     *
     * @return
     */
    @Override
    public List<Good> findAll() {
        //使用JDBC操作数据库
        String sql = "select * from goods";
        List<Good> goods = jdbcTemplate.query(sql, new BeanPropertyRowMapper<Good>(Good.class));
        return goods;
    }

    /**
     * 新增一条数据
     *
     * @return
     */
    @Override
    public void addGood(Good good) {
        String sql = "insert into goods values (null,?,?,?,?,?)";
        jdbcTemplate.update(sql, good.getName(), good.getImages(), good.getPrice(), good.getSort(), good.getInfo());
    }

    @Override
    public void deleteGood(int id) {

        String sql = "delete from goods where id = ?";
        jdbcTemplate.update(sql, id);
    }
}
