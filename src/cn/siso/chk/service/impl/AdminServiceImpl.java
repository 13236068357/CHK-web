package cn.siso.chk.service.impl;

import cn.siso.chk.dao.AdminDao;
import cn.siso.chk.dao.impl.AdminDaoImpl;
import cn.siso.chk.dao.impl.UserDaoImpl;
import cn.siso.chk.domain.Admin;
import cn.siso.chk.service.AdminService;

public class AdminServiceImpl implements AdminService {

    AdminDao adminDao = new AdminDaoImpl();

    @Override
    public Admin login(Admin loginAdmin) {
        return adminDao.login(loginAdmin);
    }
}
