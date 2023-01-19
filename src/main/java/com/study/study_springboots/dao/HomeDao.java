package com.study.study_springboots.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;


// DB와의 연결고리 @Repository
// @Component까지 입력하면  beans에 등록됨,.
@Repository
@Component
public class HomeDao {
    @Autowired

    private SqlSessionTemplate sqlSessionTemplate;

    // SqlSessionTemplate api 검색해보기
//   SqlSessionTemplate은 mybatis에서 만든 것. 이것을 사용하려고  Autowired를 사용한 것.
 

    public Object getList() {
        String statement = "Home.selectFromANSWERSByQUESTIONS_UID";
        Map parameter = new HashMap();
        parameter.put("QUESTION_UID","Q2");
        Object resultset = sqlSessionTemplate.selectList(statement, parameter);
        // Object는 리턴받는 데이터 타입을 명확하게 설정하지 않기 위해
        return resultset;
    } 

}

// mybatis는 sql문을 사용하는 것을 편하게 하기 위한 framework
// 들어오는 파라미터의 모양과 뱉어주는 result의 모양이 명확하지 않기 때문에 들어오는 파라미터와 나가는 파라미터의 모양을 지정(parameterType, resultType)
// 자바가 호출할 수 있는건 펑션이어야 하고 이를 위해 펑션과 xml을 연결해주기 위한 클래스로 sqlSessionTemplate사용
// sqlSesstionTemplate는 

