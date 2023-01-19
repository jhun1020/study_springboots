package com.study.study_springboots.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.study.study_springboots.service.CommonCodeOurService;

@Controller
@RequestMapping(value="/commonCodeOur")
public class CommonCodeOurController {
    @Autowired
    CommonCodeOurService commonCodeOurService;

    @RequestMapping(value={"/update"}, method = RequestMethod.POST)
    public ModelAndView update(@RequestParam Map<String, Object> params, ModelAndView modelAndView){
        Object resultMap = commonCodeOurService.updateAndGetList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("commonCode_our/list");  // 업데이트가 되면 list로 이동
        return modelAndView; //디버깅모드에서 보면 resultMap에 key value형식으로 값들이 들어와있는것을 확인

    }

    @RequestMapping(value={"/list", "/", ""}, method = RequestMethod.GET)
    public ModelAndView list(@RequestParam Map<String, Object> params, ModelAndView modelAndView){
        Object resultMap = commonCodeOurService.getList(params);  
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("commonCode_our/list");
        return modelAndView; //디버깅모드에서 보면 resultMap에 key value형식으로 값들이 들어와있는것을 확인
    }

    @RequestMapping(value="/edit/{uniqueId}", method = RequestMethod.GET)  // edit는 update를 위한 화면
    public ModelAndView edit(@RequestParam Map<String, Object> params, @PathVariable String uniqueId, ModelAndView modelAndView){
        //@PathVariable String uniqueId   path value기 때문에 @어노테이션 넣어주고 list에서 주소창에 넣어준 값을 받아와서 사용할예쩡
        params.put("COMMON_CODE_ID", uniqueId);  //받은 uniqueId를 params에 넣어주고 
        Object resultMap = commonCodeOurService.getOne(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("commonCode_our/edit");
        return modelAndView; 
    }   
    
    @RequestMapping(value="/delete/{uniqueId}", method = RequestMethod.POST)  
    public ModelAndView delete(@RequestParam Map<String, Object> params, @PathVariable String uniqueId, ModelAndView modelAndView){
        params.put("COMMON_CODE_ID", uniqueId); 
        Object resultMap = commonCodeOurService.deleteAndGetList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("commonCode_our/list"); //딜리트 된 후에 list로 가도록
        return modelAndView; 
    }   

    @RequestMapping(value="/form", method = RequestMethod.GET)  // edit는 update를 위한 화면
    public ModelAndView form(@RequestParam Map<String, Object> params, ModelAndView modelAndView){
       
        modelAndView.setViewName("commonCode_our/edit");
        return modelAndView; 
    }   

    @RequestMapping(value={"/insert"}, method = RequestMethod.POST)
    public ModelAndView insert(@RequestParam Map<String, Object> params, ModelAndView modelAndView){
        Object resultMap = commonCodeOurService.insertAndGetList(params);
        modelAndView.addObject(resultMap);
        modelAndView.setViewName("commonCode_our/list");  
        return modelAndView; 

    }

}

