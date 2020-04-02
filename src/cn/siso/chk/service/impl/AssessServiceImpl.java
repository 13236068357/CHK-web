package cn.siso.chk.service.impl;

import cn.siso.chk.dao.AssessDao;
import cn.siso.chk.dao.impl.AssessDaoImpl;
import cn.siso.chk.domain.Assess;
import cn.siso.chk.service.AssessService;

import java.util.List;

public class AssessServiceImpl implements AssessService {

    AssessDao assessDao = new AssessDaoImpl();
    @Override
    public List<Assess> findAll() {
        return assessDao.findAll();
    }
}
