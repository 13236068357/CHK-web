package cn.siso.chk.dao;

import cn.siso.chk.domain.Good;

import java.util.List;

public interface GoodDao {

    List<Good> findAll();

    void addGood(Good good);

    void deleteGood(int id);
}
