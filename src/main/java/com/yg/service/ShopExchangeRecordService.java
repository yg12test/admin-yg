package com.yg.service;

import com.yg.entity.ShopExchangeRecord;
import com.yg.entity.UserAccount;
import com.yg.entity.UserIntegralIncomeLog;
import com.yg.mapper.ShopExchangeRecordMapper;
import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ShopExchangeRecordService {

    @Autowired
    ShopExchangeRecordMapper shopExchangeRecordMapper;

    @Autowired
    UserAccountService userAccountService;

    @Autowired
    TopGameShopService topGameShopService;

    @Autowired
    UserIntegralIncomeLogService userIntegralIncomeLogService;

    public int addShopExchangeRecord(ShopExchangeRecord shopExchangeRecord) {
        return shopExchangeRecordMapper.addShopExchangeRecord(shopExchangeRecord);
    }

    public List<ShopExchangeRecord> getByUserId(int userId) {
        return shopExchangeRecordMapper.getByUserId(userId);
    }

    /**
     * 兑换商品
     * @param shopId
     * @param integral
     * @param userId
     * @return
     */
    @Transactional
    public int shopExchangeRecord(int shopId, int integral, int userId) {
        UserAccount userAccount = userAccountService.getByUserId(userId);
        if (userAccount != null) {
            //扣除积分
            if (userAccountService.subBalanceNum(userId, integral)) {
                //扣除商品数量
                if (topGameShopService.updateShopNum(shopId, 1)) {
                    //新增商品兑换记录
                    ShopExchangeRecord shopExchangeRecord = new ShopExchangeRecord();
                    shopExchangeRecord.setShop_id(shopId);
                    shopExchangeRecord.setUser_id(userId);
                    addShopExchangeRecord(shopExchangeRecord);
                    //新增积分使用记录
                    UserIntegralIncomeLog userIntegralIncomeLog = new UserIntegralIncomeLog();
                    userIntegralIncomeLog.setUser_id(userId);
                    userIntegralIncomeLog.setIncome(integral);
                    userIntegralIncomeLog.setAction(0);
                    userIntegralIncomeLog.setRemarks("兑换商品");
                    userIntegralIncomeLogService.addUserIntegralIncomeLog(userIntegralIncomeLog);
                    return 1;
                }
            }
        }
        return 0;
    }
}
