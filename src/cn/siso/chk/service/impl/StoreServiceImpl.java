package cn.siso.chk.service.impl;

import cn.siso.chk.dao.StoreDao;
import cn.siso.chk.dao.impl.StoreDaoImpl;
import cn.siso.chk.domain.Store;
import cn.siso.chk.service.StoreService;

import java.util.List;

public class StoreServiceImpl implements StoreService {

    StoreDao storeDao = new StoreDaoImpl();
    @Override
    public List<Store> findAll() {
        return storeDao.findAll();
    }
}
