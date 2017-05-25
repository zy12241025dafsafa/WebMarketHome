<%@ page language="java" pageEncoding="utf-8" %>
<%@ include file="../common.jsp"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>login</title>
    <link href="${ctx}/resources/css/bootstrap/bootstrap.css" rel="stylesheet">
    <link href="${ctx}/resources/css/login.css" rel="stylesheet">
</head>

<body>
<!--使用模态框的方式模拟一个登陆框-->
<div class="modal show" id="loginModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close">&times;</button>
                <h1 class="text-center text-primary">登录</h1>
            </div>
            <div class="modal-body">
                <form class="form col-md-12 center-block" id="loginForm" action="/jump_main.do" method="post">

                    <div class="form-group-lg" id="accountDiv">
                        <label class="sr-only" for="inputAccount">帐号</label>
                        <div class="input-group">
                            <div class="input-group-addon">
                                <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                            </div>
                            <input class="form-control" id="inputAccount" name="accountNo" type="text" placeholder="账号" required autofocus>
                        </div>
                        <div class="hidden text-center" id="accountMsg"><span class="glyphicon glyphicon-exclamation-sign"></span>
                            <label style="color: #ee1e2d;">用户名不存在</label></div>
                    </div>
                    <br>

                    <div class="form-group-lg" id="pwdDiv">
                        <label class="sr-only" for="inputPassword">密码</label>
                        <div class="input-group">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
                            <input class="form-control" id="inputPassword" name="pwd" type="password" placeholder="密码" required>
                            <div class="input-group-addon"><span class="glyphicon glyphicon-eye-open"></span></div>
                        </div>
                        <div class="hidden text-center" id="pwdMsg"><span class="glyphicon glyphicon-exclamation-sign"></span>
                            <label style="color: #ee1e2d;">用户名密码错误</label></div>
                    </div>
                    <div class="checkbox">
                        <label style="color: #3e3e3e;"> <input type="checkbox" value="remember-me">记住我</label>
                    </div>
                    <div class="form-group" id="btns_blank">
                        <button class="btn btn-default btn-lg col-md-5" id="btn_register" type="submit">注册</button>
                        <button class="btn btn-primary btn-lg col-md-5" id="btn_login" type="button" onclick="clickLogin()" >登录</button>
                    </div>

                </form>
            </div>
            <div class="modal-footer"></div>
        </div>
    </div>
</div>

<script src="${ctx}/resources/js/bootstrap/jquery-3.2.1.min.js"></script>
<script src="${ctx}/resources/js/bootstrap/bootstrap.min.js"></script>
<script src="${ctx}/resources/js/login.js"></script>

</body>

</html>
