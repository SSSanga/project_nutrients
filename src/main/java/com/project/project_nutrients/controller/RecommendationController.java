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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.project.project_nutrients.service.ChartsService;
import com.project.project_nutrients.service.RecommService;

import java.util.UUID;

@Controller
@RequestMapping("/recomm")

public class RecommendationController {
    @Autowired
    RecommService recommservice;
    
    @Autowired
    ChartsService chartsService;

    @GetMapping("/list")
    public ModelAndView wholelist(@RequestParam Map params, ModelAndView modelAndView) {
       
        // 기능별 분기 그래프
        Object datas = chartsService.getquaterChart(params); //chart 값을 받아오고자 함.
        
        // chart도 들어가게 하기  
        Gson gson = new Gson();
        String jsonData = gson.toJson(datas);
        modelAndView.addObject("dataArray", jsonData); 
         // 기능별 추천 
        modelAndView.setViewName("/WEB-INF/views/project/supplist/recommenlist.jsp");
        return modelAndView;
    }

    // 기존에서 pagination 돌리기
    @GetMapping({"/effectflag/{EFFECT_FLAG}","/effectflag/{EFFECT_FLAG}/{currentPage}"})
    public ModelAndView recommendation(@PathVariable String EFFECT_FLAG, @PathVariable(required=false) String currentPage, Map params,
            ModelAndView modelAndView) {
            if (currentPage == null)
            {
                currentPage = "1";
            }

        params.put("currentPage", currentPage);
        Object result = recommservice.selectList(EFFECT_FLAG, params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);
        // modelAndView.addObject("effect", EFFECT_FLAG);
        modelAndView.setViewName("/WEB-INF/views/project/supplist/recommendation.jsp");
        return modelAndView;
    }

    // // 기존에서 pagination 돌리기_돌리면서 chart 띄워야하는데 
    // @GetMapping({"/effectflag/{EFFECT_FLAG}","/effectflag/{EFFECT_FLAG}/{currentPage}"})
    // public ModelAndView recommendation(@PathVariable String EFFECT_FLAG, @PathVariable(required=false) String currentPage, Map params,
    //         ModelAndView modelAndView) {
    //     Object result = recommservice.selectList(EFFECT_FLAG, params);
    //             if (currentPage == null)
    //         {
    //             currentPage = "1";
    //         }
    //     //chart 들어아게 해야함
    //     // 효과별 댓글 분포 파이 그래프
    //     Object datas = chartsService.effectreviewcnt(EFFECT_FLAG, params); //chart 값을 받아오고자 함.
        
    //     // chart도 들어가게 하기  
    //     Gson gson = new Gson();
    //     String jsonData = gson.toJson(datas);
    //     modelAndView.addObject("dataArray", jsonData); 

        
        
    //     modelAndView.addObject("params", params);
    //     modelAndView.addObject("result", result);
    //     // modelAndView.addObject("effect", EFFECT_FLAG);
    //     modelAndView.setViewName("/WEB-INF/views/project/supplist/recommendation.jsp");
    //     return modelAndView;
    // }
}
