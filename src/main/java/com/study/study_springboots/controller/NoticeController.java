package com.study.study_springboots.controller;

import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.study.study_springboots.service.DataInfors;

@Controller
@RequestMapping(value = "/notice") // 주소의 첫머리에 notice자동 작성
public class NoticeController {
    
    @RequestMapping(value = {"", "/list"}, method = RequestMethod.GET) 
    public ModelAndView list(ModelAndView modelAndView){
        modelAndView.setViewName("notice/list");

        // ModelAndView.addObject()
        return modelAndView;
    }    
    
    @RequestMapping(value ="/save", method = RequestMethod.POST)
    public ModelAndView save(@RequestParam HashMap<String, String> params, ModelAndView modelAndView) {
        modelAndView.setViewName("notice/view");

        modelAndView.addObject("params", params);
        return modelAndView;
    }


// list에서 uid에 값을 받아오고 
    @RequestMapping(value ="/edit/{action_uid}")
    public ModelAndView edit(@PathVariable String action_uid, ModelAndView modelAndView){
        DataInfors dataInfors = new DataInfors();
        //??  map을 만들어서 func사용해 map에 추가해두고 사용하는건가..?
        HashMap hashmap = dataInfors.getDatabyUid(action_uid);
        modelAndView.addObject("action_uid" , hashmap);
        modelAndView.setViewName("notice/edit");
        return modelAndView;
    }


    @RequestMapping(value ="/view")
    public ModelAndView view(ModelAndView modelAndView){
        modelAndView.setViewName("notice/view");

        // ModelAndView.addObject()
        return modelAndView;
    }
    



}
