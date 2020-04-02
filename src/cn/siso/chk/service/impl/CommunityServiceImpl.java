package cn.siso.chk.service.impl;

import cn.siso.chk.dao.CommunityDao;
import cn.siso.chk.dao.impl.CommunityDaoImpl;
import cn.siso.chk.domain.Community;
import cn.siso.chk.service.CommunityService;

import java.util.List;

public class CommunityServiceImpl implements CommunityService {

    CommunityDao communityDao = new CommunityDaoImpl();

    @Override
    public List<Community> findAll() {
        return communityDao.findAll();
    }
}
