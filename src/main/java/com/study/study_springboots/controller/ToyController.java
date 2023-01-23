package com.study.study_springboots.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.study.study_springboots.service.ToyService;


@Controller
@RequestMapping(value="/toy")
public class ToyController {
    @Autowired
    ToyService toyService;
    // dao와 연결한 service와 연결

    @RequestMapping(value={"/main"})
    public ModelAndView main(@RequestParam Map<String, Object> params, ModelAndView modelAndView){
        Object resultMap = toyService.getList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("toy/main");
        return modelAndView;
    }
    @RequestMapping(value={"/list"})
    public ModelAndView list(@RequestParam Map<String, Object> params, ModelAndView modelAndView){
        Object resultMap = toyService.getList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("toy/list");
        return modelAndView;
    }


    
}

