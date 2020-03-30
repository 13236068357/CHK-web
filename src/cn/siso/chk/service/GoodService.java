package cn.siso.chk.service;

import cn.siso.chk.domain.Good;

import java.util.List;

public interface GoodService {

    List<Good> findAll();

    void addGood(Good good);

    void deleteGood(String id);
}
