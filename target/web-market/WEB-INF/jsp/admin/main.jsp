<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="../common.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <link rel="stylesheet" type="text/css" href="${ctx}/resources/css/bootstrap/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="${ctx}/resources/css/main.css" />
    <title>诚易网上商城</title>
    <style type="text/css"></style>
</head>
<body>
<!-- 导航栏部分 -->
<div class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <div class="navbar-brand">
                <small class="glyphicon glyphicon-shopping-cart"></small>
                诚易商城后台管理系统
            </div>
        </div>
        <ul class="nav navbar-nav nav-stacked navbar-right">
            <li>
                <a href="#">
                    <span class="glyphicon glyphicon-bookmark"></span>
                    <i class="badge">2</i>
                </a>
            </li>
            <li>
                <a href="#">
                    <span class="glyphicon glyphicon-bell"></span>
                    <i class="badge">1</i>
                </a>
            </li>
            <li>
                <a href="#">
                    <span class="glyphicon glyphicon-envelope"></span>
                    <i class="badge">1</i>
                </a>
            </li>
            <li>
                <a href="#" data-toggle="dropdown">
                    <img class="img-circle" src="user_photo.png" width="30" height="30"/>
                    <small>欢迎您</small>
                    admin
                    <span class="caret"></span>
                </a>
                <ul class="nav nav-pills nav-stacked dropdown-menu">
                    <li class="active">
                        <a href="#">
                            <span class="glyphicon glyphicon-cog"></span> 设置
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <span class="glyphicon glyphicon-user"></span> 个人中心
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <span class="glyphicon glyphicon-off"></span> 退出
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</div>

