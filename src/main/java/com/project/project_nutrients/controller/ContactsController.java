package com.project.project_nutrients.controller;

import java.util.Map;
import java.util.UUID;

import com.project.project_nutrients.service.ContactsService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.project.project_nutrients.service.ContactsService;

@Controller
@RequestMapping("/contacts")
public class ContactsController {
    
    @Autowired
    ContactsService contactsService;
   
    @GetMapping("/contactslist")
    public ModelAndView contactslist(@RequestParam Map params
    , ModelAndView modelAndView) {
        Object result = contactsService.ContactsSearch(params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);
        modelAndView.setViewName("/WEB-INF/views/project/contacts/contactslist.jsp");
        return modelAndView;
    }


    @GetMapping("/ContactsselectDetail/{INQUIRY_ID}")
    public ModelAndView ContactsselectDetail(@PathVariable String INQUIRY_ID
                        ,@RequestParam Map params, ModelAndView modelAndView) {
        Object result = contactsService.ContactsselectDetail(INQUIRY_ID, params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);
        modelAndView.setViewName("/WEB-INF/views/project/contacts/contactsdetail.jsp");
        return modelAndView;
    }


//    // admin이 관리, admin 완성되면 수정하기!!!!
//    @GetMapping("/reviewdeleteAndSelectSearch")
//    public ModelAndView reviewdeleteAndSelectSearch(@PathVariable String REVIEW_ID
//                           , @RequestParam Map params, ModelAndView modelAndView) {
//        Object result = contactsService.reviewdeleteAndSelectSearch(REVIEW_ID, params);
//        modelAndView.addObject("params", params);
//        modelAndView.addObject("result", result);
  
//        modelAndView.setViewName("/WEB-INF/views/project/admin/admin_reviews.jsp");
//        return modelAndView;
//       }


}

