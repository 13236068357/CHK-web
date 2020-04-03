package cn.siso.chk.dao;

import cn.siso.chk.domain.Good;

import java.util.List;
import java.util.Map;

public interface GoodDao {

    List<Good> findAll();

    void addGood(Good good, String userId);

    void updateGood(Good good);

    void deleteGood(int id);

    Map<String, Object> selectId(int id);

}
