package dao;

import domain.User;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import utils.JDBCUtil;

/**
 * 对数据库中user表的操作
 */
public class UserDao {

    //声明JDBCTemplate成员变量来共用
    private JdbcTemplate jdbcTemplate = new JdbcTemplate(JDBCUtil.getDataSource());

    /**
     * 登录方法
     *
     * @param loginUser 只包含用户名和密码
     * @return 包含user全部属性
     */
    public User login(User loginUser) {
        try {
            String sql = "select * from adm where username =? and password =?";
            User user = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<User>(User.class), loginUser.getUsername(), loginUser.getPassword());
            return user;
        } catch (DataAccessException e) {
            e.printStackTrace();
            return null;
        }
    }
}
