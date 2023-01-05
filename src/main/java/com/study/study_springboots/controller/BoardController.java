package com.study.study_springboots.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController {
    
    @RequestMapping(value="/board/form", method = RequestMethod.GET)
    public String form(){
        return "/WEB-INF/views/board/form.jsp";
    }
// url이 똑같아도 리퀘스트 던지는 메소드에 따라 func의 분기가 나타날 수 있음.
    @RequestMapping(value="/board/form", method = RequestMethod.POST)
    public String formPost(){
        //대개 insert biz가 여기
        return "/WEB-INF/views/main.jsp";
    }
}
