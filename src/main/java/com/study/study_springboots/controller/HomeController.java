package com.study.study_springboots.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
    // 웹 캡션을 클래스가 아닌 func에도 씌워줄 수 있음.
  
    @RequestMapping(value= "/homejsp")
    // 스프링이 extends도 알아서 해줌 안해도 됨.  대신에 @Controller 
    // 매핑과 컨트롤러 잊지마
    public String homejsp(){
        int i = 0;
        // 리턴에 아무것도 없이 스트링만 입력하면 경로로 인식 
            // 리턴이 없을 때는 에러페이지 발생  => 리턴 추가
        // 리턴이니까 보이드가 아니게 되어서 자료형 void -> string 로 변경
        return "/home";

    }

    @RequestMapping(value= "/homehtml")

    public String homehtml(){
        int i = 0;
        return "/home.html";
        // 404 에러페이지 발생 => html은 그 파일이 해당 경로에 있어도 해석하지 않음
        // html사용하고 싶다면 resources의  static에 넣어서 사용하면 되지만 그런 경우가 거의 없음.
        
    }
    
    
    @RequestMapping(value= "/home")
    public void home(){
        int i = 0;
        // 이상태에선 에러가 날거임/
        // Check your ViewResolver setup!   jsp가 없어서 그렇다 함
    }


    // 매핑은 하나가 아닌 여러개도 가능
    // 아무 것도 안적으면 root
    @RequestMapping(value = {"", "/", "/main"})    // http://localhost:8080/homejsp
    public String main(){
        int i = 0;
        return "main";
    }

    @RequestMapping(value= "/jstlformats")
    public String jstlformats(){
        int i = 0;
        return "jstl_formats";
    }

}
