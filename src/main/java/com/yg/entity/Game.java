package com.yg.entity;

import lombok.Data;

import java.util.List;

@Data
public class Game {
    private int id;
    private String code; //游戏代号
    private String title; //小标题
    private String subtitle; //二级标题
    private String icon; //APP图标
    private String url; //APP下载地址,如果H5就是链接地址
    private int status; //状态(0:未审核1:已审核2:审核未通过
    private int state; //1,--有效，2--无效
    private String description; //APP描述
    private int tag_property; //游戏标签, 每一位代表一种标签
    private List<Integer> tagPropertyList;

}
