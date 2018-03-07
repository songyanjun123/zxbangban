<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/9/11
  Time: 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>与我们联系</title>
    <%@include file="../common/head.jsp"%>
    <script type="text/javascript"
            src="https://webapi.amap.com/maps?v=1.3&key=bd02f29b9ab620578ecbccc3cfaffbc1"></script>
    <style type="text/css">
        .jumbotron{
            background-color: transparent;
        }
        p{
            text-indent: 0;
        }
    </style>
</head>
<body>
<%@include file="../common/header.jsp"%>
<div class="page-wrapper">
    <div class="container-fluid" style="background-image: url('/resources/images/activity/contact_us_banner.png');height: 900px">
        <div class="container">
            <div class="jumbotron" style="margin-top: 450px;text-align: center;color: white">
                <h1>联系我们</h1>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-6 column">
                <div class="jumbotron">
                    <img src="${pageContext.request.contextPath}/resources/images/three_d_h/tdhlocation.png" alt="北京三维家装饰工程管理有限公司"/>
                </div>
            </div>
            <div class="col-md-6 column">
                <div class="jumbotron">
                    <h2>北京三维家装饰工程管理有限公司</h2>
                    <p>北京市昌平区北七家镇八仙工业园区(北京总部)</p>
                    <p>邮编:102209</p>
                    <p>TEl:010-86466830(北京)</p>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="../common/footer.jsp"%>
</body>
<%@include file="../common/script.jsp"%>

</html>
