package cn.siso.chk.service.impl;

import cn.siso.chk.dao.CommunityDao;
import cn.siso.chk.dao.impl.CommunityDaoImpl;
import cn.siso.chk.domain.Community;
import cn.siso.chk.service.CommunityService;

import java.util.List;
import java.util.Map;

public class CommunityServiceImpl implements CommunityService {

    CommunityDao communityDao = new CommunityDaoImpl();

    @Override
    public List<Community> findAll() {
        return communityDao.findAll();
    }

    @Override
    public void addCommunity(Community community, String userId) {
        communityDao.addCommunity(community, userId);
    }

    @Override
    public Map<String, Object> selectId(String id) {
        return communityDao.selectId(Integer.parseInt(id));
    }

    @Override
    public void deleteCommunity(String id) {
        communityDao.deleteCommunity(Integer.parseInt(id));
    }
}
