package com.study.study_springboots.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.study.study_springboots.bean.BoardBean;
import com.study.study_springboots.service.DataInfors;

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

        DataInfors dataInfors = new DataInfors();
        ArrayList<BoardBean> boardList = dataInfors.getDataListWithBoardBean();
        modelAndView.addObject("boardList" ,boardList);
        return modelAndView;
        // 이제 기본틀은 모델앤뷰로 사용할 것
    }
    // @RequestMapping(value = "/view", method = RequestMethod.GET)  
    // public String view() {
    //     return "board_our/view";
    // }

    // 이렇게 넣어주면 new와 똑같음
        //원상태
    // @RequestMapping(value = "/view", method = RequestMethod.GET)  
    // public ModelAndView view(@RequestParam String uid, ModelAndView modelAndView) {
        // path로 받는 법
    @RequestMapping(value = "/view/{action_uid}", method = RequestMethod.GET) 
    // public ModelAndView view(ModelAndView modelAndView) {
        public ModelAndView view(@PathVariable String action_uid, ModelAndView modelAndView) {
        DataInfors dataInfors = new DataInfors();
        BoardBean boardBean = dataInfors.getDataWithBoardBean();
        // breakpoint를 return에 걸고 debug에서 값 확인   여기까진 model에 값 들어가지 않음
        modelAndView.addObject("boardBean" ,boardBean);

        modelAndView.setViewName("board_our/view");
        return modelAndView;

        }
    @RequestMapping(value = "/form", method = RequestMethod.GET)    
    public ModelAndView form(ModelAndView modelAndView) {
        modelAndView.setViewName("board_our/list");
        return modelAndView;
    }
    @RequestMapping(value = "/save", method = RequestMethod.POST) 
        // 원상태 
    // public ModelAndView save(ModelAndView modelAndView) {
        // 한번에 여러개의 파라미터를 map형태로 받아오는 방법
    // public ModelAndView save(@RequestParam HashMap<String, String> params, ModelAndView modelAndView) {
        // bean 사용해서 받아오는 법
    public ModelAndView save(BoardBean boardBean, ModelAndView modelAndView) {
        // insert biz
        modelAndView.setViewName("board_our/list");
        return modelAndView;
    }
}