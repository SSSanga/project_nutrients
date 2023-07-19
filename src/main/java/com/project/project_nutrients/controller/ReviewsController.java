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


import com.project.project_nutrients.service.ReviewsService;

import java.util.UUID;

@Controller
@RequestMapping("/reviews")

public class ReviewsController {
    @Autowired
    ReviewsService reviewsService;
   
    @GetMapping("/reviewlist")
    public ModelAndView reviewlist(@RequestParam Map params, ModelAndView modelAndView) {
        Object result = reviewsService.reviewselectSearch(params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);
        
        modelAndView.setViewName("/WEB-INF/views/project/reviews/reviews.jsp");
        return modelAndView;
    }

    @GetMapping("/review")
    public ModelAndView review(@RequestParam Map params, ModelAndView modelAndView) {        
        modelAndView.setViewName("/WEB-INF/views/project/reviews/review1.jsp");
        return  modelAndView;
    }

    @GetMapping("/review2")
    public ModelAndView review2(@RequestParam Map params, ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/project/reviews/review2.jsp");
        return  modelAndView;
    }

    @GetMapping("/reviewwrite")
    public ModelAndView reviewwrite(@RequestParam Map params, ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/project/reviews/reviewwriting.jsp");
        return  modelAndView;
    }

    //  리뷰테스트용 검색 
    @GetMapping("/reviewselectSearch")
    public ModelAndView reviewselectSearch(@RequestParam Map params, ModelAndView modelAndView) {
        Object result = reviewsService.reviewselectSearch(params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);
        
        modelAndView.setViewName("/WEB-INF/views/project/reviews/reviews.jsp");
        return modelAndView;
    }
}
