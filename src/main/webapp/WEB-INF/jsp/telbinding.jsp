<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>装修帮办</title>
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
                        <h2 style="color: #e48632">装修帮办手机绑定</h2>
                        <form class="bs-example bs-example-form" role="form"
                              action="${pageContext.request.contextPath}/account/bindingtel" method="post">
                            <input type="hidden" name="unionid" value="${unionid}">
                            <div class="input-group input-group-lg" style="margin-bottom: 20px">
                                <span class="input-group-addon">手机号</span>
                                <input type="tel" class="form-control" placeholder="请输入手机号码" name="tel">
                            </div>
                            <div class="input-group input-group-lg" style="margin-bottom: 20px">
                                <font size="3">温馨提示：如果您已经是会员，请使用绑定会员的手机号进行微信绑定！</font>
                            </div>
                            <div class="input-group input-group-lg" style="margin-bottom: 20px">
                                <span class="input-group-btn">
                                    <button type="submit" class="btn btn-success btn-block">确定</button>
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
    telbinding.detail.check();
</script>
</html>
