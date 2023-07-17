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
public class MembersService {
    @Autowired
    SharedDao sharedDao;

    public String generateUUID() {
        return UUID.randomUUID().toString();
    }

          //회원가입, 리뷰, Q&A 등록? 같음
        //COMMON_CODE_ID가 빈칸이면 uuid생성
        public Object insertAndSelectSearch(Map dataMap) {

            HashMap result = new HashMap<>();
            result.put("insertCount", this.insert(dataMap));
    
            // result.putAll(this.selectSearch(dataMap));
            return result;
        }
    

        // insert를 할때 insertAndSelectSearch에서 사용하는 코드
        public Object insert(Map dataMap) {
            String sqlMapId = "members.insert";
            if(dataMap.get("COMMON_CODE_ID").equals("")){
                String uuid = generateUUID();
                dataMap.put("COMMON_CODE_ID", uuid);
            } else{
            }
            Object result = sharedDao.insert(sqlMapId, dataMap);
            return result;
        }
}
