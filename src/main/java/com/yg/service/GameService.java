package com.yg.service;

import com.yg.entity.Game;
import com.yg.mapper.GameMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class GameService {

    @Autowired
    GameMapper gameMapper;

    public List<Game> getGame() {
        return gameMapper.getGame();
    }

    private int NEW = 1;
    private int HOT = 2;
    private int PACK = 4;
    private int FIRST = 8;
    public List<Game> getGameList() {
        List<Game> gameList = getGame();
        if (gameList != null) {
            for (Game game : gameList) {
                List tagPropertyList = new ArrayList();
                int tagProperty = game.getTag_property();
                if ((tagProperty & NEW) == NEW) {
                    tagPropertyList.add(NEW);
                }
                if ((tagProperty & HOT) == HOT) {
                    tagPropertyList.add(HOT);
                }
                if ((tagProperty & PACK) == PACK) {
                    tagPropertyList.add(PACK);
                }
                if ((tagProperty & FIRST) == FIRST) {
                    tagPropertyList.add(FIRST);
                }
                game.setTagPropertyList(tagPropertyList);
            }
            return gameList;
        }
        return null;
    }

//    private static int NEW = 1;
//    private static int HOT = 2;
//    private static int PACK = 4;
//    private static int FIRST = 8;
//    public static void main(String[] args) {
//        int i = 6;
//        System.out.println((i&NEW) == NEW);
//        System.out.println((i&HOT) == HOT);
//        System.out.println((i&PACK) == PACK);
//        System.out.println((i&FIRST) == FIRST);
//    }
}
