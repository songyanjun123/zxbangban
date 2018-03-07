<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/8/9
  Time: 16:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>装修帮办|工人平台资质认证</title>
    <%@include file="../common/head.jsp"%>
    <style type="text/css">
        .bz_latterTitle{
            font-size:20px;
            color:#ff652f;
            margin-bottom:0;
        }
        .bz_latterTitle strong{
            color:#000;
            font-size:22px;
        }
        .bz_p{
            font-size:20px;
            margin-top:0;
            margin-bottom:6px;
        }
        .bz_margin{
            margin:120px 0 100px 0;
        }
        .bz_latterTitle02{
            font-size:20px;
            margin-bottom:30px;
        }
        .bz_latterTitle02:FIRST-CHILD {
            margin-top:40px;
        }
    </style>
</head>
<body>
<%@include file="../common/header.jsp"%>
<div class="page-wrapper">
    <div class="gu_title" style="background-image: url('https://zxbangban.oss-cn-beijing.aliyuncs.com/worker/worker_aptitude.png');height: 400px">
        <div class="container">
            <div class="jumbotron" style="background-color: transparent;margin-top: 150px;text-align: center">
                <h1 style="color: white">平台认证 轻松接单 收入有保障</h1>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row clearfix bz_margin">
            <div class="col-md-4 column">
                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/worker/w_a_01.png" class="img-responsive" style="margin-bottom: 40px">
            </div>
            <div class="col-md-8 column">
                <p class="bz_latterTitle"><strong>1.</strong>优先推广，排名靠前</p>
                <p class="bz_p">装修帮办会优先推广完成平台认证的工人，点亮“认证”图标，综合评分增加，提高接单率。</p>
                <p class="bz_latterTitle"><strong>2.</strong>加入消费者保障计划</p>
                <p class="bz_p">预约完成平台认证的工人，业主可享受装修帮办提供的装修保障服务，透明服务，吸引更多的业主关注。</p>
                <p class="bz_latterTitle"><strong>3.</strong>结算保障</p>
                <p class="bz_p">完成平台认证的工人，按照三方协议规定，保质保量按时完成装修工作，客户验收满意，15个工作日无异议，装修帮办按约定结算工程尾款。</p>
            </div>
        </div>
        <div class="row clearfix bz_margin">
            <div class="col-md-8 column">
                <p class="bz_latterTitle02"><strong>1.</strong>100%真实案例，100%实时监控，100%真实评价，让您全方面了解工人</p>
                <p class="bz_latterTitle02"><strong>2.</strong>享受装修帮办的“装修保”服务，违约平台先行赔付，全面保障业主权益</p>
                <p class="bz_latterTitle02"><strong>3.</strong>监理服务，全程监督，节点验收，装修全程有保障</p>
                <p class="bz_latterTitle02"><strong>4.</strong>工程款托管服务，验收完成，业主满意，15个工作日内无异议，装修帮办结算工人工程尾款</p>
            </div>
            <div class="col-md-4 column">
                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/worker/w_a_02.png" class="img-responsive">
            </div>
        </div>
    </div>
</div>
<%@include file="../common/footer.jsp"%>
</body>
</html>
