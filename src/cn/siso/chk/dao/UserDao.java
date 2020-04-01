package cn.siso.chk.dao;

import cn.siso.chk.domain.Admin;
<<<<<<< HEAD
import cn.siso.chk.domain.User;

import java.util.List;

public interface UserDao {

    List<User> findAll();
=======

public interface UserDao {

    Admin login(Admin loginAdmin);
>>>>>>> 2badce7968e9096ccd3afadadbcc702d1af92b3a
}
