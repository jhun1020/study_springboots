package com.study.study_springboots.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component //bean에 등록
public class ToyDao {
    
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public Object getList(String sqlMapId, Object dateMap){
        Object result = sqlSessionTemplate.selectList(sqlMapId, dateMap);
        return result;
    }
}
