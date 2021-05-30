<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="zh">
<head>
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
            <link href="https://cdn.99kgames.com/css/swiper.min.css" rel="stylesheet" type="text/css"><link href="https://cdn.99kgames.com/css/game_10101456.css?v=10101456" rel="stylesheet" type="text/css">
        <title>积分商城</title>
        <script src="${pageContext.request.contextPath}/static/js/jquery-3.6.0.js"></script>
    </head>
 <body data-title="" marginwidth="0" marginheight="0" style="">
<header class="head" id="head">
    <h1>积分商城</h1>
    
    
</header><div class="wrap pb50">
    <div class="swiper-container swiper-container4 swiper-container-horizontal" id="banner-swiper">
        <div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-1581px, 0px, 0px);"><div class="swiper-slide swiper-slide-duplicate" data-url="/user/shop/detail.html?id=13" data-swiper-slide-index="1" style="width: 527px;"><img src="http://cache.99kgames.com/20170313143701qiniu9865_.png"></div>
                    <div class="swiper-slide" data-url="/user/shop/desc.html" data-swiper-slide-index="0" style="width: 527px;"><img src="http://cache.99kgames.com/20161227120026qiniu2245_.png"></div>
                    <div class="swiper-slide swiper-slide-prev" data-url="/user/shop/detail.html?id=13" data-swiper-slide-index="1" style="width: 527px;"><img src="http://cache.99kgames.com/20170313143701qiniu9865_.png"></div>
        <div class="swiper-slide swiper-slide-duplicate swiper-slide-active" data-url="/user/shop/desc.html" data-swiper-slide-index="0" style="width: 527px;"><img src="http://cache.99kgames.com/20161227120026qiniu2245_.png"></div></div>
        <!-- Add Pagination -->
        <div class="swiper-pagination swiper-pagination-clickable"><span class="swiper-pagination-bullet swiper-pagination-bullet-active"></span><span class="swiper-pagination-bullet"></span></div>
    </div>

    <div class="mann_nav_v2" id="my_integal">

        <ul class="clearfix " style="padding-top: 5px;">
            <li class="my_integral_page">
                <em><img src="https://cdn.99kgames.com/images/mall_icon01.png"></em>
                <span><i class="power_red">0</i>积分</span>
            </li>
            <li class="earn_integral">
                <em><img src="https://cdn.99kgames.com/images/mall_icon04.png"></em>
                <span>积分任务</span>
            </li>
            <li class="exchange_record_list">
                <em><img src="https://cdn.99kgames.com/images/mall_icon03.png"></em>
                <span>兑换记录</span>
            </li>
        </ul>
    </div>

        <div class="hot_sell">
            <p>热销商品</p>
            <div class="top_three">
                    <div class="sell_item shop-detail" style="overflow:hidden;white-space:nowrap;text-overflow: ellipsis;" data-id="6" data-vipnum="1" data-goodslevelstyle="vip_icon1" data-goodslevelremark="VIP1">
                        <img src="http://cache.99kgames.com//shop/20170123/20170123103436qiniu5494_.png">
                        移动1G流量(当月有效)
                            <div class="vip_box vip_blue_bg">VIP1</div>
                    </div>
                    <div class="sell_item shop-detail" style="overflow:hidden;white-space:nowrap;text-overflow: ellipsis;" data-id="108" data-vipnum="0" data-goodslevelstyle="vip_icon0" data-goodslevelremark="VIP0">
                        <img src="http://cache.99kgames.com//shop/20180313/20180313173721qiniu1155_.jpg">
                        定制玩偶小胖橘
                    </div>
                    <div class="sell_item shop-detail" style="overflow:hidden;white-space:nowrap;text-overflow: ellipsis;" data-id="53" data-vipnum="0" data-goodslevelstyle="vip_icon0" data-goodslevelremark="VIP0">
                        <img src="http://cache.99kgames.com//shop/20170808/20170808171533qiniu3419_.jpg">
                        盛世霸业-星耀礼包
                    </div>
            </div>
        </div>

    <div class="mall_package_bg">
        <div class="package_classify">
            <a class="on" data-type="2">游戏礼包</a>
            <a data-type="3">实物商品</a>
            <a data-type="1">虚拟商品</a>
        </div>

        <div class="mall_package clearfix" id="shop_list" data-level="1">
            <!--游戏礼包-->
                <div class="game_package shop-type">
                    <c:forEach items="${topGameShopList}" var="topGameShop">
                        <div class="mall_package_box shop-detail" data-id="${topGameShop.id}" data-vipnum="0" data-goodslevelstyle="vip_icon0" data-goodslevelremark="VIP0">
                            <div class="mall_package_list ">
                                <div class="mall_goods_box">
                                    <div class="mall_goods">
                                        <img src="${topGameShop.image}">
                                    </div>
                                </div>
                                <div class="mall_package_txt">
                                    <h1>${topGameShop.name}</h1>
                                    <p class="clearfix">
                                            <c:choose>
                                                <c:when test="${topGameShop.total_num-topGameShop.received_num >= 0}">
                                                    <span>剩余:<strong>${topGameShop.total_num-topGameShop.received_num}</strong></span>
                                                </c:when>
                                                <c:otherwise>
                                                    <span>数量不足</span>
                                                </c:otherwise>
                                            </c:choose>
                                        <b>${topGameShop.integral}积分</b>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
        </div>
    </div>

</div>



<div class="posi_btn posi_btn5" id="bottom_menu" data-channel="">
    <a class="menu_game">
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
    <a class="menu_mall on">
        <i class="mall_icon"></i>
        <em>积分商城</em>
    </a>
    <a class="menu_my">
        <i class="center_icon"><b class="red_dot"></b></i>
        <em>个人中心</em>
    </a>
</div>
    <script>
        $(function () {
            $(".package_classify a").click(function () {
                $(this).addClass("on");
                $(this).siblings().removeClass("on");

                $.ajax(
                    {
                        url: "/top/game/shop/package/"+$(this).data("type"),
                        type: "get",
                        success: function (result) {
                            $(".game_package").html(result);
                        },
                        error: function () {

                        }
                    }
                )
            });
        })
    </script>

    <script>
        $(function () {
            $(".game_package").on("click",".shop-detail", function () {
                location.href="/top/game/shop/details/"+$(this).data("id");
            })
        })
    </script>

</body></html>