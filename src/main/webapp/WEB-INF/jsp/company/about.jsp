<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/6/30
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>装修帮办承诺保障</title>
    <%@include file="../common/head.jsp"%>
    <style type="text/css">
        .us-port{
            color: white;
            margin-top: 80px;
            margin-bottom: 80px;
            background-repeat: no-repeat;background-position: center;
            height: 300px;
        }
        .us-port .container{
            color: white;
            padding-top: 60px;
        }
        .container>a{
            margin-top: 20px;
        }
        .container>h1{
            text-align: center;
            color: white;
            margin-top: 500px;
            font-size: 50px;
            background-color: rgba(0,0,0,0.4);
            padding-top: 40px;
            padding-bottom: 40px;
        }

    </style>
</head>
<body>
<%@include file="../common/header.jsp"%>
<div class="page-wrapper">
    <div style="background-image: url('https://zxbangban.oss-cn-beijing.aliyuncs.com/home/usbanner1.png');height: 900px;">
        <div class="container">
            <h1>装修帮办承诺保障</h1>
        </div>
    </div>
    <div class="us-port" style="background-image: url('https://zxbangban.oss-cn-beijing.aliyuncs.com/home/usimg4.png');">
        <div class="container text-center">
            <h2>正品保证</h2>
            <a href="${pageContext.request.contextPath}/value1" class="btn btn-default">了解更多</a>
        </div>

    </div>
    <div class="us-port" style="background-image: url('https://zxbangban.oss-cn-beijing.aliyuncs.com/home/usimg3.png');">
        <div class="container text-center">
            <h2>先行赔付</h2>
            <a href="${pageContext.request.contextPath}/value2" class="btn btn-default">了解更多</a>
        </div>

    </div>
    <div class="us-port" style="background-image: url('https://zxbangban.oss-cn-beijing.aliyuncs.com/home/usimg5.png');">
        <div class="container text-center">
            <h2>节点监督</h2>
            <a href="${pageContext.request.contextPath}/value3" class="btn btn-default">了解更多</a>
        </div>

    </div>
    <div class="us-port" style="background-image: url('https://zxbangban.oss-cn-beijing.aliyuncs.com/home/usimg1.png');">
        <div class="container text-center">
            <h2>权益保障</h2>
            <a href="${pageContext.request.contextPath}/value4" class="btn btn-default">了解更多</a>
        </div>

    </div>
    <div class="us-port" style="background-image: url('https://zxbangban.oss-cn-beijing.aliyuncs.com/home/usimg2.png');">
        <div class="container text-center">
            <h2>投诉有门</h2>
            <a href="${pageContext.request.contextPath}/value5" class="btn btn-default">了解更多</a>
        </div>
    </div>
</div>
<%@include file="../common/footer.jsp"%>
</body>
<%@include file="../common/script.jsp"%>
<script type="text/javascript">

</script>
</html>
