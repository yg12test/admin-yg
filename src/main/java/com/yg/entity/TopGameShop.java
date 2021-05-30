package com.yg.entity;

import lombok.Data;

import java.util.Date;

@Data
public class TopGameShop {

    private int id;
    private String name;
    private int good_type;//1--流量，2--礼包，3--实物商品
    private int integral;//所需积分
    private String image;
    private int vip_num;//vip等级
    private int total_num;//总数
    private int received_num;  //领取数
    private int is_host;//是否热销
    private Date start_time;//
    private Date expire_time;//
    private Date create_time;
}
