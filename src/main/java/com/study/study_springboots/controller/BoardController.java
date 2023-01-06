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
        return "/WEB-INF/views/board/form.jsp";
    }
    
    // get, post 명시 안하면 둘 다 
    @RequestMapping(value= {"/board", "/board/list"})
    public String listGet(){
        return "/WEB-INF/views/board/list.jsp";
    }


    @RequestMapping(value="/board/view", method = RequestMethod.GET)
    public String viewGet(){
        return "/WEB-INF/views/board/view.jsp";
    }
    @RequestMapping(value="/board/view", method = RequestMethod.POST)
    public String viewPost(){
  
        return "/WEB-INF/views/board/view.jsp";
    }


    @RequestMapping(value="/board/edit", method = RequestMethod.GET)
    public String editGet(){
        return "/WEB-INF/views/board/edit.jsp";
    }
    @RequestMapping(value="/board/edit", method = RequestMethod.POST)
    public String editPost(){
        return "/WEB-INF/views/board/edit.jsp";
    }
}
