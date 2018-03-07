<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/tag.jsp" %>
<html>
<head>
    <title>装修帮办账号</title>
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
    <div style="background:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/registerbgi.png') no-repeat;height: 750px ">
        <div class="container">
            <div class="row clearfix">
                <div class="col-md-6 col-md-offset-6 column">
                    <div class="jumbotron">
                        <h2 style="color: #e48632">微信绑定登陆</h2>
                        <form class="bs-example bs-example-form" role="form"
                              action="${pageContext.request.contextPath}/account/wxregister" method="post">
                            <input type="hidden" name="telphone" value="${telphone}">
                            <div class="input-group input-group-lg">
                                <span class="input-group-addon">登录名</span>
                                <input type="text" class="form-control" placeholder="${errormsg}&nbsp;&nbsp;请输入登录名"
                                       name="name" >
                            </div>
                            <div class="input-group input-group-lg" style="margin-bottom: 20px">
                                <span class="input-group-addon">密码</span>
                                <input type="text" class="form-control" placeholder="请输入密码" name="password" >
                            </div>
                            <div class="input-group input-group-lg" style="margin-bottom: 20px">
                        <span class="input-group-addon">
                            <input type="checkbox" name="privacy" style="float: left">
                            <span style="float: left">同意装修帮办<a
                                    href="${pageContext.request.contextPath}/termsofuse">服务条款</a>和<a
                                    href="${pageContext.request.contextPath}/privacy">声明。</a> </span>
                        </span>
                            </div>
                            <div class="input-group input-group-lg" style="margin-bottom: 20px">
                        <span class="input-group-btn">
                            <button type="submit" class="btn btn-primary btn-lg btn-block">注册</button>
                        </span>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="common/footer.jsp"%>
</body>
<%@include file="common/script.jsp"%>
<script type="text/javascript">
    wxsignup.detail.check();
</script>
</html>
