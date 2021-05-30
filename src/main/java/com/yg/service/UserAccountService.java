package com.yg.service;

import com.yg.entity.UserAccount;
import com.yg.mapper.UserAccountMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserAccountService {

    @Autowired
    UserAccountMapper userAccountMapper;

    public UserAccount getByUserId(int userId) {
        return userAccountMapper.getByUserId(userId);
    }

    public boolean subBalanceNum(int userId, int num) {
        return userAccountMapper.subBalanceNum(userId, num) > 0;
    }
}
