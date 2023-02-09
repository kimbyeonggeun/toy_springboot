package com.study.toy_springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.toy_springboot.dao.MemberDao;

@Service
public class MemberService {
    @Autowired
    MemberDao memberDao;

    public Object getList(Object dataMap) {
        String sqlMapId = "Member.selectMember";
        Object result = memberDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object delete(Object dataMap) {
        String sqlMapId = "Member.deleteByUID";
        Object result = memberDao.delete(sqlMapId, dataMap);
        return result;
    }

    public Object deleteAndGetList(Object dataMap) {
        Object result = this.delete(dataMap);
        result = this.getList(dataMap);
        return result;
    }
}
