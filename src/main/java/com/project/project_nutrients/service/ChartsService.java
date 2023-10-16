package com.project.project_nutrients.service;


import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.project_nutrients.dao.SharedDao;

@Service
@Transactional
public class ChartsService {
    @Autowired
    SharedDao sharedDao;
    
    //SUPP_ID를 이용해서 리뷰 CNT 가져오기 
    public Object getSuppChart(String SUPP_ID, Map dataMap) {
        // Object getOne(String sqlMapId, Object dataMap)
        String sqlMapId = "Chart.suppidcnt"; 
        
        dataMap.put("SUPP_ID", SUPP_ID);

        
        Object resultObject = sharedDao.getList(sqlMapId, dataMap);
        return resultObject;
    }

    // EFFECT들을 월별로 line 그리기_2022 
    public Object getquaterChart(Map dataMap) {
        
        // Object getOne(String sqlMapId, Object dataMap)
        String sqlMapId = "Chart.lasteffectquatercnt"; 

        
        Object resultObject = sharedDao.getList(sqlMapId, dataMap);
        return resultObject;
    }

    // EFFECT들을 월별로 line 그리기_2023
    public Object thisgetquaterChart(Map dataMap) {
        
        // Object getOne(String sqlMapId, Object dataMap)
        String sqlMapId = "Chart.thiseffectquater_cnt"; 

        
        Object resultObject = sharedDao.getList(sqlMapId, dataMap);
        return resultObject;
    }

// EFFECT에서 댓글 평균을 pie chart로 표현하기
    public Object effectreviewcnt (String EFFECT_FLAG, Map dataMap) {
        
        // Object getOne(String sqlMapId, Object dataMap)
        String sqlMapId = "Chart.effectreviewcnt"; 

        
        Object resultObject = sharedDao.getList(sqlMapId, dataMap);
        return resultObject;
    }
    
    
}
