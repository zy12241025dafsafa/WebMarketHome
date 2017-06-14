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

    <!-- 页面头部引入-->
    <jsp:include page="WEB-INF/jsp/header.jsp"/>

    <!-- 产品分类及产品轮播区 -->
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
                            <img src="${ctx}/resources/img/gallery/image1.jpg">
                        </a>
                    </div>
                    <div class="col-md-3">
                        <a herf="#" class="thumbnail">
                            <img src="${ctx}/resources/img/gallery/image2.jpg">
                        </a>
                    </div>
                    <div class="col-md-3">
                        <a herf="#" class="thumbnail">
                            <img src="${ctx}/resources/img/gallery/image3.jpg">
                        </a>
                    </div>
                    <div class="col-md-3">
                        <a herf="#" class="thumbnail" >
                            <img src="${ctx}/resources/img/gallery/image4.jpg">
                        </a>
                    </div>
                </div>
            <div class="row">
                    <div class="col-md-3">
                        <a herf="#" class="thumbnail">
                            <img src="${ctx}/resources/img/gallery/image5.jpg">
                        </a>
                    </div>
                    <div class="col-md-3">
                        <a herf="#" class="thumbnail">
                            <img src="${ctx}/resources/img/gallery/image2.jpg">
                        </a>
                    </div>
                    <div class="col-md-3">
                        <a herf="#" class="thumbnail">
                            <img src="${ctx}/resources/img/gallery/image4.jpg">
                        </a>
                    </div>
                    <div class="col-md-3">
                        <a herf="#" class="thumbnail" >
                            <img src="${ctx}/resources/img/gallery/image1.jpg">
                        </a>
                    </div>
                </div>
        </div>
    </div>
    <!-- end打折促销产品区 -->

    <!-- 分类推荐区 -->
    <div class="category_div">
        <ul>
            <!-- 科技类-->
            <li>
                <div class="categorys_area">
                    <div class="category_list">
                        <span>Tech & PhoneSet</span>
                        <ul>
                            <li><a href="index.jsp"><label>cell phone</label></a></li>
                            <li><a href="index.jsp"><label>fly plane</label></a></li>
                            <li><a href="index.jsp"><label>screen sline</label></a></li>
                            <li><a href="index.jsp"><label>watch phone</label></a></li>
                            <li><a href="index.jsp"><label>art technology</label></a></li>
                            <li><a href="index.jsp"><label>ali inner</label></a></li>
                            <li><a href="index.jsp"><label>pad poll</label></a></li>
                        </ul>
                    </div>
                    <div class="category_banner">
                        <div id="slidershow_tech" class="carousel slide">
                            <!-- 设置图片轮播的顺序 -->
                            <ol class="carousel-indicators">
                                <li class="active" data-target="#slidershow_tech" data-slide-to="0"></li>
                                <li data-target="#slidershow_tech" data-slide-to="1"></li>
                                <li data-target="#slidershow_tech" data-slide-to="2"></li>
                                <li data-target="#slidershow_tech" data-slide-to="3"></li>
                            </ol>
                            <!-- 设置轮播图片 -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <a class="banner_img" href="##"><img src="${ctx}/resources/img/category/1.jpg" alt=""></a>
                                </div>
                                <div class="item">
                                    <a class="banner_img" href="##"><img src="${ctx}/resources/img/category/2.jpg" alt=""></a>
                                </div>
                                <div class="item">
                                    <a class="banner_img" href="##"><img src="${ctx}/resources/img/category/3.jpg" alt=""></a>
                                </div>
                                <div class="item">
                                    <a class="banner_img" href="##"><img src="${ctx}/resources/img/category/4.jpg" alt=""></a>
                                </div>
                            </div>
                            <a class="left carousel-control" href="#" onclick="return false" role="button">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#" onclick="return false" role="button">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>
                    <div class="category_items">
                        <div class="row">
                            <div class="col-md-6">
                                <a herf="#" class="thumbnail">
                                    <img src="${ctx}/resources/img/gallery/image1.jpg">
                                </a>
                            </div>
                            <div class="col-md-6">
                                <a herf="#" class="thumbnail">
                                    <img src="${ctx}/resources/img/gallery/image2.jpg">
                                </a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <a herf="#" class="thumbnail">
                                    <img src="${ctx}/resources/img/gallery/image4.jpg">
                                </a>
                            </div>
                            <div class="col-md-6">
                                <a herf="#" class="thumbnail">
                                    <img src="${ctx}/resources/img/gallery/image5.jpg">
                                </a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <a herf="#" class="thumbnail">
                                    <img src="${ctx}/resources/img/gallery/image2.jpg">
                                </a>
                            </div>
                            <div class="col-md-6">
                                <a herf="#" class="thumbnail">
                                    <img src="${ctx}/resources/img/gallery/image3.jpg">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
            <!-- 女装类-->
            <li>
                <div class="categorys_area">
                    <div class="category_list">
                        <span>Women Clothes</span>
                        <ul>
                            <li><a href="index.jsp"><label>Dresses</label></a></li>
                            <li><a href="index.jsp"><label>Blouses & Shirts</label></a></li>
                            <li><a href="index.jsp"><label>Jumppsuits</label></a></li>
                            <li><a href="index.jsp"><label>Jackets</label></a></li>
                            <li><a href="index.jsp"><label>Trench Coasts</label></a></li>
                            <li><a href="index.jsp"><label>Sunglasses</label></a></li>
                            <li><a href="index.jsp"><label>pad poll</label></a></li>
                        </ul>
                    </div>
                    <div class="category_banner">
                        <div id="slidershow_wc" class="carousel slide">
                            <!-- 设置图片轮播的顺序 -->
                            <ol class="carousel-indicators">
                                <li class="active" data-target="#slidershow_wc" data-slide-to="0"></li>
                                <li data-target="#slidershow_wc" data-slide-to="1"></li>
                                <li data-target="#slidershow_wc" data-slide-to="2"></li>
                                <li data-target="#slidershow_wc" data-slide-to="3"></li>
                            </ol>
                            <!-- 设置轮播图片 -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <a class="banner_img" href="##"><img src="${ctx}/resources/img/category/5.jpg" alt=""></a>
                                </div>
                                <div class="item">
                                    <a class="banner_img" href="##"><img src="${ctx}/resources/img/category/6.jpg" alt=""></a>
                                </div>
                                <div class="item">
                                    <a class="banner_img" href="##"><img src="${ctx}/resources/img/category/7.jpg" alt=""></a>
                                </div>
                                <div class="item">
                                    <a class="banner_img" href="##"><img src="${ctx}/resources/img/category/8.jpg" alt=""></a>
                                </div>
                            </div>
                            <a class="left carousel-control" href="#" onclick="return false" role="button">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#" onclick="return false" role="button">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>
                    <div class="category_items">
                        <div class="row">
                            <div class="col-md-6">
                                <a herf="#" class="thumbnail">
                                    <img src="${ctx}/resources/img/gallery/image1.jpg">
                                </a>
                            </div>
                            <div class="col-md-6">
                                <a herf="#" class="thumbnail">
                                    <img src="${ctx}/resources/img/gallery/image2.jpg">
                                </a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <a herf="#" class="thumbnail">
                                    <img src="${ctx}/resources/img/gallery/image4.jpg">
                                </a>
                            </div>
                            <div class="col-md-6">
                                <a herf="#" class="thumbnail">
                                    <img src="${ctx}/resources/img/gallery/image5.jpg">
                                </a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <a herf="#" class="thumbnail">
                                    <img src="${ctx}/resources/img/gallery/image2.jpg">
                                </a>
                            </div>
                            <div class="col-md-6">
                                <a herf="#" class="thumbnail">
                                    <img src="${ctx}/resources/img/gallery/image3.jpg">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
    <!-- end分类推荐区 -->

    <!-- 推荐产品区 -->
    <div class="recommand_div">
        <div class="index_text"><p>Recommand Area</p></div>
        <div class="recommand_area">
            <div class="row">
                <div class="col-md-3">
                    <a href="#" class="thumbnail">
                        <img src="${ctx}/resources/img/gallery/image1.jpg">
                        <div class="product_info">
                            <label class="price">$36.00</label><br>
                            <label class="discount_price">$24.00</label><br>
                            <label class="stars">*****</label>
                            <label class="order">15 orders</label>
                        </div>
                    </a>
                </div>
                <div class="col-md-3">
                    <a href="#" class="thumbnail">
                        <img src="${ctx}/resources/img/gallery/image2.jpg">
                        <div class="product_info">
                            <label class="price">$36.00</label><br>
                            <label class="discount_price">$24.00</label><br>
                            <label class="stars">*****</label>
                            <label class="order">15 orders</label>
                        </div>
                    </a>
                </div>
                <div class="col-md-3">
                    <a href="#" class="thumbnail">
                        <img src="${ctx}/resources/img/gallery/image3.jpg">
                        <div class="product_info">
                            <label class="price">$36.00</label><br>
                            <label class="discount_price">$24.00</label><br>
                            <label class="stars">*****</label>
                            <label class="order">15 orders</label>
                        </div>
                    </a>
                </div>
                <div class="col-md-3">
                    <a href="#" class="thumbnail" >
                        <img src="${ctx}/resources/img/gallery/image4.jpg">
                        <div class="product_info">
                            <label class="price">$36.00</label><br>
                            <label class="discount_price">$24.00</label><br>
                            <label class="stars">*****</label>
                            <label class="order">15 orders</label>
                        </div>
                    </a>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <a href="#" class="thumbnail">
                        <img src="${ctx}/resources/img/gallery/image1.jpg">
                        <div class="product_info">
                            <label class="price">$36.00</label><br>
                            <label class="discount_price">$24.00</label><br>
                            <label class="stars">*****</label>
                            <label class="order">15 orders</label>
                        </div>
                    </a>
                </div>
                <div class="col-md-3">
                    <a href="#" class="thumbnail">
                        <img src="${ctx}/resources/img/gallery/image2.jpg">
                        <div class="product_info">
                            <label class="price">$36.00</label><br>
                            <label class="discount_price">$24.00</label><br>
                            <label class="stars">*****</label>
                            <label class="order">15 orders</label>
                        </div>
                    </a>
                </div>
                <div class="col-md-3">
                    <a href="#" class="thumbnail">
                        <img src="${ctx}/resources/img/gallery/image3.jpg">
                        <div class="product_info">
                            <label class="price">$36.00</label><br>
                            <label class="discount_price">$24.00</label><br>
                            <label class="stars">*****</label>
                            <label class="order">15 orders</label>
                        </div>
                    </a>
                </div>
                <div class="col-md-3">
                    <a href="/product?pid=12" class="thumbnail" >
                        <img src="${ctx}/resources/img/gallery/image4.jpg">
                        <div class="product_info">
                            <label class="price">$36.00</label><br>
                            <label class="discount_price">$24.00</label><br>
                            <label class="stars">*****</label>
                            <label class="order">15 orders</label>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- end推荐产品区 -->
    <jsp:include page="WEB-INF/jsp/footer.jsp"/>

<script language="javascript" type="text/javascript" src="${ctx}/resources/js/bootstrap/jquery-3.2.1.min.js"> </script>
<script language="javascript" type="text/javascript" src="${ctx}/resources/js/bootstrap/bootstrap.min.js"> </script>
<script type="text/javascript" src="${ctx}/resources/js/jqthumb.min.js"></script>
<script type="text/javascript" src="${ctx}/resources/js/jQuery.asyncLoading.js"></script>
<script src="${ctx}/resources/js/index.js" type="text/javascript"></script>

</body>
</html>
