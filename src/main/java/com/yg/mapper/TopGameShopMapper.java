package com.yg.mapper;

import com.yg.entity.TopGameShop;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TopGameShopMapper {

    /**
     * 根据商品类型获取列表
     * @param goodType
     * @return
     */
    @Select("select * from top_game_shop where good_type = #{goodType} and status = 1")
    List<TopGameShop> getByGoodType(@Param("goodType") int goodType);

    /**
     * 获取热销商品
     * @return
     */
    @Select("select * from top_game_shop where is_host = 1 and status = 1")
    List<TopGameShop> getHostShop();

    /**
     * 获取商品详情
     * @return
     */
    @Select("select * from top_game_shop where id = #{id} and status = 1")
    TopGameShop getShopId(@Param("id") int id);

    @Update("update top_game_shop set received_num = received_num + #{num} where id = #{shopId} and total_num >= received_num + #{num}")
    int updateShopNum(@Param("shopId")int shopId, @Param("num") int num);
}
