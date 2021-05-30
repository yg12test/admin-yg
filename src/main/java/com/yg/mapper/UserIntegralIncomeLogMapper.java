package com.yg.mapper;

import com.yg.entity.UserIntegralIncomeLog;
import org.apache.ibatis.annotations.Insert;
import org.springframework.stereotype.Repository;

@Repository
public interface UserIntegralIncomeLogMapper {

    @Insert("insert into top_user_integal_income_log " +
            "(user_id, income, action, operator_time, remarks) " +
            "values " +
            "(#{user_id},#{income},#{action},NOW(),#{remarks})")
    int addUserIntegralIncomeLog(UserIntegralIncomeLog userIntegralIncomeLog);
}
