package cn.siso.chk.service;

<<<<<<< HEAD
import cn.siso.chk.domain.Admin;
=======
>>>>>>> 675324a76923d1f881d53eab0c813fa21166c87a
import cn.siso.chk.domain.Good;

import java.util.List;
import java.util.Map;

public interface GoodService {

    List<Good> findAll();

<<<<<<< HEAD
    void addGood(Good good, String userId);
=======
    void addGood(Good good);
>>>>>>> 675324a76923d1f881d53eab0c813fa21166c87a

    void updateGood(Good good);

    void deleteGood(String id);

    Map<String, Object> selectId(String id);
}
