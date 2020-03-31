package cn.siso.chk.service.impl;

import cn.siso.chk.dao.UserDao;
import cn.siso.chk.dao.impl.UserDaoImpl;
import cn.siso.chk.domain.Admin;
import cn.siso.chk.service.UserService;

public class UserServiceImpl implements UserService {

    UserDao userDao = new UserDaoImpl();

    @Override
    public Admin login(Admin loginAdmin) {
        return userDao.login(loginAdmin);
    }
}
