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
@RequestMapping("/supp")
public class WholelistController {
    @GetMapping("/wholelist")
    public ModelAndView wholelist (ModelAndView modelAndView){
        modelAndView.setViewName("/WEB-INF/views/project/supplist/wholelist.jsp");
        return modelAndView;
    }

        @GetMapping("/listadd")
    public ModelAndView listadd (ModelAndView modelAndView){
        modelAndView.setViewName("/WEB-INF/views/project/supplist/listadd.jsp");
        return modelAndView;}
        



}
