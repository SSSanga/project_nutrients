// ContactsService
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

@Service
@Transactional
public class ContactsService {
    @Autowired
    SharedDao sharedDao;

    public String generateUUID() {
        return UUID.randomUUID().toString();
    }


    // 검색(조건-?)
    public Map contactsSearch(Map dataMap) {
        String sqlMapId = "Inquiries.selectInquiryList";

        HashMap result = new HashMap<>();
        result.put("resultList", sharedDao.getList(sqlMapId, dataMap));
        return result;
    }

    // 검색(조건-search : TITLE, CONTENT, WRITING_DATE )
    public Map contactselectSearchWithPagination(Map dataMap) {
        // 페이지 형성 위한 계산
        int totalCount = (int) this.contactsSelectTotal(dataMap);

        int currentPage = 1;
        if (dataMap.get("currentPage") != null) {
            currentPage = Integer.parseInt((String) dataMap.get("currentPage")); // from client in param
        }

        Paginations paginations = new Paginations(totalCount, currentPage);
        HashMap result = new HashMap<>();
        result.put("paginations", paginations); // 페이지에 대한 정보

        // page record 수
        // Object getOne(String sqlMapId, Object dataMap)
        String sqlMapId = "Inquiries.contactsselectSearchWithPagination";
        dataMap.put("pageScale", paginations.getPageScale());
        dataMap.put("pageBegin", paginations.getPageBegin());

        result.put("resultList", sharedDao.getList(sqlMapId, dataMap)); // 표현된 레코드 정보
        return result;
    }

    // total count
    public Object contactsSelectTotal(Map dataMap) {
        String sqlMapId = "Inquiries.contactselectTotal";

        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    }

    // 상세 조회
    public Object contactsselectDetail(String INQUIRY_ID, Map dataMap) {
        // Object getOne(String sqlMapId, Object dataMap)
        String sqlMapId = "Inquiries.selectInquiryDetail";
        dataMap.put("INQUIRY_ID", INQUIRY_ID);

        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    }


    public Object contactsinsert(Map dataMap) {
        String sqlMapId = "Inquiries.insertInquiry";
        if(dataMap.get("INQUIRY_ID").equals("")){
            String uuid = generateUUID();
            dataMap.put("INQUIRY_ID", uuid);
        } else{
        }
        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }

    public Object contactsinsertAndSelect(Map dataMap) {

        HashMap result = new HashMap<>();
        result.put("contactsinsertCount", this.contactsinsert(dataMap));
        result.putAll(this.contactselectSearchWithPagination(dataMap));

        return result;
    }
}
