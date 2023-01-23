package com.study.study_springboots.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.RequestMethod;

import com.study.study_springboots.service.ToyService;


@Controller
@RequestMapping(value="/toy")
public class ToyController {
    @Autowired
    ToyService toyService;
    // dao와 연결한 service와 연결

    //연습용
    // @RequestMapping(value={"/main"})
    // public ModelAndView main(@RequestParam Map<String, Object> params, ModelAndView modelAndView){
    //     Object resultMap = toyService.getList(params);
    //     modelAndView.addObject("resultMap", resultMap);
    //     modelAndView.setViewName("toy/main");
    //     return modelAndView;
    // }
    @RequestMapping(value={"/list"})
    public ModelAndView list(@RequestParam Map<String, Object> params, ModelAndView modelAndView){
        Object resultMap = toyService.getList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("toy/list");
        return modelAndView;
    }

    @RequestMapping(value="/delete/{uniqueId}", method = RequestMethod.POST)  
    public ModelAndView delete(@RequestParam Map<String, Object> params, @PathVariable String uniqueId, ModelAndView modelAndView){
        // POST로 받아온 값을 params에 user_uid로 지정해 put하고
        params.put("USER_UID", uniqueId); 
        // Object resultMap = ToyService.deleteAndGetList(params);
        Object resultMap = toyService.deleteAndGetList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("toy/list"); //딜리트 된 후에 list로 가도록
        return modelAndView; 
    }   

    @RequestMapping(value={"/form"})
    public ModelAndView form(@RequestParam Map<String, Object> params, ModelAndView modelAndView){
  
        modelAndView.setViewName("toy/insert");
        return modelAndView;
    }

    @RequestMapping(value={"/insert"})
    public ModelAndView insert(@RequestParam Map<String, Object> params, ModelAndView modelAndView){
        Object resultMap = toyService.insert(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("toy/insert");
        return modelAndView;
    }

}

