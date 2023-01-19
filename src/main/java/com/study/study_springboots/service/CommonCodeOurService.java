package com.study.study_springboots.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.study_springboots.dao.CommonCodeOurDao;

@Service
public class CommonCodeOurService {
    @Autowired
    CommonCodeOurDao commonCodeOurDao;

    public Object getList(Object dataMap){
        String sqlMapId = "CommonCodeOur.selectListByUID"; //mapper의 {namespace}.{id}
        Object result = commonCodeOurDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object getOne(Object dataMap){
        String sqlMapId = "CommonCodeOur.selectByUID";
        Object result = commonCodeOurDao.getOne(sqlMapId, dataMap);
        return result;
    }

    public Object update(Object dataMap){
        String sqlMapId = "CommonCodeOur.updateByUID";
        Object result = commonCodeOurDao.update(sqlMapId, dataMap);
        return result;
    }

    public Object delete(Object dataMap){
        String sqlMapId = "CommonCodeOur.deleteByUID";
        Object result = commonCodeOurDao.delete(sqlMapId, dataMap);
        return result;
    }

    public Object insert(Object dataMap){
        String sqlMapId = "CommonCodeOur.insertWithUID";
        Object result = commonCodeOurDao.insert(sqlMapId, dataMap);
        return result;
    }

    // delete를 하면서 list를 뱉어내는 func
    public Object deleteAndGetList(Object dataMap){
        Object result = this.delete(dataMap);
        result = this.getList(dataMap);
        return result;
        // delete를 하고 나서 list를 리턴해주는 일.  이게 service의 역할
        // 컨트롤러에선 이 func만 호출하면 된다.
    }

    public Object updateAndGetList(Object dataMap){
        Object result = this.update(dataMap);
        result = this.getList(dataMap);
        return result;
    }

    public Object insertAndGetList(Object dataMap){
        Object result = this.insert(dataMap);
        result = this.getList(dataMap);
        return result;
    }
}
