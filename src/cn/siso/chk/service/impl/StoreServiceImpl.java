package cn.siso.chk.service.impl;

import cn.siso.chk.dao.StoreDao;
import cn.siso.chk.dao.impl.StoreDaoImpl;
import cn.siso.chk.domain.Store;
import cn.siso.chk.service.StoreService;

import java.util.List;
<<<<<<< HEAD
import java.util.Map;
=======
>>>>>>> 675324a76923d1f881d53eab0c813fa21166c87a

public class StoreServiceImpl implements StoreService {

    StoreDao storeDao = new StoreDaoImpl();
<<<<<<< HEAD

=======
>>>>>>> 675324a76923d1f881d53eab0c813fa21166c87a
    @Override
    public List<Store> findAll() {
        return storeDao.findAll();
    }
<<<<<<< HEAD

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
=======
>>>>>>> 675324a76923d1f881d53eab0c813fa21166c87a
}
