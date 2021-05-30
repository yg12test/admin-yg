package com.yg.mapper;

import com.yg.entity.ShopExchangeRecord;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ShopExchangeRecordMapper {

    @Select("select * from top_shop_exchange_record where user_id = #{userId}")
    List<ShopExchangeRecord> getByUserId(@Param("userId")int userId);

    @Insert("insert into top_shop_exchange_record " +
            "(user_id, shop_id, create_time) " +
            "values " +
            "(#{user_id}, #{shop_id}, NOW())")
    int addShopExchangeRecord(@Param("shopExchangeRecord") ShopExchangeRecord shopExchangeRecord);
}
