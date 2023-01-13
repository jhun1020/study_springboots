package com.study.study_springboots.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.study.study_springboots.bean.BoardBean;
import com.study.study_springboots.service.DataInfors;

@Controller
@RequestMapping(value = "/board")
public class BoardController {
    
        // /WEB-INF/views/ 이부분과 .jsp 부분이 항상 일치함
        // 이런 부분을 미리 세팅 = ViewResolver가 하는 일.
        //  ==> application.prooerties 확인해보면 거기에 적었음
        // 이렇게 환경을 조정하면 서버를 껐다 켜는데 좋음.
   

//     @RequestMapping(value="/board/form", method = RequestMethod.GET)
//     public String form(){
//         return "/WEB-INF/views/board/form.jsp";
//     }
// // url이 똑같아도 리퀘스트 던지는 메소드에 따라 func의 분기가 나타날 수 있음.
//     @RequestMapping(value="/board/form", method = RequestMethod.POST)
//     public String formPost(){
//         //대개 insert biz가 여기
//         return "/WEB-INF/views/board/form.jsp";
//     }
//  ---------------------- form -----------------------
    @RequestMapping(value = "/form", method = RequestMethod.GET)
    public ModelAndView formGet(ModelAndView modelAndView) {
        modelAndView.setViewName("board/form");

        return modelAndView;
    }   
    @RequestMapping(value = "/form", method = RequestMethod.POST)
    public ModelAndView formPost(ModelAndView modelAndView) {
        modelAndView.setViewName("board/form");

        return modelAndView;
    }

    
    // // get, post 명시 안하면 둘 다 
    // @RequestMapping(value= {"/board", "/board/list"})
    // public String listGet(){
    //     return "/WEB-INF/views/board/list.jsp";
    // }
    // ------------------- list ---------------------------
    @RequestMapping(value = {"", "/list"}, method = RequestMethod.GET)
    public ModelAndView listGet(ModelAndView modelAndView){
        modelAndView.setViewName("board/list");

        return modelAndView;
    }   
    @RequestMapping(value = {"", "/list"}, method = RequestMethod.POST)
    public ModelAndView listPost(ModelAndView modelAndView){
        modelAndView.setViewName("board/list");

        return modelAndView;
    }

// ------------------------- view -----------------------
    // @RequestMapping(value="/board/view", method = RequestMethod.GET)
    // public String viewGet(){
    //     return "/WEB-INF/views/board/view.jsp";
    // }
    // @RequestMapping(value="/board/view", method = RequestMethod.POST)
    // public String viewPost(){
    //     return "/WEB-INF/views/board/view.jsp";
    // }
        @RequestMapping(value = "/view", method = RequestMethod.GET)
        public ModelAndView viewGet(@RequestParam String title, ModelAndView modelAndView){
            
            modelAndView.setViewName("board/view");

            DataInfors dataInfors = new DataInfors();
            // 새로 만든 arraylist를 변수에 담아
            ArrayList<BoardBean> boardList = dataInfors.getDataListWithBoardBeadMyself();
            // addObject로 보내줌

           
            modelAndView.addObject("boardList", boardList );
            modelAndView.addObject("paramTitle", title );
            


            return modelAndView;
        }
        @RequestMapping(value = "/view", method = RequestMethod.POST)
        public ModelAndView viewPost(){
            ModelAndView modelAndView = new ModelAndView();
            modelAndView.setViewName("board/view");

            return modelAndView;
        }

// ----------------------------------edit-----------------------------
    // @RequestMapping(value="/board/edit", method = RequestMethod.GET)
    // public String editGet(){
    //     return "/WEB-INF/views/board/edit.jsp";
    // }
    // @RequestMapping(value="/board/edit", method = RequestMethod.POST)
    // public String editPost(){
    //     return "/WEB-INF/views/board/edit.jsp";
    // }

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public ModelAndView editGet(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("board/edit");

        return modelAndView;
    }    
    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public ModelAndView editPost(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("board/edit");

        return modelAndView;
    }


}
