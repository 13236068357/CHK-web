package cn.siso.chk.service.impl;

import cn.siso.chk.dao.GoodDao;
import cn.siso.chk.dao.impl.GoodDaoImpl;
import cn.siso.chk.domain.Good;
import cn.siso.chk.service.GoodService;

import java.util.List;

public class GoodServiceImpl implements GoodService {

    GoodDao goodDao = new GoodDaoImpl();

    @Override
    public List<Good> findAll() {
        //调用dao完成查询
        return goodDao.findAll();
    }
}
