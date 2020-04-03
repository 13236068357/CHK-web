package cn.siso.chk.dao;

import cn.siso.chk.domain.Admin;
import cn.siso.chk.domain.User;

import java.util.List;

public interface UserDao {

    List<User> findAll();
}
