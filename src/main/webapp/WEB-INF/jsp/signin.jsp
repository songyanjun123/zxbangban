<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录你的装修帮办平台会员</title>
    <%@include file="common/head.jsp"%>
    <style type="text/css">
        .jumbotron{
            background-color: rgba(0,0,0,0.5);
            margin-top: 50px;
            color: white;
            text-align: center;
        }
        form{
            margin: 0 auto;
        }
    </style>
</head>
<body>
<%@include file="common/header.jsp"%>
<div class="page-wrapper">
    <div style="background:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/signinbgi.png') no-repeat;height: 750px;">
        <div class="container">
            <div class="row clearfix">
                <div class="col-md-6 col-md-offset-6 column">
                    <div class="jumbotron">
                        <ul id="myTab" class="nav nav-tabs" style="font-size: 20px;margin-bottom: 20px;">
                            <li class="active">
                                <a href="#home" data-toggle="tab" style="color: #555">
                                    登录装修帮办会员
                                </a>
                            </li>
                            <li id="WxTab">
                                <a href="#weixin" data-toggle="tab">
                                    <span class="fa fa-weixin" aria-hidden="true"
                                       style="color: #83d944;">
                                    </span>
                                    <span style="color: #555">微信</span>
                                </a>
                            </li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade in active" id="home">

                                <form class="bs-example bs-example-form" role="form"
                                      action="${pageContext.request.contextPath}/account/login" method="post">
                                    <div class="input-group input-group-lg">
                                        <span class="input-group-addon">登录名 </span>
                                        <input type="text" class="form-control" placeholder="${errormsg}&nbsp;&nbsp;请输入登录名"
                                               name="username">
                                    </div>
                                    <br>
                                    <div class="input-group input-group-lg" style="margin-bottom: 20px">
                                        <span class="input-group-addon">密码</span>
                                        <input type="password" class="form-control" placeholder="&nbsp;&nbsp;请输入密码"
                                               name="password">
                                    </div>
                                    <div class="input-group input-group-lg" style="margin-bottom: 20px">
                                        <span class="input-group-addon" style="text-align: right">
                                            <a href="${pageContext.request.contextPath}/account-support/help">忘记密码了</a>
                                        </span>
                                    </div>
                                    <div class="input-group input-group-lg" style="margin-bottom: 20px">
                                        <span class="input-group-btn">
                                            <button type="submit" class="btn btn-success btn-lg btn-block">登录</button>
                                        </span>
                                                </div>
                                    <div class="input-group input-group-lg" style="margin-bottom: 20px">
                                        <span class="input-group-addon">
                                            <a href="${pageContext.request.contextPath}/w/workerlogin">手机登录</a>
                                        </span>
                                    </div>
                                                <div class="input-group input-group-lg" style="margin-bottom: 20px">
                                        <span class="input-group-addon">
                                            没有账户？<a href="${pageContext.request.contextPath}/account/signup">创建一个</a>
                                        </span>
                                    </div>
                                </form>
                            </div>
                            <div class="tab-pane fade" id="weixin">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="common/footer.jsp"%>
</body>
<%@include file="common/script.jsp"%>
<script src="https://res.wx.qq.com/connect/zh_CN/htmledition/js/wxLogin.js"></script>
<script type="text/javascript">
    $(function () {
        var obj = new WxLogin({
            id:"weixin",
            appid: "wx398ae8a98dc4a7cc",
            scope: "snsapi_login",
            redirect_uri: "https%3a%2f%2fwww.zxbangban.com%2faccount%2fwxtoken",
            state: "",
            style: "white",
            href: ""
        });

        var WxTab = $("#WxTab");
        if(util.detil.isPC() !== true){
            WxTab.hide();
        }
    });
</script>
</html>