<!-- 页面部分 -->
<div class="row">
    <div class="col-sm-2">
        <%--<div id="search">
            <div class="input-group">
                <input class="form-control input-sm" type="text" />
                <div class="input-group-btn">
                    <a href="#" class="btn btn-success btn-sm">
                        <span class="glyphicon glyphicon-search"></span>
                    </a>
                </div>
            </div>
        </div>--%>
        <div class="menu">
            <div class="panel-group" id="box">

            <div class="panel panel-default">
                <div class="panel-heading">
                    <a href="#collapseA" data-parent="#box" data-toggle="collapse" class="panel-title">
                        <i class="glyphicon glyphicon-align-justify"></i>
                        <span class="menu_span">店铺管理</span></a>
                </div>
                <div class="panel-collapse collapse " id="collapseA">
                    <div class="panel-body">
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="#"><i class="glyphicon glyphicon-chevron-right"></i>
                                <span class="menu_span">店铺装修</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
                    <a href="#collapseB" data-parent="#box" data-toggle="collapse" class="panel-title">
                        <i class="glyphicon glyphicon-align-justify"></i>
                        <span class="menu_span">商品管理</span></a>
                </div>
                <div class="panel-collapse collapse in" id="collapseB">
                    <div class="panel-body">
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="#"><i class="glyphicon glyphicon-chevron-right"></i>
                                <span class="menu_span">商品列表</span></a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-chevron-right"></i>
                                <span class="menu_span">发布商品</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
                    <a href="#collapseC" data-parent="#box" data-toggle="collapse" class="panel-title">
                        <i class="glyphicon glyphicon-align-justify"></i>
                        <span class="menu_span">分类管理</span></a></a>
                </div>
                <div class="panel-collapse collapse " id="collapseC">
                    <div class="panel-body">
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="#"><i class="glyphicon glyphicon-chevron-right"></i>
                                <span class="menu_span">分类列表</span></a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-chevron-right"></i>
                                <span class="menu_span">添加分类</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
                    <a href="#collapseD" data-parent="#box" data-toggle="collapse" class="panel-title">
                    <i class="glyphicon glyphicon-align-justify"></i>
                    <span class="menu_span">订单管理</span></a></a>
                </div>
                <div class="panel-collapse collapse " id="collapseD">
                    <div class="panel-body">
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="#"><i class="glyphicon glyphicon-chevron-right"></i>
                                <span class="menu_span">订单列表</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
                    <a href="#collapseE" data-parent="#box" data-toggle="collapse" class="panel-title">
                    <i class="glyphicon glyphicon-align-justify"></i>
                    <span class="menu_span">站内信管理</span></a></a>
                </div>
                <div class="panel-collapse collapse " id="collapseE">
                    <div class="panel-body">
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="#"><i class="glyphicon glyphicon-chevron-right"></i>
                                <span class="menu_span">邮件列表</span></a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-chevron-right"></i>
                                <span class="menu_span">聊天记录</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
                    <a href="#collapseF" data-parent="#box" data-toggle="collapse" class="panel-title">
                    <i class="glyphicon glyphicon-align-justify"></i>
                    <span class="menu_span">评价管理</span></a></a>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
                    <a href="#collapseG" data-parent="#box" data-toggle="collapse" class="panel-title">
                    <i class="glyphicon glyphicon-align-justify"></i>
                    <span class="menu_span">系统管理</span></a></a>
                </div>
                <div class="panel-collapse collapse " id="collapseG">
                    <div class="panel-body">
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="#"><i class="glyphicon glyphicon-chevron-right"></i>
                                <span class="menu_span">修改密码</span></a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-chevron-right"></i>
                                <span class="menu_span">反馈建议</span></a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-chevron-right"></i>
                                <span class="menu_span">关于我们</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>


            <div class="panel panel-default">
                <div class="panel-heading">
                    <a href="#collapseH" data-parent="#box" data-toggle="collapse" class="panel-title">
                    <i class="glyphicon glyphicon-align-justify"></i>
                    <span class="menu_span">促销管理</span></a></a>
                </div>
                <div class="panel-collapse collapse " id="collapseH">
                    <div class="panel-body">
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="#"><i class="glyphicon glyphicon-chevron-right"></i>
                                <span class="menu_span">促销短信</span></a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-chevron-right"></i>
                                <span class="menu_span">店铺优惠券</span></a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-chevron-right"></i>
                                <span class="menu_span">满减活动</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
        </div>
    </div>

    <div class="col-sm-10">
        <div class="bread-crumb">
            <ul class="breadcrumb">
                <li><span class="glyphicon glyphicon-home"></span><a class="menu_span" href="#">主页</a></li>
                <li><a class="menu_span" href="#">消息统计</a></li>
                <li><span class="menu_span">表格</span></li>
            </ul>
        </div>
        <div class="panle panel-default">
            <div class="panel-heading">
                <a class="panel-title">消息统计</a>
            </div>
            <div class="panel-body">
                <table class="table table-striped table-hover">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>brand</th>
                        <th>name</th>
                        <th>channel</th>
                        <th>inventory</th>
                        <th>price</th>
                        <th>isSale</th>
                        <th>operation</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td>Apple</td>
                        <td>Plus 6</td>
                        <td>4G</td>
                        <td>10</td>
                        <td>4500</td>
                        <td>yes</td>
                        <td>add</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Apple</td>
                        <td>Plus 6</td>
                        <td>4G</td>
                        <td>10</td>
                        <td>4500</td>
                        <td>yes</td>
                        <td>add</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Apple</td>
                        <td>Plus 6</td>
                        <td>4G</td>
                        <td>10</td>
                        <td>4500</td>
                        <td>yes</td>
                        <td>add</td>
                    </tr>
                    </tbody>
                    <tfoot>
                    <tr>
                        <td colspan="8">
                            <ul class="pagination">
                                <li><a href="#">«</a></li>
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#">»</a></li>
                            </ul>
                        </td>
                    </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="${ctx}/resources/js/bootstrap/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${ctx}/resources/js/bootstrap/bootstrap.min.js"></script>
</body>
</html>