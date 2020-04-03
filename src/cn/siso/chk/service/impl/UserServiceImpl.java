package cn.siso.chk.service.impl;

<<<<<<< HEAD
=======
<<<<<<< HEAD
import cn.siso.chk.dao.AdminDao;
>>>>>>> 675324a76923d1f881d53eab0c813fa21166c87a
import cn.siso.chk.dao.UserDao;
import cn.siso.chk.dao.impl.UserDaoImpl;
import cn.siso.chk.domain.Admin;
import cn.siso.chk.domain.User;
<<<<<<< HEAD
=======
import cn.siso.chk.service.AdminService;
>>>>>>> 675324a76923d1f881d53eab0c813fa21166c87a
import cn.siso.chk.service.UserService;

import java.util.List;

public class UserServiceImpl implements UserService {

    UserDao userDao = new UserDaoImpl();
<<<<<<< HEAD

    @Override
    public List<User> findAll() {
        return userDao.findAll();
=======
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
>>>>>>> 675324a76923d1f881d53eab0c813fa21166c87a
    }
}
