<%--
  Created by IntelliJ IDEA.
  User: YG
  Date: 2021/5/25
  Time: 22:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN"><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <meta name="format-detection" content="telephone=no">
    <title>游戏金榜</title>
    <meta name="keywords" content="游戏金榜,微信游戏,h5游戏,疯狂游戏,手游,页游,最好玩的手机游戏,游戏排行榜">
    <meta name="description" content="游戏金榜-我们只推荐最好玩的手机游戏，微信扫码无需下载直接玩起来，海量礼包任你领，嗨到爆">
    <link rel="stylesheet" type="text/css" href="https://cdn.99kgames.com/css/common_02091629.css?v=02091629">
    <link rel="stylesheet" type="text/css" href="https://cdn.99kgames.com/css/style_v3_07231445.css?v=07231445">
    <link rel="shortcut icon" href="https://cdn.99kgames.com/images/favicon.ico">

    <script src="${pageContext.request.contextPath}/static/js/jquery-3.6.0.js"></script>
</head>

<body style="background: rgb(255, 255, 255);">
<div class="wrap_box ">
    <div class="main_wrap" style="height: 722px;">
        <div class="header_box">
            <div class="header clearfix">
                <div class="logo"><img src="https://cdn.99kgames.com/images/img_v2/logo.png"></div>
                <div class="header_right clearfix">
                    <div id="real-auth" class="header_top fl"><a><em><img src="https://cdn.99kgames.com/images/pc_tab/icon_01.png"></em>实名认证</a></div>
                    <div id="qrcode_logout" class="sign_name fl dn"><b></b><a>退出登录</a></div>
                    <div id="qrcode_login" class="header_top fl "><a>登录</a></div>
                </div>
            </div>
        </div>
        <div class="main_box">
            <div class="wrap" style="height: 722px;"></div>

            <div class="ewm_box ewm_box_fr">
                <div id="pc-login-qr" class="ewm_box_pic">
                    <span><img src="https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQFp8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyRHVjUVJxd0VhUF8xemc0Smh3MUMAAgSkA61gAwQsAQAA"></span>
                    <p>微信扫描二维码登录</p>
                </div>
                <div class="game_play game_list">
                    <h1>热门推荐</h1>
                    <div class="game_list_box">
                        <div class="game_list_con">
                            <span><img src="http://cache.99kgames.com//game/20191128/20191128113254qiniu3220_.png"></span>
                            <div class="game_list_text">
                                <h1>王城争霸</h1>
                                <h2>经典复古，热血传奇，等你来战</h2>
                            </div>
                            <a class="pc-start-game" data-game="wczb" data-desktop="1">开始</a>
                        </div>
                        <div class="game_list_con">
                            <span><img src="http://cache.99kgames.com//game/20190517/20190517140048qiniu6081_.png"></span>
                            <div class="game_list_text">
                                <h1>决战沙城</h1>
                                <h2>传奇世界正版授权，全民抢BOSS，橙装人人有</h2>
                            </div>
                            <a class="pc-start-game" data-game="jzsc" data-desktop="1">开始</a>
                        </div>
                        <div class="game_list_con">
                            <span><img src="http://cache.99kgames.com//game/20200511/20200511175406qiniu8494_.png"></span>
                            <div class="game_list_text">
                                <h1>卓越传说</h1>
                                <h2>闯关就得vip，百万钻石送不停</h2>
                            </div>
                            <a class="pc-start-game" data-game="zycs" data-desktop="1">开始</a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div id="main_con" class="main_con" style="height: 637px; width: 401.111px; margin-left: -200.556px;">
            <div class="full_screen" style="right:-32px"><em></em>全屏模式</div>
            <div class="main_center posi_r">
                <!-- 游戏内容 -->
                <iframe id="iframe" src="${pageContext.request.contextPath}/game/list/page" frameborder="no" border="0px" marginwidth="0px" marginheight="0px" scrolling="auto" style="width: 100%; height: 100%;"></iframe>

                <!-- 登录弹框 -->
                <!-- 登录方式弹框 -->
                <div id="login-dialog" class="popup_bg" style="display: none;">
                    <div id="login-container" class="popup_back" style="margin-top:-135px;">
                        <h1>请选择登录方式
                            <span id="close-dialog"><img src="https://cdn.99kgames.com/images/close_gray.png"></span>
                        </h1>
                        <div class="denglu_way">
                            <ul class="clearfix">
                                <li>
                                    <span id="m-wechat-login" class="wechat_icon"><img src="https://cdn.99kgames.com/images/wechat_icon.png"></span>
                                    <p>微信登录</p>
                                </li>

                                <li>
                                    <span id="m-qq-login" class="QQ_icon"><img src="https://cdn.99kgames.com/images/QQ_icon.png"><em>推荐</em></span>
                                    <p>QQ登录</p>
                                </li>
                                <li>
                                    <span id="m-weibo-login" class="weibo_icon"><img src="https://cdn.99kgames.com/images/weibo_icon.png"></span>
                                    <p>微博登录</p>
                                </li>
                                <li>
                                    <span id="m-mobile-login" class="phone_icon"><img src="https://cdn.99kgames.com/images/phone_icon.png"></span>
                                    <p>手机登录</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div id="login-iframe-dialog" class="pame_pay" style="display: none; z-index: 3100;">
                    <iframe id="login-iframe" width="100%" height="100%"></iframe>
                    <div class="payframe_close"><img src="https://cdn.99kgames.com/images/close_gray.png"></div>
                </div>

                <div id="mobile-login-dialog" class="popup_bg" style="display:none; z-index: 3100;">
                    <div class="receive_success" style=" margin-top: -150px;">
                        <h1>手机号登录</h1>
                        <em class="close"><img src="https://cdn.99kgames.com/images/close_gray.png"></em>
                        <div class="phone_login_box">
                            <div class="phone_num">
                                <input id="mobile-input" type="tel" placeholder="请输入手机号">
                            </div>
                            <!--图形验证码-->
                            <div class="phone_num auth_code">
                                <input id="image-code" type="text" placeholder="请输入图形验证码">
                                <em class="db dn" id="code-clear"></em>
                                <span id="validate-code-image"><img src=""></span>
                            </div>
                            <div class="phone_num test_num">
                                <input id="verify-code" type="tel" placeholder="请输入语音验证码">
                                <span id="get-verifycode">获取语音验证码</span>
                            </div>
                            <p class="short_mess dn">收不到验证码？尝试短信验证码</p>
                            <div class="text_tip">温馨提示：请填写正确的图形验证码以及语音验证码，如获取不到语音验证码请尝试使用短信验证码。</div>
                        </div>
                        <div class="receive_btn" id="login"><a>登录</a></div>
                    </div>
                </div>

                <div id="wechat-pclogin-dialog" class="popup_bg" style="display: none;">
                    <div class="receive_success" style="margin-top: -135px; padding: 0 0 20px; height: 255px">
                        <h1>微信扫码登录</h1>
                        <em class="close"><img src="https://cdn.99kgames.com/images/close_gray.png"></em>
                        <div class="package_internol">
                            <div class="kefu_ewm_pic">
                                <span style="width: 170px; height: 170px;"><img></span>
                                <p>扫描上方二维码进行登录</p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- 收藏弹框 -->
                <div id="my-favorite-dialog" class="ewm_popup" style="display: none;">
                    <div class="shoucang_pop">
                        <p>请使用<span>Ctrl+D</span>进行一键收藏</p>
                        <a>我知道了</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="footer_box">
    <ul>
        <li class="wallow"><a target="_blank" href="/game/gw/wallow.html">防沉迷系统</a></li>
        <li class="monitor"><a target="_blank" href="/game/gw/monitor.html">家长监控</a></li>
        <li class="appeal"><a target="_blank" href="/game/gw/appeal.html">用户申诉</a></li>
        <li class="service"><a target="_blank" href="/game/gw/service.html">服务条款</a></li>
    </ul>
    <p><a target="_blank" href="https://cdn.99kgames.com/gw/licence_culture.html">京网文（2017）1361-110号</a> | <a target="_blank" href="https://cdn.99kgames.com/gw/licence_telecom.html">ICP证京B2-20170324</a> | 网站备案：京ICP备15063870号-2 | Copyright@99kgames.com</p>
    <p> 北京创力聚点科技有限公司&nbsp; &nbsp; &nbsp;北京市朝阳区广华居18号楼3层307内14号 &nbsp; &nbsp; &nbsp;联系电话：57225923</p>
</div>





</body></html>
