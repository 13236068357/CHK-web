package cn.siso.chk.dao;

import cn.siso.chk.domain.User;

public interface UserDao {

    User login(User loginUser);
}
