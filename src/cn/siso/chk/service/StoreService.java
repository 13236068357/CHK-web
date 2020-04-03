package cn.siso.chk.service;

import cn.siso.chk.domain.Store;

import java.util.List;
import java.util.Map;

public interface StoreService {
    List<Store> findAll();

    void addStore(Store store);

    Map<String, Object> selectId(String id);

    void deleteStore(String id);
}
