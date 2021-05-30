package com.yg.mapper;

import com.yg.entity.UserAccount;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserAccountMapper {

    @Select("select * from top_user_account where user_id = #{userId}")
    UserAccount getByUserId(@Param("userId") int userId);

    @Update("update top_user_account set balance = balance - #{num} where user_id = #{userId} and balance >= #{num}")
    int subBalanceNum(@Param("userId")int userId, @Param("num") int num);
}
