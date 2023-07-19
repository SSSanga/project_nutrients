package com.project.project_nutrients.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.project_nutrients.dao.SharedDao;
import java.util.UUID;


@Service
@Transactional
public class ReviewsService {
    @Autowired
    SharedDao sharedDao;

        public String generateUUID() {
        return UUID.randomUUID().toString();
    }

    // 리뷰 테스트용/ 검색(조건-?)
    public Map reviewselectSearch(Map dataMap) {
        String sqlMapId = "Reviews.reviewselectSearch";
        
        HashMap result = new HashMap<>();
        result.put("resultList", sharedDao.getList(sqlMapId, dataMap));
        return result;
    }
}



