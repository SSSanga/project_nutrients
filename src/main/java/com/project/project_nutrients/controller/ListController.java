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

import com.project.project_nutrients.service.ListService;

import java.util.UUID;

@Controller
@RequestMapping("/supp")
public class ListController {
    @Autowired
    ListService wholelistservice;

    @GetMapping("/wholelist")
    public ModelAndView wholelist(@RequestParam Map params, ModelAndView modelAndView) {
        Object result = wholelistservice.listWithPaginations(params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);
        modelAndView.setViewName("/WEB-INF/views/project/supplist/wholelist.jsp");
        return modelAndView;
    }

    @GetMapping("/specdetail/{SUPP_ID}")
    public ModelAndView spec(@PathVariable String SUPP_ID, @RequestParam Map params, ModelAndView modelAndView) {
        Object result = wholelistservice.selectDetail(SUPP_ID, params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);
        modelAndView.setViewName("/WEB-INF/views/project/supplist/suppspec.jsp");
        return modelAndView;
    }
     @GetMapping("/delete/{SUPP_ID}")
    public ModelAndView delete(@PathVariable String SUPP_ID
                        , @RequestParam Map params, ModelAndView modelAndView) {
        Object result = wholelistservice.delete(SUPP_ID, params);
        modelAndView.addObject("result", result);

        modelAndView.setViewName("/supp/sholelist");
        return modelAndView;
    }

    @GetMapping("/listadd")
    public ModelAndView listadd(ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/project/supplist/listadd.jsp");
        return modelAndView;
    }

    @GetMapping("/insert")
    public ModelAndView insert(ModelAndView modelAndView) {
        modelAndView.setViewName("/supp/insertandselect");
        return modelAndView;
    }

    @GetMapping("/insertandselect")
    public ModelAndView insertandselect(ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/project/supplist/wholelist.jsp");
        return modelAndView;
    }

    @GetMapping("/about")
    public ModelAndView about(ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/about.jsp");
        return modelAndView;
    }


}
