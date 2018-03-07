<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <div style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/appointmentbgi.png');background-repeat: no-repeat;height: 750px ">
        <div class="container">
            <div class="row clearfix">
                <div class="col-md-8 col-md-offset-2 column">
                    <div class="jumbotron">
                        <h2 style="color: #e48632">装修帮办登陆</h2>
                        <form class="bs-example bs-example-form" role="form"
                              action="${pageContext.request.contextPath}/w/workerInfo" method="post">

                            <div class="input-group input-group-lg" style="margin-bottom: 20px">
                                <span class="input-group-addon">手机号</span>
                                <input type="tel" class="form-control" placeholder="请输入手机号码" name="tel">
                            </div>
                            <div class="input-group input-group-lg" style="margin-bottom: 20px">
                                <input type="text" class="form-control" placeholder="请输入手机验证码" name="telcode">
                                <span class="input-group-btn">
                                    <button class="btn btn-primary" type="button" id="codebtn">验证码</button>
                                 </span>
                            </div>
                            <div class="input-group input-group-lg" style="margin-bottom: 20px">
                        <span class="input-group-btn">
                            <button type="submit" class="btn btn-success btn-block">登陆</button>
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
    $(function () {
        workerstate.detail.validata();
    });
</script>
</html>
