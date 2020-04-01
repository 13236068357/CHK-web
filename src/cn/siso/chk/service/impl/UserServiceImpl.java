package cn.siso.chk.service.impl;

<<<<<<< HEAD
import cn.siso.chk.dao.AdminDao;
import cn.siso.chk.dao.UserDao;
import cn.siso.chk.dao.impl.UserDaoImpl;
import cn.siso.chk.domain.Admin;
import cn.siso.chk.domain.User;
import cn.siso.chk.service.AdminService;
import cn.siso.chk.service.UserService;

import java.util.List;

public class UserServiceImpl implements UserService {

    UserDao userDao = new UserDaoImpl();
    @Override
    public List<User> findAll() {
        return userDao.findAll();
=======
import cn.siso.chk.dao.UserDao;
import cn.siso.chk.dao.impl.UserDaoImpl;
import cn.siso.chk.domain.Admin;
import cn.siso.chk.service.UserService;

public class UserServiceImpl implements UserService {

    UserDao userDao = new UserDaoImpl();

    @Override
    public Admin login(Admin loginAdmin) {
        return userDao.login(loginAdmin);
>>>>>>> 2badce7968e9096ccd3afadadbcc702d1af92b3a
    }
}
