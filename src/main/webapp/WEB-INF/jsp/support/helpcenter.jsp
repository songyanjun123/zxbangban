<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/7/25
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>装修帮办|帮助中心</title>
    <%@include file="../common/head.jsp"%>
    <style type="text/css">
        .h{
            margin-top: 50px;
        }
        h4{
            color: #e48632;
            font-weight: bold;
        }
        p{
            font-size: 18px;
        }
    </style>
</head>
<body>
<%@include file="../common/header.jsp"%>
<div class="page-wrapper">
    <div style="background-color: #cccccc">
        <div class="container">
            <h2 style="color: #e48632">&nbsp;&nbsp;帮助中心</h2>
        </div>
    </div>
    <div class="container">
        <div class="h">
            <h3>工人:</h3>
            <p>由于您目前没有在装修帮办平台提交实名认证信息，业主的预约信息无法及时发送给您。为了保证您正常接单，
                请您尽快登录装修帮办（www.zxbangban.com）进行实名认证。</p>
        </div>
        <div class="h">
            <h3>业主:</h3>
            <div style="margin-bottom: 180px">
                <h4>1.您已经预约了工人，但是网站没有显示您的订单信息？</h4><br>
                <p>这可能是由于您的预约信息还没有经过装修帮办审核，请您保持电话畅通，24小时内客服将与您取得联系。您也可以致电装修帮办客服：010-86466830-819咨询。
                    若您的预约订单已经审核通过，在您与工人和平台签订三方合同后，您的订单信息将会显示在网站上，表示您的工程订单正式生效。</p>
                <h4>2.您在装修帮办上发布了装修需求，但是没有显示您的工程订单？</h4><br>
                <p>装修帮办已经在根据您的需求匹配工人，请您耐心等待，装修帮办客服010-86466830-819
                    将会在48小时内与您取得联系，为您推荐工人。推荐成功并签订三方合同后，您的工程订单信息即可显示在您的个人主页。</p>
            </div>
        </div>
    </div>
</div>
<%@include file="../common/footer.jsp"%>
</body>
<%@include file="../common/script.jsp"%>
<script type="text/javascript">

</script>
</html>
