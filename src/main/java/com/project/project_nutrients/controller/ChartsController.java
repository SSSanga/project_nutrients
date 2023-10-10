package com.project.project_nutrients.controller;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import java.util.Arrays;

@Controller
@RequestMapping("/mem")
public class ChartsController {

    @RequestMapping(value = "/charts/google_charts_scatter", method = RequestMethod.GET)  
    public ModelAndView edit(ModelAndView modelAndView) {
        ArrayList<ArrayList<Object>> datas = new ArrayList<>();
        // ['Age', 'Weight'],[8, 12],[4, 5.5],[11, 14],[4, 5],[3, 3.5],[6.5, 7];
        datas.add(new ArrayList<>(Arrays.asList("Age", "Weight")));
        datas.add(new ArrayList<>(Arrays.asList(8, 12)));
        datas.add(new ArrayList<>(Arrays.asList(4, 5.5)));
        datas.add(new ArrayList<>(Arrays.asList(11, 14)));
        datas.add(new ArrayList<>(Arrays.asList(4, 5)));
        datas.add(new ArrayList<>(Arrays.asList(3, 3.5)));
        datas.add(new ArrayList<>(Arrays.asList(6.5, 7)));

        Gson gson = new Gson();
        String jsonData = gson.toJson(datas);

        modelAndView.addObject("dataArray", jsonData);
        
        modelAndView.setViewName("/WEB-INF/views/project/admin/charts_google_various.jsp");
        return modelAndView;
    }
}
