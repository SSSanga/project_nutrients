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
    public Map ContactsDetail(Map dataMap) {
        String sqlMapId = "Inquiries.selectInquiryDetail";

        HashMap result = new HashMap<>();
        result.put("resultList", sharedDao.getList(sqlMapId, dataMap));
        return result;
    }
}
