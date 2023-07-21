package com.project.project_nutrients.security;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.project.project_nutrients.service.MembersService;

@Service
public class PrincipalUserService implements UserDetailsService{
    @Autowired
    MembersService membersService;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        // query select with ID
        Map dataMap = new HashMap<>();
        dataMap.put("USERNAME", username);
        Object usernameObj = username;
        Map resultMap = (Map) membersService.selectByUIDWithAuths(dataMap);

        // session 등록
        PrincipalUser principalUser = new PrincipalUser(resultMap);

        return principalUser;
    }
    
}
