package com.project.project_nutrients.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.project_nutrients.dao.SharedDao;
import com.project.project_nutrients.utils.Commons;

@Service
@Transactional
public class MembersService {
    
    @Autowired
    SharedDao sharedDao;

    @Autowired
    Commons commonUtils;

    @Autowired
    AuthsService authsService;

    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;


    public String generateUUID() {
    return UUID.randomUUID().toString();
    }

    public Object membersinsert(Map dataMap) {
        String PASSWORD = (String) dataMap.get("PASSWORD");
        dataMap.put("PASSWORD", bCryptPasswordEncoder.encode(PASSWORD));
        String sqlMapId = "Members.membersinsert";
        if(dataMap.get("UNIQUE_ID").equals("")){
        String uuid = generateUUID();
        dataMap.put("UNIQUE_ID", uuid);
        } else{
        }
        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }

    public Object insertWithAuths(Map dataMap){
        Object result = this.membersinsert(dataMap);
        result = authsService.authsinsert(dataMap);
        return result;
    }

    public Object selectByUID(Map dataMap) {
        String sqlMapId = "Members.selectByUID";

        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    }

    public Object selectByUIDWithAuths(Map dataMap) {
        Map result = (Map) this.selectByUID(dataMap);
        dataMap.put("UNIQUE_ID", result.get("UNIQUE_ID"));
        result.putAll(authsService.selectWithUSERNAME(dataMap));
        return result;
    }

    public Object mypageDetail(Map dataMap) {
        // Object getOne(String sqlMapId, Object dataMap)
        String sqlMapId = "Members.mypageDetail";
        dataMap.put("ID", commonUtils.getUserID());
        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    }

    public Map memberList(Map dataMap) {
        String sqlMapId = "Members.memberList";
        
        HashMap result = new HashMap<>();
        result.put("resultList", sharedDao.getList(sqlMapId, dataMap));
        return result;
    }

    public Object deleteAndmemberList(String UNIQUE_ID, Map dataMap) {
        dataMap.put("UNIQUE_ID", UNIQUE_ID);

        HashMap result = new HashMap<>();
        result.put("deleteCount", this.delete(dataMap));

        result.putAll(this.memberList(dataMap));
        return result;
    }

    public Object delete(Map dataMap) {
        String sqlMapId = "Members.memberdelete";

        Object result = sharedDao.delete(sqlMapId, dataMap);
        return result;
    }

        public Object deleteAndmemberauths(String UNIQUE_ID, Map dataMap) {
        dataMap.put("UNIQUE_ID", UNIQUE_ID);

        HashMap result = new HashMap<>();
        result.put("deleteCount", this.deleteauths(dataMap));
        result.putAll(this.memberList(dataMap));
        return result;
    }

        public Object deleteauths(Map dataMap) {
        String sqlMapId = "Auths.deleteauths";
        Object result = sharedDao.delete(sqlMapId, dataMap);
        return result;
    }

}
