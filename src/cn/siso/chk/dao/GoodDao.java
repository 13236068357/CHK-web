package cn.siso.chk.dao;

<<<<<<< HEAD
import cn.siso.chk.domain.Admin;
import cn.siso.chk.domain.Good;
import cn.siso.chk.domain.User;
=======
import cn.siso.chk.domain.Good;
>>>>>>> 675324a76923d1f881d53eab0c813fa21166c87a

import java.util.List;
import java.util.Map;

public interface GoodDao {

    List<Good> findAll();

<<<<<<< HEAD
    void addGood(Good good, String userId);
=======
    void addGood(Good good);
>>>>>>> 675324a76923d1f881d53eab0c813fa21166c87a

    void updateGood(Good good);

    void deleteGood(int id);

    Map<String, Object> selectId(int id);

}
