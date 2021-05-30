<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
            <link href="https://cdn.99kgames.com/css/game_10101456.css?v=10101456" rel="stylesheet" type="text/css">
        <title>${topGameShop.name}</title>
        <script src="${pageContext.request.contextPath}/static/js/jquery-3.6.0.js"></script>
    </head>
 <body data-title="" marginwidth="0" marginheight="0" style="">
<header class="head" id="head">
        <span class="goback"><img src="https://cdn.99kgames.com/images/back.png"></span>
    <h1>${topGameShop.name}</h1>
    
    
</header><div class="wrap" id="good-detail">
    <div class="detail_pic">
        <div class="detail_pic_bg"><em><img src="${topGameShop.image}"></em></div>
        <div class="detail_title">
            <h1>${topGameShop.name}</h1>
            <div class="clearfix">
                <div class="detail_package_num fl">
                        <c:choose>
                            <c:when test="${topGameShop.total_num-topGameShop.received_num >= 0}">

                            <p>剩余数量:<i class="light_blue" id="left-num">${topGameShop.total_num-topGameShop.received_num}</i></p>
                            </c:when>
                            <c:otherwise>
                                <p>剩余数量:数量不足</p>
                            </c:otherwise>
                        </c:choose>

                        <p>兑换积分:<i class="orange">${topGameShop.integral}</i></p>
                </div>
                <div class="integral_all">我的积分:<em id="my-integal">${balance}</em></div>
            </div>
        </div>
    </div>
    <div class="detail_main">
        <h1>商品详情</h1>
        <div class="detail_con">
                <p><i class="orange">有效期：</i>${topGameShop.start_time}至${topGameShop.expire_time}</p>
                <p><i class="orange">兑换规则：</i>达到指定积分即可兑换</p>
        </div>
        <div class="detail_notice">
            <p>注意：</p>
                <p style="color: #ff0000;">1.兑换实物商品，兑换成功后，务必关注游戏金榜公众号或添加客服QQ【3024152317】联系客服领取</p>
                <p>2.联系客服后，7个工作日内会发货</p>
                <p>3.商品一经兑换，一律不退还积分</p>
                <p>4.通过非法途径获得积分进行正常交换，或者不按商品兑换规则进行兑换者，平台有权不提供服务</p>
                <p>5.凡是以不正当手段进行兑换，平台有权终止该次兑换</p>
        </div>
    </div>
    <div class="detail_btn_box" id="gameshop_exchange">
        <div class="detail_btn">
            <a class="detail_earn">赚取更多积分</a>
            <a id="detailId" class="detail_change  detail_gray " data-goodtype="3" data-id="${topGameShop.id}" data-integal="${topGameShop.integral}">立即兑换</a>
        </div>
    </div>
    <div class="popup_bg" id="exchange_confirm_all">
        <div class="change_popup">
            <h1 style="padding: 30px 0 25px">本次兑换物品为 <i class="orange">定制玩偶小胖橘</i><br>将使用<i class="orange"> 80000 </i>积分，您确定兑换吗？<br>注意：每个游戏仅可以兑换一个同类游戏礼包</h1>
            <p>
                <a class="fl">取消</a>
                <a class="fr sure">确定</a>
            </p>
        </div>
    </div>

    <div id="kefu-node" class="dn">
        <div class="add_group">
            <div class="add_group_tit">添加客服QQ获取兑换码</div>
            <div class="active_num two_item">
                <p>客服婷婷：1554085415</p>
                <p>客服娜娜：3075065314</p>
            </div>
            <h2><img src="https://cdn.99kgames.com/images/up_icon.png">长按复制上方客服QQ号</h2>
        </div>
    </div>

</div>
    <script>
        $(function () {
            $("#detailId").click(function () {
                var balance = ${balance};
                var integal = $(this).data("integal");
                if (balance < integal) {
                    alert("积分不足");
                    return;
                }

                $.ajax(
                    {
                        url: "/top/shop/exchange/record/"+$(this).data("id")+"/"+$(this).data("integal"),
                        type: "get",
                        dataType: "json",
                        success: function (result) {
                            if (result.code == 1) {
                                $("#my-integal").html(result.balance);
                                alert("兑换成功");
                            } else {
                                alert("兑换失败");
                            }
                        },
                        error: function () {
                            alert("error")
                        }
                    }
                )
            });
        })
    </script>
</body>
</html>