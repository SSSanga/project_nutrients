package com.project.project_nutrients.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.project_nutrients.dao.SharedDao;
import com.project.project_nutrients.utils.Paginations;

import java.util.UUID;

@Service
@Transactional

public class RecommService {
    @Autowired
    SharedDao sharedDao;

    // recommendation 할때 effect_flag가 일치하면 불러오도록. 
    public Object selectList(String EFFECT_FLAG, Map dataMap) {
        // Object getOne(String sqlMapId, Object dataMap)
        String sqlMapId = "Supplement.recomm";
        // dataMap.put("EFFECT_FLAG", EFFECT_FLAG);
        
        HashMap result = new HashMap<>();
        result.put("resultList", sharedDao.getList(sqlMapId, dataMap));
        return result;
    }

}
