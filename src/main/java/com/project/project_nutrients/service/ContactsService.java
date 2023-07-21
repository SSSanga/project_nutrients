// ContactsService
package com.project.project_nutrients.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import com.project.project_nutrients.dao.SharedDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ContactsService {
    @Autowired
    SharedDao sharedDao;

    // 검색(조건-?)
    public Map ContactsSearch(Map dataMap) {
        String sqlMapId = "Inquiries.selectInquiryList";

        HashMap result = new HashMap<>();
        result.put("resultList", sharedDao.getList(sqlMapId, dataMap));
        return result;
    }


    // 상세 조회 
      public Object ContactsselectDetail(String INQUIRY_ID, Map dataMap) {
        // Object getOne(String sqlMapId, Object dataMap)
        String sqlMapId = "Inquiries.selectInquiryDetail";
       dataMap.put("INQUIRY_ID", INQUIRY_ID);

        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    }
}

