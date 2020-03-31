package cn.siso.chk.dao;

import cn.siso.chk.domain.Admin;

public interface UserDao {

    Admin login(Admin loginAdmin);
}
