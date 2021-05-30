<%--
  Created by IntelliJ IDEA.
  User: YG
  Date: 2021/5/25
  Time: 22:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh"><head>
    <meta charset="utf-8">
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="apple-touch-icon" href="https://cdn.99kgames.com/images/apple-touch-icon.png">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="full-screen" content="true">
    <meta name="screen-orientation" content="portrait">
    <meta name="x5-fullscreen" content="true">
    <meta name="360-fullscreen" content="true">
    <link href="https://cdn.99kgames.com/css/common_02091629.css?v=02091629" rel="stylesheet" type="text/css">
    <link href="https://cdn.99kgames.com/css/game_10101456.css?v=10101456" rel="stylesheet" type="text/css"><link href="https://cdn.99kgames.com/css/swiper.min.css" rel="stylesheet" type="text/css">
    <title>游戏金榜</title>
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.6.0.js"></script>
</head>
<body data-title="" marginwidth="0" marginheight="0" style="">

<header class="head" id="head">
    <h1>游戏金榜</h1>


</header><div class="wrap" id="game-list">
    <div class="swiper-container swiper-container1 swiper-container-horizontal" id="banner-swiper">
        <div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-768px, 0px, 0px);"><div class="swiper-slide swiper-slide-duplicate" data-url="/game/play/jzsc" data-id="88" data-swiper-slide-index="2" style="width: 384px;"><img src="http://cache.99kgames.com/20200728183824qiniu6697_.jpg"></div>
            <div class="swiper-slide swiper-slide-prev" data-url="/game/play/zycs" data-id="91" data-swiper-slide-index="0" style="width: 384px;"><img src="http://cache.99kgames.com/20200514111540qiniu4001_.jpg"></div>
            <div class="swiper-slide swiper-slide-active" data-url="/game/play/wczb" data-id="85" data-swiper-slide-index="1" style="width: 384px;"><img src="http://cache.99kgames.com/20200619103949qiniu4436_.jpg"></div>
            <div class="swiper-slide swiper-slide-next" data-url="/game/play/jzsc" data-id="88" data-swiper-slide-index="2" style="width: 384px;"><img src="http://cache.99kgames.com/20200728183824qiniu6697_.jpg"></div>
            <div class="swiper-slide swiper-slide-duplicate" data-url="/game/play/zycs" data-id="91" data-swiper-slide-index="0" style="width: 384px;"><img src="http://cache.99kgames.com/20200514111540qiniu4001_.jpg"></div></div>
        <!-- Add Pagination -->
        <div class="swiper-pagination swiper-pagination-clickable"><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet swiper-pagination-bullet-active"></span><span class="swiper-pagination-bullet"></span></div>
    </div>
    <div class="tab_nav">
        <ul>
            <li class="on" data-tab="0"><a>热门</a></li>
            <li data-tab="1" class=""><a>新游</a></li>
        </ul>
    </div>

    <div class="tab_list_box">
        <div class="tab_list tab-nav" style="display: block;">
            <div class="game_list mt0">
                <c:forEach items="${gameList}" var="game">
                    <div class="game_list_box show-detail" data-game="wczb">
                        <em><img src="${game.icon}"></em>
                        <div class="game_list_text">
                            <h1>${game.title}
                                <c:forEach items="${game.tagPropertyList}" var="tagProperty">
                                    <c:if test="${tagProperty == 1}">
                                        <span class="col_1">新游</span>
                                    </c:if>
                                    <c:if test="${tagProperty == 2}">
                                        <span class="col_2">热门</span>
                                    </c:if>
                                    <c:if test="${tagProperty == 4}">
                                        <span class="col_4">礼包</span>
                                    </c:if>
                                    <c:if test="${tagProperty == 8}">
                                        <span class="col_5">首发</span>
                                    </c:if>
                                </c:forEach>
                            </h1>
                            <h2>${game.subtitle}</h2>
                        </div>
                        <div class="game_begin start-game" data-game="wczb" data-desktop="1"><a>开始</a></div>
                    </div>
                </c:forEach>
            </div>
        </div>

    </div>

    <div class="load_box" id="loading-panel">
        <span style="display: none;"><img src="https://cdn.99kgames.com/images/loading.gif"></span>
        <p></p>
    </div>
    <div class="about">
        <p>客服公众号【金榜微游】</p>
    </div>

</div>

<div class="wrap  home_page_search dn" id="game-search" style="display:none; background:#fff">
    <div class="search_input_box clearfix">
        <div class="search_input">
            <span class="search_icon"></span>
            <input id="search-input" type="text" placeholder="游戏搜索">
            <span class="cancel"></span>
        </div>
        <b class="back_home">取消</b>
    </div>
    <div id="search-recent" class="recently_play">
        <p>最近在玩</p>
        <div class="game_list">
        </div>
    </div>
    <div id="search-hot" class="hot_game">
        <p>热门游戏</p>
        <div class="game_list">
            <span class="start-game" data-game="wczb" data-desktop="1">王城争霸</span>
            <span class="start-game" data-game="jzsc" data-desktop="1">决战沙城</span>
            <span class="start-game" data-game="zycs" data-desktop="1">卓越传说</span>
            <span class="start-game" data-game="fsc" data-desktop="1">封神策</span>
            <span class="start-game" data-game="xkx" data-desktop="1">侠客行</span>
            <span class="start-game" data-game="chuanqi" data-desktop="1">传奇世界</span>
            <span class="start-game" data-game="swzg" data-desktop="1">开心国王</span>
            <span class="start-game" data-game="kdygfkb" data-desktop="1">口袋之旅H5</span>
        </div>
    </div>
    <div id="search-result">
        <div class="no_result dn">
            <p>—— 暂未搜索到任何结果 ——</p>
            <img src="https://cdn.99kgames.com/images/no_result_cat.png">
        </div>
        <div class="has_result dn">
            <div class="game_list mt0" id="search-list">

            </div>
            <div class="about"></div>
        </div>
    </div>
</div>


<div id="rank-dialog" class="popup_bg" style="display: none;">
    <div class="ranking_comming" style="margin-top: -131px">
        <div class="close_button close-dialog"><img src="https://cdn.99kgames.com/images/close.png"></div>
        <div class="ranking_img"><img src="https://cdn.99kgames.com/images/ranking_img.png"></div>
        <div class="see_detail_btn"><a>查看活动详情</a></div>
    </div>
</div>
<!-- 收藏弹层 android -->

<div class="posi_btn posi_btn5" id="bottom_menu" data-channel="">
    <a class="menu_game on">
        <i class="game_icon"></i>
        <em>游戏</em>
    </a>
    <a class="menu_rank">
        <i class="ranking_icon"></i>
        <em>金榜社区</em>
    </a>
    <a class="menu_package">
        <i class="package_icon_v2"></i>
        <em>游戏礼包</em>
    </a>
    <a class="menu_mall">
        <i class="mall_icon"></i>
        <em>积分商城</em>
    </a>
    <a class="menu_my">
        <i class="center_icon"></i>
        <em>个人中心</em>
    </a>
</div>

<script>
    $(function () {
        $(".tab_nav li").click(function () {
            $(this).addClass("on");
            $(this).siblings().removeClass("on");
            var type = $(this).data("type");
            $.ajax(
                {
                    url: "/game/list/page/new",
                    success:function (result) {
                        alert("成功");
                    },
                    error:function () {

                    }
                }
            )
        })
    })
</script>

</body></html>
