package cn.siso.chk.dao;

import cn.siso.chk.domain.Store;

import java.util.List;
import java.util.Map;

public interface StoreDao {
    List<Store> findAll();

    void addStore(Store store);

    Map<String, Object> selectId(int id);

    void deleteStore(int id);

}
