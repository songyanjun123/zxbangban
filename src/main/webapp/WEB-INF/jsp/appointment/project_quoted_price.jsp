<%--
  Created by IntelliJ IDEA.
  User: zxbangban
  Date: 2017/11/11
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>免费报价 | 装修帮办服务平台</title>
    <%@include file="../common/head.jsp" %>
    <style type="text/css">
        p {
            text-indent: 0;
        }

        label {
            text-align: center;
            line-height: 15px;
        }

        label > span, .form-control-static > span {
            font-weight: normal;
        }
    </style>
</head>
<body>
<%@include file="../common/header.jsp" %>
<div class="page-wrapper">
    <div class="container-fluid"
         style="background: url('/resources/images/common/quoted/quoted_bgi.png') no-repeat center;height: 800px">
        <div class="container">
            <div class="jumbotron" style="box-shadow: 0 0 20px #cccccc;margin-top: 60px;margin-bottom: 60px">
                <div class="row clearfix">
                    <div class="col-md-4 col-sm-4 col-xs-12 column">
                        <div class="jumbotron">
                            <h4 style="color: #e48632;margin-bottom: 45px">您家的装修预算大约:</h4>
                            <form class="form-horizontal" role="form">
                                <div class="row clearfix">
                                    <div class="form-group">
                                        <label class="col-sm-6 col-xs-6 control-label"><span>物料费:</span></label>
                                        <label class="col-sm-6 col-xs-6 control-label"><span>${quoted.materialCost}&nbsp;元</span>
                                        </label>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-6 col-sm-6 col-xs-6 control-label"><span>人工费:</span></label>
                                        <label class="col-sm-6 col-xs-6 control-label"><span>${quoted.labourCost}&nbsp;元</span>
                                        </label>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-6 col-sm-6 col-xs-6 control-label"><span>设计费:</span></label>
                                        <label class="col-sm-6 col-xs-6 control-label"><span><del>${quoted.designCost}</del>&nbsp;元</span>
                                        </label>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-6 col-sm-6 col-xs-6 control-label"><span>服务费:</span></label>
                                        <label class="col-sm-6 col-xs-6 control-label"><span>${quoted.serviceCost}&nbsp;元</span>
                                        </label>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-6 col-sm-6 col-xs-6 control-label"><span>总计:</span></label>
                                        <label class="col-sm-6 col-xs-6 control-label"><span>${quoted.totalCost}&nbsp;元</span>
                                        </label>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-8 col-sm-8 col-xs-12 column">
                        <div class="jumbotron" style="border-left: #ccc dashed 2px;">
                            <h4 style="color: #e48632;text-align: center;margin-bottom: 20px">完善信息免费获取三个以上金牌工长报价</h4>
                            <div class="row">
                                <div class="col-md-6 col-md-offset-3 column">

                                    <form class="bs-example bs-example-form" role="form"
                                          action="${pageContext.request.contextPath}/c/customersave" method="post">
                                        <div class="input-group">
                                            <span class="input-group-addon">姓名</span>
                                            <input type="text" class="form-control" placeholder="请输入姓名" name="name">
                                        </div>
                                        <br>
                                        <div class="input-group" style="margin-bottom: 20px">
                                            <span class="input-group-addon">手机号</span>
                                            <input type="tel" class="form-control" placeholder="请输入手机号码" name="tel">
                                        </div>
                                        <div class="input-group" style="margin-bottom: 20px">
                                            <span class="input-group-addon">工程所在地</span>
                                            <input type="text" class="form-control" placeholder="请输入工程所在地"
                                                   name="location">
                                        </div>
                                        <div class="input-group" style="margin-bottom: 20px">
                                            <input type="text" class="form-control" placeholder="请输入手机验证码"
                                                   name="telcode">
                                            <span class="input-group-btn">
                                                <button class="btn btn-primary" type="button" id="codebtn">验证码</button>
                                            </span>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4 col-md-offset-4 column">
                                                <div class="input-group" style="margin-bottom: 20px">
                                                    <span class="input-group-btn">
                                                        <button type="submit" class="btn btn-success btn-block">确认</button>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="../common/footer.jsp" %>
</body>
<%@include file="../common/script.jsp" %>
<script type="text/javascript">
    $(function () {
        appointment.detail.validata();
    });

</script>
</html>
