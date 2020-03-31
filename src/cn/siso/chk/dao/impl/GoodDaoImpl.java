package cn.siso.chk.dao.impl;

import cn.siso.chk.dao.GoodDao;
import cn.siso.chk.domain.Good;
import cn.siso.chk.domain.User;
import cn.siso.chk.util.JDBCUtil;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

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
        String sql = "insert into goods values (null,?,?,?,?,?,?)";
        jdbcTemplate.update(sql, good.getName(), good.getImages(), good.getPrice(), good.getSort(), good.getInfo(), good.getUser_id());
    }


    @Override
    public void updateGood(Good good) {

    }

    public Map<String, Object> selectId(int id) {
        String sql = "select * from goods where id = ?";
        Map<String, Object> good1 = jdbcTemplate.queryForMap(sql, id);
        return good1;
    }

    @Override
    public void deleteGood(int id) {

        String sql = "delete from goods where id = ?";
        jdbcTemplate.update(sql, id);
    }
}
