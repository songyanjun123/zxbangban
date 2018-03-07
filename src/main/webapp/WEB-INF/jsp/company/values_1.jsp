<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/7/1
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>装修帮办-材料品质有保证</title>
    <%@include file="../common/head.jsp"%>

    <style type="text/css">
        .page-wrapper .container h2{
            border-bottom: solid 1px #000000;
            line-height: 60px;
            padding-top: 30px;
        }
        .page-wrapper .container img{
            margin: 60px 0;
        }

        .page-wrapper .container p {
            text-indent: 0;
            font-size: 20px;
        }
        .page-wrapper .container p:last-child{
            margin-bottom: 100px;
        }

    </style>
</head>
<body>
<%@include file="../common/header.jsp"%>
<div class="page-wrapper">
    <div class="container">
        <h2>材料品质有保证</h2>
        <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/values/v1_1.png" >
        <p>装修帮办网上商城所售商品均来自正规品牌厂家直供，我们对供应商的资质都会进行严格审核。</p>
        <p>装修帮办和国内外顶级建材家装品牌强力合作，签订正品保障服务协议，承诺确保出售商品100%正品。</p>
        <p>即日起，如果消费者在装修帮办网上商城购买的商品经鉴定为假冒、高仿商品，我们承诺假一赔十，并严格对相关责任人和责任厂家进行惩处，绝不姑息。</p>
    </div>
</div>
<%@include file="../common/footer.jsp"%>
</body>
<%@include file="../common/script.jsp"%>
</html>
