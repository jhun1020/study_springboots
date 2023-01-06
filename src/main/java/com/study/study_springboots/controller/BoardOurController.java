package com.study.study_springboots.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

// 불편함
//  1. 리턴이 너무 반복됨.


@Controller
@RequestMapping(value = "/board_our")
public class BoardOurController {
    @RequestMapping(value = "/edit", method = RequestMethod.POST)  
    public String edit() {
        return "board_our/edit";
    }
    //   1차!!
    // @RequestMapping(value = {"/", "/list"}, method = RequestMethod.GET)  
    // public String list() {
    //     return "board_our/list";
    // }   이게 모델엔뷰 사용해서 밑의 것으로 변화

    //   2차!!!
    // @RequestMapping(value = {"/", "/list"}, method = RequestMethod.GET)  
    // public ModelAndView list() {
    //     ModelAndView modelAndView = new ModelAndView();
    //     modelAndView.setViewName("board_our/list");
    //     return modelAndView;
    //     // 이제 기본틀은 모델앤뷰로 사용할 것
    // }

    //  !! 3차
    @RequestMapping(value = {"/", "/list"}, method = RequestMethod.GET)  
    public ModelAndView list() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("board_our/list");
        modelAndView.addObject("firstString", "firstValue");
        // request.setAttirbute("ket", value)랑 똑같은거같다.
        return modelAndView;
        // 이제 기본틀은 모델앤뷰로 사용할 것
    }
    // @RequestMapping(value = "/view", method = RequestMethod.GET)  
    // public String view() {
    //     return "board_our/view";
    // }

    // 이렇게 넣어주면 new와 똑같음
    @RequestMapping(value = "/view", method = RequestMethod.GET)  
    public ModelAndView view(ModelAndView modelAndView) {
        modelAndView.setViewName("board_our/view");
        return modelAndView;

    }
    @RequestMapping(value = "/form", method = RequestMethod.GET)    
    public ModelAndView form(ModelAndView modelAndView) {
        modelAndView.setViewName("board_our/list");
        return modelAndView;
    }
    @RequestMapping(value = "/save", method = RequestMethod.POST)    
    public ModelAndView save(ModelAndView modelAndView) {
        // insert biz
        modelAndView.setViewName("board_our/list");
        return modelAndView;
    }
}