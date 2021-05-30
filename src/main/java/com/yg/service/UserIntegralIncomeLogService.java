package com.yg.service;

import com.yg.entity.UserIntegralIncomeLog;
import com.yg.mapper.UserIntegralIncomeLogMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserIntegralIncomeLogService {

    @Autowired
    UserIntegralIncomeLogMapper userIntegralIncomeLogMapper;

    public int addUserIntegralIncomeLog(UserIntegralIncomeLog userIntegralIncomeLog) {
        return userIntegralIncomeLogMapper.addUserIntegralIncomeLog(userIntegralIncomeLog);
    }
}
