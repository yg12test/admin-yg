package com.yg.mapper;

import com.yg.entity.Game;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface GameMapper {

    @Select("select * from top_game where status = 1 and state = 1")
    List<Game> getGame();
}
