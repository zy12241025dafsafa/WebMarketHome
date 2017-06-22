<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="common.jsp"%>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="${ctx}/resources/css/bootstrap/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="${ctx}/resources/css/product.css" />
    <link rel="stylesheet" type="text/css" href="${ctx}/resources/css/shouye.css" />
    <title>中国联通值哈士奇工</title>
</head>

<body>
    <!-- 页面头部引入-->
    <jsp:include page="header.jsp" flush="true"/>
    <div class="content">
        <ol class="breadcrumb">
            <li><a href="#">首页</a></li>
            <li><a href="#">产品列表</a></li>
            <li class="active">手机充值</li>
        </ol>
        <!-- 商品预览区，商品价格信息区，店铺信息区 -->
        <div class="category_div">
            <ul>
                <li>
                    <div class="categorys_area">
                        <div class="category_banner">
                            <div class="Xcontent06"><img src="${ctx}/resources/img/details/X1.png"></div>
                            <ol class="Xcontent08">
                                <div class="small_thumb"><img src="${ctx}/resources/img/details/X1.png"></div>
                                <div class="small_thumb"><img src="${ctx}/resources/img/details/X7.png"></div>
                                <div class="small_thumb"><img src="${ctx}/resources/img/details/X8.png"></div>
                                <div class="small_thumb"><img src="${ctx}/resources/img/details/X9.png"></div>
                                <div class="small_thumb"><img src="${ctx}/resources/img/details/X10.png"></div>
                            </ol>
                        </div>

                        <div class="category_detail">
                            <!-- 标题-->
                            <div><span class="title">250ml红牛维生素饮料</span><img class="ptag" src="${ctx}/resources/img/details/X11.png"></div>
                            <!-- 基本信息-->
                            <ul class="baisc">
                                <li>
                                    <p>
                                    <label class="name">售价</label><label class="price">￥<span>69.00</span></label>
                                    </p>
                                </li>
                                <li class="test">
                                    <p>
                                    <label class="name">促销</label>
                                    <img class="prop_img" src="${ctx}/resources/img/details/X12.png"><span class="promption">领610元新年礼券,满再赠好礼</span>
                                    </p>
                                </li>
                                <li>
                                    <p><label class="name">编号</label><span class="value">12289472193</span></p>
                                </li>
                                <li>
                                    <p>
                                    <label class="name">服务</label><span class="value">30天无忧退货&nbsp;&nbsp;&nbsp;&nbsp;       48小时快速退款 &nbsp;&nbsp;&nbsp;&nbsp;        满88元免邮</span>
                                    </p>
                                </li>
                            </ul>
                            <!-- 颜色-->
                            <div class="color_box">
                                <p>颜色</p>
                                <ul>
                                    <li><div><img src="${ctx}/resources/img/details/X14.png"></div></li>
                                    <li><div><img src="${ctx}/resources/img/details/X1.png"></div></li>
                                </ul>
                            </div>

                            <%--<div style="border: 1px solid #FA5000;height: 100px;padding: 0px;margin: 0px">--%>
                                <%--<span style="float: left;border: 1px solid #f00;margin: 0px">数量</span>--%>
                                <%--<p style="float: left;margin-left: 50px;">--%>
                                    <%--<a href="#"><img src="${ctx}/resources/img/X17.png"/></a>--%>
                                    <%--<a href="#"><img src="${ctx}/resources/img/X18.png"/></a>--%>
                                <%--</p>--%>
                            <%--</div>--%>

                            <!-- 数量-->
                            <div class="count_box">
                                <div>
                                <span class="count">数量</span>
                                <div class="delete"><img src="${ctx}/resources/img/details/X15.png"></div>
                                <form><input class="input" value="1"></form>
                                <div class="add"><img src="${ctx}/resources/img/details/X16.png"></div>
                                </div>
                            </div>

                            <!--加入购物车或购买-->
                            <div class="btns">
                                <a href="#"><img src="${ctx}/resources/img/X17.png"/></a>
                                <a href="#"><img src="${ctx}/resources/img/X18.png"/></a>
                            </div>

                        </div>
                        <%--<div class="category_store">--%>
                            <%--<span>春花秋月</span>--%>
                            <%--<ul>--%>
                                <%--<li><a href="index.jsp"><label>服务电话:13123123</label></a></li>--%>
                                <%--<li><a href="index.jsp"><label>营业时间:24小时</label></a></li>--%>
                                <%--<li><a href="index.jsp"><label>screen sline</label></a></li>--%>
                            <%--</ul>--%>
                        <%--</div>--%>
                    </div>
                </li>
            </ul>
        </div>
        <!-- end商品预览区，商品价格信息区，店铺信息区 -->

        <div class="detail_tabs">
            <!-- tab标签 -->
            <ul class="nav nav-tabs">
                <li class="active"><a href="#detail" data-toggle="tab">商品详情</a></li>
                <li><a href="#ios" data-toggle="tab">规格参数</a></li>
                <li><a href="#service" data-toggle="tab">售后服务</a></li>
                <li><a href="#pro_comment" data-toggle="tab">商品评价</a></li>
                <li><a href="#com_chat" data-toggle="tab">社区互动</a></li>
            </ul>
            <!-- 每个tab页对应的内容 -->
            <div id="myTabContent" class="tab-content">
                <div class="tab-pane fade in active" id="detail">
                    <p>W3Cschoool菜鸟教程是一个提供最新的web技术站点。</p>
                </div>
                <div class="tab-pane fade" id="ios">
                    <p>iOS 是一个由苹果公司开发和发布的手机操作系统。</p>
                </div>
                <div class="tab-pane fade" id="service">
                    <p>jMeter 是一款开源的测试软件。</p>
                </div>
                <div class="tab-pane fade" id="pro_comment">
                    <p>商品评价</p>
                </div>
                <div class="tab-pane fade" id="com_chat">
                    <p>社区互动</p>
                </div>
            </div>
        </div>

    </div>
    <!-- 引入尾部 -->
    <jsp:include page="footer.jsp" flush="true"/>

    <script language="javascript" type="text/javascript" src="${ctx}/resources/js/bootstrap/jquery-3.2.1.min.js"> </script>
    <script language="javascript" type="text/javascript" src="${ctx}/resources/js/bootstrap/bootstrap.min.js"> </script>
    <script src="${ctx}/resources/js/index.js" type="text/javascript"></script>
    <script src="${ctx}/resources/js/modernizr-custom-v2.7.1.min.js"></script>
    <script>
        $(document).ready(function(){
            var $miaobian=$('.Xcontent08>div');
            var $huantu=$('.Xcontent06>img');
            var $miaobian1=$('.Xcontent26>div');
            $miaobian.mousemove(function(){miaobian(this);});
            $miaobian1.click(function(){miaobian1(this);});
            function miaobian(thisMb){
                for(var i=0; i<$miaobian.length; i++){
                    $miaobian[i].style.borderColor = '#dedede';
                }
                thisMb.style.borderColor = '#cd2426';
                $huantu[0].src = thisMb.children[0].src;
            }
            function miaobian1(thisMb1){
                for(var i=0; i<$miaobian1.length; i++){
                    $miaobian1[i].style.borderColor = '#dedede';
                }
                //		thisMb.style.borderColor = '#cd2426';
                $miaobian.css('border-color','#dedede');
                thisMb1.style.borderColor = '#cd2426';
                $huantu[0].src = thisMb1.children[0].src;
            }
            $(".Xcontent33").click(function(){
                var value=parseInt($('.input').val())+1;
                $('.input').val(value);
            })

            $(".Xcontent32").click(function(){
                var num = $(".input").val()
                if(num>0){
                    $(".input").val(num-1);
                }
            })
        })
    </script>

</body>

<html>

