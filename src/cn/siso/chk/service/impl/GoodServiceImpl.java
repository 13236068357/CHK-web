package cn.siso.chk.service.impl;

import cn.siso.chk.dao.GoodDao;
import cn.siso.chk.dao.impl.GoodDaoImpl;
<<<<<<< HEAD
import cn.siso.chk.domain.Admin;
=======
>>>>>>> 675324a76923d1f881d53eab0c813fa21166c87a
import cn.siso.chk.domain.Good;
import cn.siso.chk.service.GoodService;

import java.util.List;
import java.util.Map;

public class GoodServiceImpl implements GoodService {
    GoodDao goodDao = new GoodDaoImpl();

    @Override
    public List<Good> findAll() {
        //调用dao完成查询
        return goodDao.findAll();
    }

<<<<<<< HEAD
    public void addGood(Good good, String userId) {
        goodDao.addGood(good,userId);
=======
    public void addGood(Good good) {
        goodDao.addGood(good);
>>>>>>> 675324a76923d1f881d53eab0c813fa21166c87a
    }

    @Override
    public void updateGood(Good good) {
        goodDao.updateGood(good);
    }

    @Override
    public void deleteGood(String id) {
        goodDao.deleteGood(Integer.parseInt(id));
    }

    @Override
    public Map<String, Object> selectId(String id) {
        return goodDao.selectId(Integer.parseInt(id));
    }

}
