package cn.siso.chk.dao;

import cn.siso.chk.domain.Community;

import java.util.List;
import java.util.Map;

public interface CommunityDao {
    List<Community> findAll();

    void addCommunity(Community community,String userId);

    Map<String, Object>selectId(int id);

    void deleteCommunity(int id);
}
