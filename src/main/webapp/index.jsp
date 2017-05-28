<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<html>

<head>
    <title>名牌汇商城</title>
    <link rel="stylesheet" type="text/css" href="${ctx}/resources/css/bootstrap/bootstrap.css" />
    <link href="${ctx}/resources/css/index_main.css" rel="stylesheet" type="text/css"/>
</head>

<body>

    <div class="banner_top">
        <a href="index.jsp"><img src="${ctx}/resources/img/gallery/item_img1.jpg"/></a>
    </div>

    <div class="welcome">
        <ul>
            <li class="exit_sys"><a class="exit_system" href="index.jsp">退出系统</a></li>
            <li class="msg"><a href="IndexAction_jumpMessage.json">站内信(21)<span class="count">${count}</span></a></li>
            <li class="user"><span>欢迎您,zhangy${session.phone}</span></li>
            <li class="saler_enter"><a href="sale_enter.json"><span>卖家入口></span></a></li>
        </ul>
    </div>

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


    <!-- 产品分类及推荐产品轮播区 -->
    <div class="category_banner_area">
        <div class="content">
            <!-- 热门分类标签栏-->
            <div class="hot_category_bar">
                <div class="all_category"><label>CATEGORY</label><a href="index.jsp">See All ></a></div>
                <ul>
                    <li><a><label>Brand Design Belts</label></a></li>
                    <li><a><label>Women Chothes</label></a></li>
                    <li><a><label>Bestselling</label></a></li>
                    <li><a><label>Tech Discovery</label></a></li>
                </ul>
            </div>
            <!-- end 热门分类栏-->
            <div>
                <!-- 商品分类 -->
                <div class="category">
                    <ul>
                        <li><a href="index.jsp"><label>皮带</label></a></li>
                        <li><a href="index.jsp"><label>珠宝</label></a></li>
                        <li><a href="index.jsp"><label>运动</label></a></li>
                        <li><a href="index.jsp"><label>冬季女装</label></a></li>
                        <li><a href="index.jsp"><label>假发</label></a></li>
                        <li><a href="index.jsp"><label>科技</label></a></li>
                        <li><a href="index.jsp"><label>家居用品 </label></a></li>
                    </ul>

                </div>
                <!-- 轮播区 -->
                <div class="banner">
                    <%--<img src="${ctx}/resources/img/gallery/image1.jpg">--%>
                        <div id="slidershow" class="carousel slide">
                            <!-- 设置图片轮播的顺序 -->
                            <ol class="carousel-indicators">
                                <li class="active" data-target="#slidershow" data-slide-to="0"></li>
                                <li data-target="#slidershow" data-slide-to="1"></li>
                                <li data-target="#slidershow" data-slide-to="2"></li>
                                <li data-target="#slidershow" data-slide-to="3"></li>
                                <li data-target="#slidershow" data-slide-to="4"></li>
                                <li data-target="#slidershow" data-slide-to="5"></li>
                            </ol>
                            <!-- 设置轮播图片 -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <a class="banner_img" href="##"><img src="${ctx}/resources/img/works/img1.jpg" alt=""></a>
                                    <%--<div class="carousel-caption">--%>
                                        <%--<h3>图片标题1</h3>--%>
                                        <%--<p>描述内容1...</p>--%>
                                    <%--</div>--%>
                                </div>
                                <div class="item">
                                    <a class="banner_img" href="##"><img src="${ctx}/resources/img/works/img2.jpg" alt=""></a>
                                </div>
                                <div class="item">
                                    <a class="banner_img" href="##"><img src="${ctx}/resources/img/works/img3.jpg" alt=""></a>
                                </div>
                                <div class="item">
                                    <a class="banner_img" href="##"><img src="${ctx}/resources/img/works/img4.jpg" alt=""></a>
                                </div>
                                <div class="item">
                                    <a class="banner_img" href="##"><img src="${ctx}/resources/img/works/img5.jpg" alt=""></a>
                                </div>
                                <div class="item">
                                    <a class="banner_img" href="##"><img src="${ctx}/resources/img/works/img6.jpg" alt=""></a>
                                </div>
                            </div>
                            <a class="left carousel-control" href="#" role="button">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#" role="button">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                </div>
                <!-- 推荐商店-->
                <div class="recomand_stores">
                    <img src="${ctx}/resources/img/pages/img1_2.png">
                </div>
            </div>
        </div>
    </div>
    <!-- end产品分类及推荐产品轮播区 -->

    <!-- 打折促销产品区 -->
    <div class="second_div">
        <div class="index_text"><p>Discount Area</p></div>
        <div class="discount_area">
            <div class="row">
                    <div class="col-md-3">
                        <a herf="#" class="thumbnail">
                            <img src="${ctx}/resources/img/gallery/image1.jpg" style="height:180px;width:100%;display: block">
                        </a>
                    </div>
                    <div class="col-md-3">
                        <a herf="#" class="thumbnail">
                            <img src="${ctx}/resources/img/gallery/image2.jpg" style="height:180px;width:100%;display: block">
                        </a>
                    </div>
                    <div class="col-md-3">
                        <a herf="#" class="thumbnail">
                            <img src="${ctx}/resources/img/gallery/image3.jpg" style="height:180px;width:100%;display: block">
                        </a>
                    </div>
                    <div class="col-md-3">
                        <a herf="#" class="thumbnail" >
                            <img src="${ctx}/resources/img/gallery/image4.jpg" style="height:180px;width:100%;display: block">
                        </a>
                    </div>
                </div>
            <div class="row">
                    <div class="col-md-3">
                        <a herf="#" class="thumbnail">
                            <img src="${ctx}/resources/img/gallery/image5.jpg" style="height:180px;width:100%;display: block">
                        </a>
                    </div>
                    <div class="col-md-3">
                        <a herf="#" class="thumbnail">
                            <img src="${ctx}/resources/img/gallery/image2.jpg" style="height:180px;width:100%;display: block">
                        </a>
                    </div>
                    <div class="col-md-3">
                        <a herf="#" class="thumbnail">
                            <img src="${ctx}/resources/img/gallery/image4.jpg" style="height:180px;width:100%;display: block">
                        </a>
                    </div>
                    <div class="col-md-3">
                        <a herf="#" class="thumbnail" >
                            <img src="${ctx}/resources/img/gallery/image1.jpg" style="height:180px;width:100%;display: block">
                        </a>
                    </div>
                </div>
        </div>
    </div>
    <!-- end打折促销产品区 -->

    <!-- 分类推荐区 -->
    <div class="third_div">
        <div class="index_text"><p>Hot Category Area</p></div>
        <div class="categorys_area">
            <div class="row">
                <div class="col-md-3">
                    <a herf="#" class="thumbnail">
                        <img src="${ctx}/resources/img/gallery/image1.jpg" style="height:180px;width:100%;display: block">
                    </a>
                </div>
                <div class="col-md-3">
                    <a herf="#" class="thumbnail">
                        <img src="${ctx}/resources/img/gallery/image2.jpg" style="height:180px;width:100%;display: block">
                    </a>
                </div>
                <div class="col-md-3">
                    <a herf="#" class="thumbnail">
                        <img src="${ctx}/resources/img/gallery/image3.jpg" style="height:180px;width:100%;display: block">
                    </a>
                </div>
                <div class="col-md-3">
                    <a herf="#" class="thumbnail" >
                        <img src="${ctx}/resources/img/gallery/image4.jpg" style="height:180px;width:100%;display: block">
                    </a>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <a herf="#" class="thumbnail">
                        <img src="${ctx}/resources/img/gallery/image5.jpg" style="height:180px;width:100%;display: block">
                    </a>
                </div>
                <div class="col-md-3">
                    <a herf="#" class="thumbnail">
                        <img src="${ctx}/resources/img/gallery/image2.jpg" style="height:180px;width:100%;display: block">
                    </a>
                </div>
                <div class="col-md-3">
                    <a herf="#" class="thumbnail">
                        <img src="${ctx}/resources/img/gallery/image4.jpg" style="height:180px;width:100%;display: block">
                    </a>
                </div>
                <div class="col-md-3">
                    <a herf="#" class="thumbnail" >
                        <img src="${ctx}/resources/img/gallery/image1.jpg" style="height:180px;width:100%;display: block">
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- end打折促销产品区 -->

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
<script language="javascript" type="text/javascript" src="${ctx}/resources/js/bootstrap/bootstrap.min.js"> </script>
<script type="text/javascript" src="${ctx}/resources/js/jqthumb.min.js"></script>
<script type="text/javascript" src="${ctx}/resources/js/jQuery.asyncLoading.js"></script>
<script src="${ctx}/resources/js/index.js" type="text/javascript"></script>

</body>
</html>
