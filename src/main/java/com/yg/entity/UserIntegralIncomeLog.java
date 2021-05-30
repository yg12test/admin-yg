package com.yg.entity;

import lombok.Data;

import java.util.Date;

@Data
public class UserIntegralIncomeLog {

    private int user_id;
    private int income;
    private int action;
    private Date operator_time;
    private String remarks;
}
