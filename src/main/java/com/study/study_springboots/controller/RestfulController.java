package com.study.study_springboots.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.CrossOrigin;
// import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.beans.factory.annotation.Autowired;

import com.study.study_springboots.service.CommonCodeOurService;

@RestController
@CrossOrigin
public class RestfulController {
   
    @Autowired
    CommonCodeOurService commonCodeOurService;

// v1처럼 버전을 써줘야한다
    @RequestMapping(value="/api/v1/hellowWorld", method = RequestMethod.GET)
    public String hellowWorld(){
        return "hellow world !";
    }

    // params - title:"learn ajax!", description:"we learn wuth ajax"
    @RequestMapping(value="/api/v1/requestParams", method = RequestMethod.GET)
    public Map requestParams(@RequestParam Map<String, Object> params){
        Map<String, Object> result = new HashMap<String, Object>();
        result.putAll(params);
        result.put("id", "jhun");
        return result;
    }


    
    // currentPage = 1
    @RequestMapping(value="/api/v1/requestParamsWithDB", method = RequestMethod.POST)
    public Map requestParamsWithDB(@RequestParam Map<String, Object> params){
        params.put("currentPage", Integer.parseInt((String)params.get("currentPage")));
        params.put("pageScale", 10);

        Map<String, Object> resultMap = new HashMap<>();
        resultMap = (Map<String, Object>) commonCodeOurService.getListWithPagination(params);

        return resultMap;
        
    }

    
}
