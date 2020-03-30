package cn.siso.chk.service.impl;

import cn.siso.chk.dao.UserDao;
import cn.siso.chk.dao.impl.UserDaoImpl;
import cn.siso.chk.domain.User;
import cn.siso.chk.service.UserService;

public class UserServiceImpl implements UserService {

    UserDao userDao = new UserDaoImpl();

    @Override
    public User login(User loginUser) {
        return userDao.login(loginUser);
    }
}
