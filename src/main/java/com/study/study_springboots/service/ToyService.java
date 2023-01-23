package com.study.study_springboots.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.study_springboots.dao.ToyDao;


@Service
public class ToyService {
    // DAO의 SQL문을 가져오는 역할
    @Autowired
    ToyDao toyDao;

    public Object getList(Object dataMap){
        String sqlMapId = "Toy.selectFromUserdataByUSER_UID";  //mapper의 {namespace}.{id}
        Object result = toyDao.getList(sqlMapId, dataMap);
        return result;
    }
    
}
