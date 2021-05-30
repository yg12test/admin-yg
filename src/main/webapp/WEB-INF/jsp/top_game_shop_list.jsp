<%--
  Created by IntelliJ IDEA.
  User: YG
  Date: 2021/5/18
  Time: 23:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
