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
//     @PostMapping("/insertAndSelectSearch")
//     public ModelAndView insertAndSelectSearch(@RequestParam Map params, ModelAndView modelAndView) {
//         Object result = MembersService.insertAndSelectSearch(params);
//         modelAndView.addObject("params", params);
//         modelAndView.addObject("result", result);

    // @Autowired
    //  MembersService membersService;

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
    public ModelAndView insertForm(@RequestParam Map params, ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/project/signup.jsp");
        return  modelAndView;
    }
}
