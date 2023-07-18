package com.project.project_nutrients.controller;

import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import java.util.UUID;


@Controller
@RequestMapping("/members")

public class MembersController {
//     @Autowired
//      MembersService membersService;

//     @PostMapping("/insertAndSelectSearch")
//     public ModelAndView insertAndSelectSearch(@RequestParam Map params, ModelAndView modelAndView) {
//         Object result = membersService.insertAndSelectSearch(params);
//         modelAndView.addObject("params", params);
//         modelAndView.addObject("result", result);
//         modelAndView.setViewName("/WEB-INF/views/example.jsp");
//         return modelAndView;
// }

    // main 화면에서 회원가입 버튼 누를 때 거쳐가는 controller임/ signup.jsp로 가기 위한 경로
    @GetMapping("/signupForm")
    public ModelAndView signupForm(@RequestParam Map params, ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/project/members/signup.jsp");
        return  modelAndView;
    }

    // main 화면에서 마이페이지 버튼 누를 때 거쳐가는 controller임/ mypage.jsp로 가기 위한 경로
    @GetMapping("/mypageForm")
    public ModelAndView mypageForm(@RequestParam Map params, ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/project/members/mypage.jsp");
        return  modelAndView;
    }

     // main 화면에서 로그인 버튼 누를 때 거쳐가는 controller임/ login.jsp로 가기 위한 경로
    @GetMapping("/loginForm")
    public ModelAndView loginForm(@RequestParam Map params, ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/project/members/login.jsp");
        return  modelAndView;
    }
   



    // administrator->memberslist.jsp
    @GetMapping("/memberslistForm")
    public ModelAndView memberslistForm(@RequestParam Map params, ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/project/members/memberslist.jsp");
        return  modelAndView;
        
    }
    //  memberslist.jsp 삭제 delete 추가하기   
    //  왠지 회원탈퇴? 악플삭제? admin이 관리
    //  @PostMapping("/deleteAndSelectSearch/{UNIQUE_ID}")
    //  public ModelAndView deleteAndSelectSearch(@PathVariable String UNIQUE_ID
    //                      , @RequestParam Map params, ModelAndView modelAndView) {
    //      Object result = mainService.deleteAndSelectSearch(UNIQUE_ID, params);
    //      modelAndView.addObject("params", params);
    //      modelAndView.addObject("result", result);
 
    //      modelAndView.setViewName("/WEB-INF/views/example.jsp");
    //      return modelAndView;
    //  }
 
    // administrator->membersinfo.jsp
    @GetMapping("/membersinfoForm")
    public ModelAndView membersinfoForm(@RequestParam Map params, ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/project/members/membersinfo.jsp");
        return  modelAndView;
    
   
    }
    
   


}
