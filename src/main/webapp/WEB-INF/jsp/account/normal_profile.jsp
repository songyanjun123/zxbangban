<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/9/9
  Time: 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common/tag.jsp"%>
<html>
<head>
    <title>装修帮办|你的个人资料</title>
    <%@include file="../common/head.jsp"%>
    <style type="text/css">
        .headimg{
            background-color: #cccccc;
        }
        .user{
            font-size: 20px;
        }
    </style>
</head>
<body>
<%@include file="../common/header.jsp"%>
<div class="page-wrapper">
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 col-sm-12 col-xs-12 column">
                <ul class="nav nav-pills nav-justified" style="">
                    <li><a href="${pageContext.request.contextPath}/my-account/center">账号</a></li>
                    <li  class="active"><a href="${pageContext.request.contextPath}/my-account/profile">你的信息</a></li>
                    <li><a href="#">订单信息</a></li>
                    <li><a href="#">协议与合同</a></li>
                    <li><a href="#">服务</a></li>
                </ul>
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="jumbotron">
                    <h2>你的信息</h2>
                    <ol class="nav nav-tabs">
                        <li class="active"><a href="${pageContext.request.contextPath}/my-account/profile">个人资料</a></li>
                        <li><a href="#">联系人信息</a></li>
                        <li><a href="${pageContext.request.contextPath}/my-account/profile-workerinfo">工人信息</a></li>
                    </ol>
                </div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12 column">
                <div class="jumbotron">
                        <img src="${userinfo.headImgUrl}" class="img-circle img-responsive headimg"/>
                        <%--<span class="text-center">
                            <button type="button" class="btn btn-link" onclick="ei(this)" value="${userinfo.userId}">修改头像</button>
                        </span>--%>
                </div>
            </div>
            <div class="col-md-8 col-sm-8 col-xs-12 column">
                <div class="jumbotron">
                    <div>
                        <h3 style="margin-bottom: 0">姓名：${userProfile.name}</h3>
                    </div>
                    <div style="margin-top: 20px">
                        <span class="user">手机号：${userinfo.telphone}</span>
                    </div>
                    <div style="margin-top: 20px">
                        <span class="user" >会员生日：${sydate}</span>
                    </div>
                    <div style="margin-top: 20px">
                        <span class="user">会员等级：${userinfo.memberLevel} 级</span>
                    </div>
                    <div style="margin-top: 20px">
                        <span>${userProfile.memberShip}</span>
                    </div>
                    <div style="margin-top: 20px">
                        <span>${userProfile.projectAddresses}</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="../common/footer.jsp"%>

</body>
<%@include file="../common/script.jsp"%>
</html>
