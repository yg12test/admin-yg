package com.yg.controller;

import com.yg.entity.Game;
import com.yg.service.GameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class GameController {

    @Autowired
    GameService gameService;

    @RequestMapping("/game/page")
    public String getGamePage() {
        return "top_game";
    }

    @RequestMapping("/game/list/page")
    public String getGameListPage(Model model) {
        List<Game> gameList = gameService.getGameList();
        model.addAttribute("gameList", gameList);
        return "top_game_list";
    }

    @RequestMapping("/game/list/page/new")
    public String getNewGameListPage(Model model) {
        List<Game> gameList = gameService.getGameList();
        model.addAttribute("gameList", gameList);
        return "top_game_list";
    }
}
