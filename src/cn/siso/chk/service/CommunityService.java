package cn.siso.chk.service;

import cn.siso.chk.domain.Community;

import java.util.List;
import java.util.Map;

public interface CommunityService {

    List<Community> findAll();

    void addCommunity(Community community, String userId);

    Map<String, Object> selectId(String id);

    void deleteCommunity(String id);
}
