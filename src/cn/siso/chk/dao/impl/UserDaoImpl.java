package cn.siso.chk.dao.impl;

<<<<<<< HEAD
import cn.siso.chk.dao.AdminDao;
import cn.siso.chk.dao.UserDao;
import cn.siso.chk.domain.Admin;
import cn.siso.chk.domain.User;
=======
import cn.siso.chk.dao.UserDao;
import cn.siso.chk.domain.Admin;
>>>>>>> 2badce7968e9096ccd3afadadbcc702d1af92b3a
import cn.siso.chk.util.JDBCUtil;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

<<<<<<< HEAD
import java.util.List;

=======
>>>>>>> 2badce7968e9096ccd3afadadbcc702d1af92b3a
public class UserDaoImpl implements UserDao {

    JdbcTemplate jdbcTemplate = new JdbcTemplate(JDBCUtil.getDataSource());

    @Override
<<<<<<< HEAD
    public List<User> findAll() {
        String sql = "select * from users";
        List<User> users = jdbcTemplate.query(sql, new BeanPropertyRowMapper<User>(User.class));
        return users;
=======
    public Admin login(Admin loginAdmin) {
        String sql = "select * from user where username = ? and password = ?";
        Admin admin = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<Admin>(Admin.class), loginAdmin.getUsername(), loginAdmin.getPassword());
        return admin;
>>>>>>> 2badce7968e9096ccd3afadadbcc702d1af92b3a
    }
}
