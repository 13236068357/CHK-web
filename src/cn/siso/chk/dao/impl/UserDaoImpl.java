package cn.siso.chk.dao.impl;

<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 675324a76923d1f881d53eab0c813fa21166c87a
import cn.siso.chk.dao.AdminDao;
import cn.siso.chk.dao.UserDao;
import cn.siso.chk.domain.Admin;
import cn.siso.chk.domain.User;
<<<<<<< HEAD
=======
=======
import cn.siso.chk.dao.UserDao;
import cn.siso.chk.domain.Admin;
>>>>>>> 2badce7968e9096ccd3afadadbcc702d1af92b3a
>>>>>>> 675324a76923d1f881d53eab0c813fa21166c87a
import cn.siso.chk.util.JDBCUtil;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

<<<<<<< HEAD
import java.util.List;

=======
<<<<<<< HEAD
import java.util.List;

=======
>>>>>>> 2badce7968e9096ccd3afadadbcc702d1af92b3a
>>>>>>> 675324a76923d1f881d53eab0c813fa21166c87a
public class UserDaoImpl implements UserDao {

    JdbcTemplate jdbcTemplate = new JdbcTemplate(JDBCUtil.getDataSource());

    @Override
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 675324a76923d1f881d53eab0c813fa21166c87a
    public List<User> findAll() {
        String sql = "select * from users";
        List<User> users = jdbcTemplate.query(sql, new BeanPropertyRowMapper<User>(User.class));
        return users;
<<<<<<< HEAD
=======
=======
    public Admin login(Admin loginAdmin) {
        String sql = "select * from user where username = ? and password = ?";
        Admin admin = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<Admin>(Admin.class), loginAdmin.getUsername(), loginAdmin.getPassword());
        return admin;
>>>>>>> 2badce7968e9096ccd3afadadbcc702d1af92b3a
>>>>>>> 675324a76923d1f881d53eab0c813fa21166c87a
    }
}
