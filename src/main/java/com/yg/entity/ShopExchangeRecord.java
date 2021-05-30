package com.yg.entity;

import lombok.Data;

import java.util.Date;

@Data
public class ShopExchangeRecord {

    private int user_id;
    private int shop_id;
    private Date create_time;
}
