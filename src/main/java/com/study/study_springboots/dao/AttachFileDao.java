package com.study.study_springboots.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

// @Repository
@Component
public class AttachFileDao {
    @Autowired  //mapper와 연결할 준비가 됨.
    private SqlSessionTemplate sqlSessionTemplate;

    public Object getList(String sqlMapId, Object dateMap){
        Object result = sqlSessionTemplate.selectList(sqlMapId, dateMap);
        return result;
    }

    // 리스트로 리턴할 때는 selectList를 쓰지만 하나만 리턴할대는
    // selectOne를 사용
    public Object getOne(String sqlMapId, Object dataMap){
        Object result = sqlSessionTemplate.selectOne(sqlMapId, dataMap);
        return result;
    }

    public Object update(String sqlMapId, Object dataMap){
        Object result = sqlSessionTemplate.update(sqlMapId, dataMap);
        return result;
    }

    public Object delete(String sqlMapId, Object dataMap){
        Object result = sqlSessionTemplate.delete(sqlMapId, dataMap);
        return result;
        // 멀티 딜리트도 이거 그대로 사용해도 됨.  서비스만 만들어주면 된다.
    } 

    public Object insert(String sqlMapId, Object dataMap){
        Object result = sqlSessionTemplate.insert(sqlMapId, dataMap);
        return result;
    }
   
}
