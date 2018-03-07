<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/9/11
  Time: 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>北京三维家装饰工程管理有限公司</title>
    <%@include file="../common/head.jsp" %>
    <style type="text/css">
        .jumbotron {
            background-color: transparent;
        }

        .tdh_h1 {
            color: #16a085;
            padding: 120px 0 40px 40px;
        }

        .tdh_p {
            width: 75%;
            font-size: 16px;
            padding-left: 40px;
        }

        .tdh_img {
            margin: 0 auto;
            padding: 140px 0 100px 0;
        }

        .tdh_ul {
            text-align: center;
            list-style-type: none;
            margin-top: 50px;
        }

        .tdh_li {
            font-size: 16px;
            font-weight: bold;
            margin-top: 20px;
        }

        .tdh_imglun {
            float: left;
        }

        .tdh_divimg {
            overflow: hidden;
        }

        .tdh_divimg img:FIRST-CHILD {
            margin: 0;
            padding-right: 10px;
        }


    </style>
</head>
<body>
<%@include file="../common/header.jsp" %>
<div class="page-wrapper">
    <div class="container-fluid"
         style="background-image: url('/resources/images/three_d_h/tdh_banner01.png');height: 900px">
        <div class="container">
            <div class="jumbotron"
                 style="background-color: transparent;text-align: center;color: white;margin-top: 300px">
                <h1>北京三维家装饰工程管理有限公司</h1>
                <h3>打造您私人专属的定制家居，赋予您对家的最美诠释</h3>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row clearfix" style="background-color:#f5f6f7;">
            <div class="col-md-8 column">
                <h1 class="tdh_h1">公司介绍</h1>
                <p class="tdh_p">
                    北京三维家装饰工程管理有限公司成立于2017年，注册资金1000万。公司有雄厚的设计、施工、管理和技术资源，是集专业设计、精湛施工、完善售后服务为一体的专业化装饰工程公司。</p>
            </div>
            <div class="col-md-4 column">
                <img src="${pageContext.request.contextPath}/resources/images/three_d_h/tdh_neirong01.png"
                     class="img-responsive">
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-md-4 column">
                <img src="${pageContext.request.contextPath}/resources/images/three_d_h/tdh_neirong02.png"
                     class="img-responsive tdh_img">
            </div>
            <div class="col-md-8 column">
                <h1 class="tdh_h1">三维家装饰服务理念</h1>
                <p class="tdh_p">
                    北京三维家装饰工程管理有限公司视工程质量为生命，自成立以来便以
                    其先进的理念和诚信的服务获得了广大客户的深刻认同。公司秉承“严
                    格管理、诚信服务、规范施工”的经营理念，严格工程管理，工程技术人员在施工过程中不断总结和创新，引用国外先进的技术设备，多项施
                    工工艺不断升级。公司在经营中克服了装饰行业中的通病与不足，为消
                    费者提供经济时尚、品质一流的装饰工程服务。
                </p>
            </div>
        </div>
    </div>
    <div class="container" style="background-color:#f5f6f7;padding:80px 0">
        <div class="row clearfix">
            <div class="col-md-4 column">
                <div class="jumbotron">
                    <ul class="tdh_ul">
                        <li><img src="${pageContext.request.contextPath}/resources/images/three_d_h/tdh_photo.png"></li>
                        <li class="tdh_li">案例展示</li>
                        <li>打造您私人专属的定制家居</li>
                    </ul>
                </div>
            </div>
            <div class="col-md-8 column">
                <div class="carousel slide" id="carousel-877619">
                    <div class="carousel-inner">
                        <div class="item active tdh_divimg">
                            <img src="${pageContext.request.contextPath}/resources/images/three_d_h/tdh_lunbotu01.png"
                                 class="tdh_imglun"/>
                            <img src="${pageContext.request.contextPath}/resources/images/three_d_h/tdh_lunbotu02.png"
                                 class="tdh_imglun"/>
                        </div>
                        <div class="item tdh_divimg">
                            <img src="${pageContext.request.contextPath}/resources/images/three_d_h/tdh_lunbotu03.png"
                                 class="tdh_imglun"/>
                            <img src="${pageContext.request.contextPath}/resources/images/three_d_h/tdh_lunbotu04.png"
                                 class="tdh_imglun"/>
                        </div>
                    </div>
                    <a class="left carousel-control" href="#carousel-877619" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span></a>
                    <a class="right carousel-control" href="#carousel-877619" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <div class="container" style="background-image: url('/resources/images/three_d_h/tdh_shousuo.png');height: 365px">
        <div class="jumbotron" style="text-align: center;color: white;height: 345px">
            <form class="bs-example bs-example-form" role="search" action="#"
                  style="width: 66%;margin: 0 auto;margin-top: 150px">
                <div class="input-group input-group-lg">
                    <input type="text" class="form-control" placeholder="搜索你想要的" name="telcode">
                    <span class="input-group-btn">
                            <button class="btn btn-primary" type="button">
                                <span class="glyphicon glyphicon-ok"></span>
                            </button>
                        </span>
                </div>
            </form>
        </div>
    </div>
    <div class="container">
        <div class="jumbotron" style="border-radius:0;">
            <h1 class="text-center">三维家装饰</h1>
            <p>
                北京三维家装饰工程管理有限公司凭借创新的家装模式和先进的服务理念，在未来将一如既往地以人性化的设计、标准化的施工、专业化的服务，切实满足广大消费者的家装需求。
            </p>
        </div>
    </div>
</div>
<%@include file="../common/footer.jsp" %>
</body>
<%@include file="../common/script.jsp" %>
</html>
