package cn.siso.chk.service.impl;

import cn.siso.chk.dao.StoreDao;
import cn.siso.chk.dao.impl.StoreDaoImpl;
import cn.siso.chk.domain.Store;
import cn.siso.chk.service.StoreService;

import java.util.List;
import java.util.Map;

public class StoreServiceImpl implements StoreService {

    StoreDao storeDao = new StoreDaoImpl();

    @Override
    public List<Store> findAll() {
        return storeDao.findAll();
    }

    @Override
    public void addStore(Store store) {
        storeDao.addStore(store);
    }

    @Override
    public Map<String, Object> selectId(String id) {
        return storeDao.selectId(Integer.parseInt(id));
    }

    @Override
    public void deleteStore(String id) {
        storeDao.deleteStore(Integer.parseInt(id));
    }
}
