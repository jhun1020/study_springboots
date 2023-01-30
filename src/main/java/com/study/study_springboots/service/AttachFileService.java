package com.study.study_springboots.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.study_springboots.dao.AttachFileDao;

@Service
public class AttachFileService {
    @Autowired
    AttachFileDao attachFileDao;

    public Object getList(Object dataMap){
        String sqlMapId = "AttachFile.selectListByUID"; //mapper의 {namespace}.{id}
        Object result = attachFileDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object getOne(Object dataMap){
        String sqlMapId = "AttachFile.selectByUID";
        Object result = attachFileDao.getOne(sqlMapId, dataMap);
        return result;
    }

    public Object update(Object dataMap){
        String sqlMapId = "AttachFile.updateByUID";
        Object result = attachFileDao.update(sqlMapId, dataMap);
        return result;
    }

    public Object delete(Object dataMap){
        String sqlMapId = "AttachFile.deleteByUID";
        Object result = attachFileDao.delete(sqlMapId, dataMap);
        return result;
    }

    public Object insert(Object dataMap){
        String sqlMapId = "AttachFile.insertWithUID";
        Object result = attachFileDao.insert(sqlMapId, dataMap);
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

    public Object deleteMulti(Object dataMap){
        String sqlMapId = "AttachFile.deleteMultiByUIDs";
        Object result = attachFileDao.delete(sqlMapId, dataMap);
        return result;
    }

    public Object insertWithFilesAndGetList(Object dataMap){
        // insert files 
        Object result = this.insert(dataMap);
        result = this.getList(dataMap);
        return result;
    }

    public Object insertMulti(Object dataMap){
        String sqlMapId = "AttachFile.insertMulti";
        Object result = attachFileDao.insert(sqlMapId, dataMap);
        return result;
    }
}
