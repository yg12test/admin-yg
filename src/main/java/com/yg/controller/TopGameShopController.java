package com.yg.controller;

import com.alibaba.fastjson.JSONObject;
import com.yg.entity.TopGameShop;
import com.yg.entity.UserAccount;
import com.yg.mapper.UserIntegralIncomeLogMapper;
import com.yg.service.ShopExchangeRecordService;
import com.yg.service.TopGameShopService;
import com.yg.service.UserAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class TopGameShopController {

    @Autowired
    TopGameShopService topGameShopService;

    @Autowired
    UserAccountService userAccountService;

    @Autowired
    ShopExchangeRecordService shopExchangeRecordService;

    @Autowired
    UserIntegralIncomeLogMapper userIntegralIncomeLogMapper;

    @RequestMapping("/top/game/shop")
    public String getByGoodType(Model model) {
        List<TopGameShop> topGameShopList = topGameShopService.getByGoodType(2);
        model.addAttribute("topGameShopList", topGameShopList);
        return "top_game_shop";
    }

    @RequestMapping("/top/game/shop/package/{type}")
    public String getGamePackage(@PathVariable int type, Model model) {
        List<TopGameShop> topGameShopList = topGameShopService.getByGoodType(type);
        List<TopGameShop> topGameHostShopsList = topGameShopService.getHostShop();
        model.addAttribute("topGameShopList", topGameShopList);
        model.addAttribute("topGameHostShopsList", topGameHostShopsList);
        model.addAttribute("type", type);
        return "top_game_shop_list";
    }

    @RequestMapping("/top/game/shop/details/{id}")
    public String getShopDetails(@PathVariable int id, Model model) {
        TopGameShop topGameShop = topGameShopService.getShopId(id);
        UserAccount userAccount = userAccountService.getByUserId(1);
        model.addAttribute("balance",userAccount.getBalance());
        model.addAttribute("topGameShop", topGameShop);
        return "top_shop_details";
    }

    @RequestMapping("/top/shop/exchange/record/{shopId}/{integral}")
    @ResponseBody
    public String shopExchangeRecord(@PathVariable int shopId, @PathVariable int integral) {
        JSONObject json = new JSONObject();
        int code = shopExchangeRecordService.shopExchangeRecord(shopId, integral, 1);
        UserAccount userAccount = userAccountService.getByUserId(1);
        json.put("balance",userAccount.getBalance());
        json.put("code", code);
        return json.toJSONString();
    }
}
