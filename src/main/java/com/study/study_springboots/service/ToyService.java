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
    
    public Object delete(Object dataMap){
        // sqlMapId를 사용하기 위해 매퍼 설정
        String sqlMapId = "Toy.deleteByUID";
        // DELETE FUNC사용을 위한 DAO설정
        Object result = toyDao.delete(sqlMapId, dataMap);
        return result;
    }
    
    
    public Object insert(Object dataMap){
        String sqlMapId = "Toy.insertWithUID";
        Object result = toyDao.insert(sqlMapId, dataMap);
        return result;
    }

    public Object update(Object dataMap){
        String sqlMapId = "Toy.updateByUID";
        Object result = toyDao.update(sqlMapId, dataMap);
        return result;
    }

    // delete하고 list를 뱉어내는 func   
    public Object deleteAndGetList(Object dataMap){
        Object result = this.delete(dataMap);
        result = this.getList(dataMap);
        return result;
        // delete를 하고 나서 list를 리턴해주는 일.  이게 service의 역할
        // 컨트롤러에선 이 func만 호출하면 된다.
    }

    public Object insertAndGetList(Object dataMap){
        Object result = this.insert(dataMap);
        result = this.getList(dataMap);
        return result;
        // insert를 하고 나서 list를 리턴해주는 일. 
    }

    public Object updateAndGetList(Object dataMap){
        Object result = this.update(dataMap);
        result = this.getList(dataMap);
        return result;
    }
}
