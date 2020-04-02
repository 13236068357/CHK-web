package cn.siso.chk.service;

import cn.siso.chk.domain.Admin;
import cn.siso.chk.domain.Good;

import java.util.List;
import java.util.Map;

public interface GoodService {

    List<Good> findAll();

    void addGood(Good good, String userId);

    void updateGood(Good good);

    void deleteGood(String id);

    Map<String, Object> selectId(String id);
}
