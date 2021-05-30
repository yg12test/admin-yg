package com.yg.service;

import com.yg.entity.ShopExchangeRecord;
import com.yg.entity.TopGameShop;
import com.yg.entity.UserAccount;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@SpringBootTest
@RunWith(SpringJUnit4ClassRunner.class)
public class TopGamesShopServiceTest {

    @Autowired
    TopGameShopService topGameShopService;

    @Autowired
    ShopExchangeRecordService shopExchangeRecordService;

    @Autowired
    UserAccountService userAccountService;

    @Test
    public void testGetByGoodType() {
        List<TopGameShop> byGoodTypeList = topGameShopService.getByGoodType(2);
        for (TopGameShop topGameShop : byGoodTypeList) {
            System.out.println(topGameShop);
        }
    }

    @Test
    public void testShopExchangeRecord() {
        ShopExchangeRecord shopExchangeRecord = new ShopExchangeRecord();
        shopExchangeRecord.setUser_id(2);
        shopExchangeRecord.setShop_id(53);
        shopExchangeRecordService.addShopExchangeRecord(shopExchangeRecord);
    }

    @Test
    public void testGetById() {
    }
}
