package com.project.project_nutrients.controller;
import java.util.Map;

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

import com.project.project_nutrients.service.MainService;

@Controller
@RequestMapping("/main")

public class MainController {
     @Autowired
    MainService mainService;

    // /selectSearch?search=YEAR&words=2020
    // /selectSearch/CAR_NAME/소
    @GetMapping("/selectSearch")
    public ModelAndView selectSearch(@RequestParam Map params
                            , ModelAndView modelAndView) {
        Object result = mainService.selectSearch(params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);
        
        modelAndView.setViewName("/WEB-INF/views/example.jsp");
        return modelAndView;
    }

    // // delete with MVC
    // @PostMapping("/deleteAndSelectSearch/{UNIQUE_ID}")
    // public ModelAndView deleteAndSelectSearch(@PathVariable String UNIQUE_ID
    //                     , @RequestParam Map params, ModelAndView modelAndView) {
    //     Object result = mainService.deleteAndSelectSearch(UNIQUE_ID, params);
    //     modelAndView.addObject("params", params);
    //     modelAndView.addObject("result", result);

    //     modelAndView.setViewName("/WEB-INF/views/carinfor/list_map.jsp");
    //     return modelAndView;
    // }

}
