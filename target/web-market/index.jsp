<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<html>

<head>
    <title>名牌汇商城</title>
    <link href="${ctx}/resources/css/index_main.css" rel="stylesheet" type="text/css"/>
</head>

<body>

    <%--<div id="welcome">--%>
        <%--<ul>--%>
            <%--<li class="exit_sys"><a class="exit_system" href="index.jsp">退出系统</a></li>--%>
            <%--<li class="msg"><a href="IndexAction_jumpMessage.json">站内信<span class="count">--%>
                <%--${count}</span></a></li>--%>
            <%--<li class="user"><div><span>欢迎您,${session.phone}</span></div></li>--%>
        <%--</ul>--%>
    <%--</div>--%>

    <!-- 分类，LOGO，搜索框，购物车，收藏清单(wishlist),用户中心(登陆，注册等) -->
    <div class="main_header">
        <div class="right_layout">
            <div class="logo_pic">
                <img src="${ctx}/resources/img/logo.jpg">
            </div>
        </div>
        <div class="search_bar">
            <input class="search_input" placeholder="请输入关键字..." type="text" name="keyword"/>
            <div class="search_button">
                <a href="/cart.json"><span>搜索</span></a>
            </div>
        </div>
        <div class="left_layout">
            <span class="login_user">${session.phone}</span>
            <ul>
                <li><img src="${ctx}/resources/img/flags/cn.png">
                    <a class="cart_show" href="cart.json">Cart(${cart_count})</a></li>
                <li><img src="${ctx}/resources/img/flags/ci.png">
                    <a class="wishlist_show" href="wishlist.json">Wish List(${wishlist_count})</a></li>
                <li class="login_in"><img src="${ctx}/resources/img/flags/it.png">
                    <a class="user" href="login_actionLogin.json">Login In</a></li>
                <li class="login_out"><img src="${ctx}/resources/img/flags/mh.png">
                    <a class="user" >Login Out</a></li>
            </ul>

            <ul class="user_list">
                <li>My Order</li>
                <li>User Center</li>
                <li>Messages Center</li>
            </ul>

        </div>
    </div>

    <%--<!-- 产品分类及推荐产品轮播区 -->--%>
    <%--<div class="first_div">--%>
        <%--<ul>--%>
            <%--<!-- 分类 -->--%>
            <%--<li><div class="category"><ul></ul></div></li>--%>
            <%--<!-- 轮播区 -->--%>
            <%--<li>--%>
                <%--<div class="banner">--%>
                    <%--<div id="focus">--%>
                        <%--<ul>--%>
                            <%--<li class="li_1"><img src="${ctx}/resources/img/banner.png"></li>--%>
                            <%--<li class="li_2"><img src="${ctx}/resources/img/banner.png"></li>--%>
                            <%--<li class="li_3"><img src="${ctx}/resources/img/banner.png"></li>--%>
                            <%--<li class="li_4"><img src="${ctx}/resources/img/banner.png"></li>--%>
                            <%--<li class="li_5"><img src="${ctx}/resources/img/banner.png"></li>--%>
                        <%--</ul>--%>
                    <%--</div>--%>
                    <%--<!--focus end-->--%>
                    <%--<!-- 商家推荐品展示区 -->--%>
                    <%--<div class="recommend_area">--%>
                        <%--<div class="recommend_text"><span>Recommend Products</span></div>--%>

                    <%--</div>--%>
                <%--</div>--%>
            <%--</li>--%>
            <%--<!-- 每周热销品 -->--%>
            <%--<li>--%>
                <%--<div class="weekly_area">--%>
                    <%--<div class="index_top_selling"><span>每周热卖品</span></div>--%>
                <%--</div>--%>
            <%--</li>--%>
        <%--</ul>--%>
    <%--</div>--%>
    <%--<!-- end产品分类及推荐产品轮播区 -->--%>

    <%--<!-- 打折促销产品区 -->--%>
    <%--<div class="second_div">--%>
        <%--<div class="index_text"><span>打折促销区</span></div>--%>
        <%--<div class="discount_area">--%>

        <%--</div>--%>
    <%--</div>--%>
    <%--<!-- end打折促销产品区 -->--%>

    <%--<!-- 新品推荐区 -->--%>
    <%--<div class="three_div">--%>
        <%--<div class="index_text"><span>新品推荐区</span></div>--%>
        <%--<div class="new_area">--%>

        <%--</div>--%>
    <%--</div>--%>
    <%--<!-- end新品推荐区 -->--%>

    <%--<!-- 联系方式，网站说明，合作伙伴 -->--%>
    <%--<div class="end_div">--%>
        <%--<!-- 购物指南，支付方式，订单服务，配送方式，退换货，商家服务 -->--%>
        <%--<div class="div1">--%>
            <%--<ul>--%>
                <%--<li>--%>
                    <%--<div class="buy_index">--%>
                        <%--<span>购物指南</span>--%>
                        <%--<ul>--%>
                            <%--<li><a class="a1" href="/cart.json">购物流程</a></li>--%>
                            <%--<li><a class="a2" href="/wishlist.json">发票制度</a></li>--%>
                            <%--<li><a class="a3" href="/usercenter.json">帐户管理</a></li>--%>
                            <%--<li><a class="a4" href="/cart.json">会员优惠</a></li>--%>
                        <%--</ul>--%>
                    <%--</div>--%>
                <%--</li>--%>

                <%--<li>--%>
                    <%--<!-- 支付方式 -->--%>
                    <%--<div class="pay_index">--%>
                        <%--<span>支付方式</span>--%>
                        <%--<ul>--%>
                            <%--<li><a class="a1" href="/cart.json">货到付款</a></li>--%>
                            <%--<li><a class="a2" href="/wishlist.json">网上支付</a></li>--%>
                            <%--<li><a class="a3" href="/usercenter.json">汇积分支付</a></li>--%>
                            <%--<li><a class="a4" href="/cart.json">银行转帐</a></li>--%>
                        <%--</ul>--%>
                    <%--</div>--%>
                <%--</li>--%>

                <%--<li>--%>
                    <%--<!-- 订单服务 -->--%>
                    <%--<div class="order_index">--%>
                        <%--<span>订单服务</span>--%>
                        <%--<ul>--%>
                            <%--<li><a class="a1" href="/cart.json">订单配送查询</a></li>--%>
                            <%--<li><a class="a2" href="/wishlist.json">订单状态说明</a></li>--%>
                            <%--<li><a class="a3" href="/usercenter.json">自助取消订单</a></li>--%>
                            <%--<li><a class="a4" href="/cart.json">自助修改订单</a></li>--%>
                        <%--</ul>--%>
                    <%--</div>--%>
                <%--</li>--%>

                <%--<li>--%>
                    <%--<!-- 配送方式 -->--%>
                    <%--<div class="delivery_index">--%>
                        <%--<span>配送方式</span>--%>
                        <%--<ul>--%>
                            <%--<li><a class="a1" href="/cart.json">配送范围及免邮标准</a></li>--%>
                            <%--<li><a class="a4" href="/cart.json">验货与签收</a></li>--%>
                        <%--</ul>--%>
                    <%--</div>--%>
                <%--</li>--%>


                <%--<li>--%>
                    <%--<!-- 退换货 -->--%>
                    <%--<div class="return_package_index">--%>
                        <%--<span>退换货</span>--%>
                        <%--<ul>--%>
                            <%--<li><a class="a1" href="/cart.json">退换货政策</a></li>--%>
                            <%--<li><a class="a2" href="/wishlist.json">自助申请退换货</a></li>--%>
                            <%--<li><a class="a3" href="/usercenter.json">退换货进度查询</a></li>--%>
                            <%--<li><a class="a4" href="/cart.json">退款方式和时间</a></li>--%>
                        <%--</ul>--%>
                    <%--</div>--%>
                <%--</li>--%>
            <%--</ul>--%>
        <%--</div>--%>
        <%--<!-- end -->--%>
        <%--<!--  合作伙伴 -->--%>
        <%--<div class="div2">--%>
            <%--<span class="pertner_text">合作伙伴:</span>--%>
            <%--<ul>--%>
                <%--<li><img style="width: 30px;margin-left: 10px;margin-right: 10px"--%>
                         <%--src="${ctx}/resources/img/i_sicon2.jpg"></li>--%>
                <%--<li><img style="width: 30px;margin-left: 10px;margin-right: 10px"--%>
                         <%--src="${ctx}/resources/img/i_sicon2.jpg"></li>--%>
                <%--<li><img style="width: 30px;margin-left: 10px;margin-right: 10px"--%>
                         <%--src="${ctx}/resources/img/i_sicon2.jpg"></li>--%>
                <%--<li><img style="width: 30px;margin-left: 10px;margin-right: 10px"--%>
                         <%--src="${ctx}/resources/img/i_sicon2.jpg"></li>--%>
            <%--</ul>--%>
        <%--</div>--%>
    <%--</div>--%>
    <%--<!-- end 联系方式，网站说明，合作伙伴等-->--%>



<script language="javascript" type="text/javascript" src="${ctx}/resources/js/bootstrap/jquery-3.2.1.min.js"> </script>
<script type="text/javascript" src="${ctx}/resources/js/jqthumb.min.js"></script>
<script type="text/javascript" src="${ctx}/resources/js/jQuery.asyncLoading.js"></script>
<%--<script src="${ctx}/resources/js/index.js" type="text/javascript"></script>--%>

</body>
</html>
