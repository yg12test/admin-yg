package com.yg;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.yg.mapper")
public class SpringBoot05Application {

    public static void main(String[] args) {
        SpringApplication.run(SpringBoot05Application.class, args);
    }

}
