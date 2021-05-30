package com.yg.service;

import com.yg.entity.TopGameShop;
import com.yg.mapper.TopGameShopMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TopGameShopService {

    @Autowired
    TopGameShopMapper topGameShopMapper;

    /**
     * 根据商品类型获取列表
     * @param goodType
     * @return
     */
    public List<TopGameShop> getByGoodType(int goodType) {
        return topGameShopMapper.getByGoodType(goodType);
    }

    /**
     * 获取热销商品
     * @return
     */
    public List<TopGameShop> getHostShop() {
        return topGameShopMapper.getHostShop();
    }

    public TopGameShop getShopId(int id) {
        return topGameShopMapper.getShopId(id);
    }

    public boolean updateShopNum(int shopId, int num) {
        return topGameShopMapper.updateShopNum(shopId, num) > 0;
    }
}
