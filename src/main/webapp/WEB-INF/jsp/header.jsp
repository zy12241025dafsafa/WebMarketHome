<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="common.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <link rel="stylesheet" type="text/css" href="${ctx}/resources/css/bootstrap/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="${ctx}/resources/css/header.css" />
    <style type="text/css"></style>
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
</body>
<html>





