package cn.siso.chk.dao.impl;

import cn.siso.chk.dao.StoreDao;
import cn.siso.chk.domain.Store;
import cn.siso.chk.util.JDBCUtil;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;
<<<<<<< HEAD
import java.util.Map;
=======
>>>>>>> 675324a76923d1f881d53eab0c813fa21166c87a

public class StoreDaoImpl implements StoreDao {

    JdbcTemplate jdbcTemplate = new JdbcTemplate(JDBCUtil.getDataSource());

    @Override
    public List<Store> findAll() {
        String sql = "select * from stores";
        List<Store> stores = jdbcTemplate.query(sql, new BeanPropertyRowMapper<Store>(Store.class));
        return stores;
    }
<<<<<<< HEAD

    @Override
    public void addStore(Store store) {
        String sql = "insert into stores values(null,?,?,?,?,?,?)";
        jdbcTemplate.update(sql, store.getName(), store.getImages(), store.getInfo(), store.getAddress(), store.getPhone(), store.getBelong());
    }

    @Override
    public Map<String, Object> selectId(int id) {
        String sql = "select * from stores where id = ?";
        Map<String, Object> store = jdbcTemplate.queryForMap(sql, id);
        return store;
    }

    @Override
    public void deleteStore(int id) {
        String sql = "delete from stores where id = ?";
        jdbcTemplate.update(sql, id);
    }
=======
>>>>>>> 675324a76923d1f881d53eab0c813fa21166c87a
}
