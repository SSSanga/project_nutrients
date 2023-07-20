package com.project.project_nutrients.controller;

import java.util.Map;
import java.util.UUID;

import com.project.project_nutrients.service.ContactsService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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

    public ModelAndView contactsDetail(@RequestParam Map params
    , ModelAndView modelAndView) {
        Object record = contactsService.ContactsDetail(params);
        modelAndView.addObject("record", record);
        modelAndView.setViewName("/WEB-INF/views/project/contacts/contactDetail.jsp");
        return modelAndView;
    }
}

