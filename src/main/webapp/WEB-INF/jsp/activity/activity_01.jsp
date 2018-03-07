<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/9/2
  Time: 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>幸福嘉园，钜惠来袭|装修帮办</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="我们对自己所要追求的目标充满信心">
    <meta name="keywords" content="客厅装修，电视墙装修，装修效果图，沁芳盛世，潞泽嘉园">
    <meta name="apple-mobile-web-app-title" content="装修帮办">
    <meta property="og:site_name" content="装修帮办">
    <meta property="og:title" content="装修帮办">
    <meta property="og:locale" content="zh_CH">
    <meta property="og:url" content="https://www.zxbangban.com">
    <link rel="shortcut icon" href="https://zxbangban.oss-cn-beijing.aliyuncs.com/zxbangbanico.ico">
    <!-- import css -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" type="text/css">
    <!-- HTML5 Shim , Respond.js for IE8  HTML5 -->
    <!--HTML5 Shim ,Respond.js for IE 8 HTML5 -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
    <%@include file="../common/head.jsp" %>
    <style type="text/css">
        .container-fluid {
            padding: 0 0;
        }

        .list-unstyled li img {
            margin: 0 auto;
        }

        .btn-lg {
            padding: 10px 15px;
        }

        .hd_h1Text {
            font: bold 40px Arial;
            color: orange;
        }

        .jumbotron {
            text-align: center;
            background-color: transparent;
        }

        .page-wrapper {
            background: url("/resources/images/activity/bgi.png") no-repeat fixed;
        }
    </style>
</head>
<body>
<%@include file="../common/header.jsp" %>
<div class="page-wrapper">
    <div class="container-fluid"
         style="background: url('${pageContext.request.contextPath}/resources/images/hd_banner.png');height: 900px">
        <div class="container">
            <div class="jumbotron" style="margin-top: 350px;background-color: rgba(0,0,0,0.5);color: white">
                <h1>幸福嘉园,钜惠来袭</h1>
                <h2 style="color: #d97c00">与新邻居一同瓜分千万大礼包</h2>
            </div>
        </div>
    </div>
    <div class="container" id="portal">
        <div class="jumbotron">
            <h1 class="text-center">马上报名，立即参与</h1>
            <form class="bs-example bs-example-form" role="form"
                  action="${pageContext.request.contextPath}/c/free-appointment" method="post">
                <div class="input-group input-group-lg">
                    <span class="input-group-addon">姓名</span>
                    <input type="text" class="form-control" placeholder="请输入姓名" name="name">
                </div>
                <br>
                <div class="input-group input-group-lg" style="margin-bottom: 20px">
                    <span class="input-group-addon">手机号</span>
                    <input type="tel" class="form-control" placeholder="请输入手机号码" name="tel">
                </div>
                <div class="input-group input-group-lg" style="margin-bottom: 20px">
                    <span class="input-group-addon">工程所在地</span>
                    <input type="text" class="form-control" placeholder="请输入工程所在地" name="location">
                </div>
                <div class="input-group input-group-lg" style="margin-bottom: 20px">
                    <input type="text" class="form-control" placeholder="请输入手机验证码" name="telcode">
                    <span class="input-group-btn">
                            <button class="btn btn-primary" type="button" id="codebtn">验证码</button>
                        </span>
                </div>
                <div class="input-group input-group-lg" style="margin-bottom: 20px">
                        <span class="input-group-btn">
                            <button type="submit" class="btn btn-success btn-block">立即报名</button>
                        </span>
                </div>
            </form>
        </div>
    </div>
    <div style="background-color: #f1fafe">
        <div class="container">
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <div class="jumbotron">
                        <div>
                            <h2 class="text-center hd_h1Text">提升80%空间 节省30%费用</h2>
                            <img src="${pageContext.request.contextPath}/resources/images/activity/hd_shaFa.png"
                                 class="img-responsive"/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-md-6 column">
                    <h2 class="text-center">多重活动</h2>
                    <h2 class="text-center">精美礼品免费拿</h2>
                </div>
                <div class="col-md-6 column">
                    <h2 class="text-center">钜惠装修</h2>
                    <h2 class="text-center">签单即送大礼包</h2>
                </div>
                <div class="col-md-12 column">
                    <div class="jumbotron">
                        <a href="#portal" class="btn btn-success btn-lg"><span>0元设计活动</span></a>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="jumbotron">
                    <div>
                        <h2 class="text-center hd_h1Text">把品质做到极致</h2>
                        <img src="${pageContext.request.contextPath}/resources/images/activity/parlor_01.png"
                             class="img-responsive"/>
                    </div>
                </div>
            </div>
            <div class="col-md-4 column">
                <ul class="list-unstyled" style="text-align:center;">
                    <li><img src="${pageContext.request.contextPath}/resources/images/activity/parlor_02.png"
                             class="img-circle img-responsive" style="border-radius:50%;width:290px;height:290px;"/>
                    </li>
                    <li style="background-color:#eacc20;font-size:20px;padding:10px 0;width:250px;margin:0 auto;position:relative;top:-20px;">
                        文艺懂浪漫
                    </li>
                </ul>
            </div>
            <div class="col-md-4 column">
                <ul class="list-unstyled" style="text-align:center;">
                    <li><img src="${pageContext.request.contextPath}/resources/images/activity/parlor_03.png"
                             class="img-circle img-responsive" style="border-radius:50%;width:290px;height:290px;"/>
                    </li>
                    <li style="background-color:#eacc20;font-size:20px;padding:10px 0;width:250px;margin:0 auto;position:relative;top:-20px;">
                        轻奢高格调
                    </li>
                </ul>
            </div>
            <div class="col-md-4 column">
                <ul class="list-unstyled" style="text-align:center;">
                    <li><img src="${pageContext.request.contextPath}/resources/images/activity/parlor_04.png"
                             class="img-circle img-responsive" style="border-radius:50%;width:290px;height:290px;"/>
                    </li>
                    <li style="background-color:#eacc20;font-size:20px;padding:10px 0;width:250px;margin:0 auto;position:relative;top:-20px;">
                        温馨大空间
                    </li>
                </ul>
            </div>
            <div class="col-md-12 column">
                <div class="jumbotron">
                    <a href="#portal" class="btn btn-success btn-lg"><span>客厅基装大礼包活动</span></a>
                </div>
            </div>
        </div>
    </div>
    <div style="background-color: #f1fafe">
        <div class="container">
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <div class="jumbotron">
                        <div>
                            <h2 class="text-center hd_h1Text">把价格做到极致</h2>
                            <img src="${pageContext.request.contextPath}/resources/images/activity/cupboard_01.png"
                                 class="img-responsive"/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 column">
                <ul class="list-unstyled" style="text-align:center;">
                    <li><img src="${pageContext.request.contextPath}/resources/images/activity/cupboard_02.png"
                             class="img-circle img-responsive" style="border-radius:50%;width:290px;height:290px;"/>
                    </li>
                    <li style="background-color:#eacc20;font-size:20px;padding:10px 0;width:250px;margin:0 auto;position:relative;top:-20px;">
                        内嵌样式更省空间
                    </li>
                </ul>
            </div>
            <div class="col-md-4 column">
                <ul class="list-unstyled" style="text-align:center;">
                    <li><img src="${pageContext.request.contextPath}/resources/images/activity/cupboard_03.png"
                             class="img-circle img-responsive" style="border-radius:50%;width:290px;height:290px;"/>
                    </li>
                    <li style="background-color:#eacc20;font-size:20px;padding:10px 0;width:250px;margin:0 auto;position:relative;top:-20px;">
                        好台面无惧大压力
                    </li>
                </ul>
            </div>
            <div class="col-md-4 column">
                <ul class="list-unstyled" style="text-align:center;">
                    <li><img src="${pageContext.request.contextPath}/resources/images/activity/cupboard_04.png"
                             class="img-circle img-responsive" style="border-radius:50%;width:290px;height:290px;"/>
                    </li>
                    <li style="background-color:#eacc20;font-size:20px;padding:10px 0;width:250px;margin:0 auto;position:relative;top:-20px;">
                        分类拉篮储物更省心
                    </li>
                </ul>
            </div>
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <div class="jumbotron">
                        <a href="#portal" class="btn btn-success btn-lg"><span>橱柜大礼包活动</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="jumbotron">
                    <div>
                        <h2 class="text-center hd_h1Text">把服务做到极致</h2>
                        <img src="${pageContext.request.contextPath}/resources/images/activity/tv_wall_01.png"
                             class="img-responsive"/>
                    </div>
                </div>
            </div>
            <div class="col-md-4 column">
                <ul class="list-unstyled" style="text-align:center;">
                    <li><img src="${pageContext.request.contextPath}/resources/images/activity/tv_wall_02.png"
                             class="img-circle img-responsive" style="border-radius:50%;width:290px;height:290px;"/>
                    </li>
                    <li style="background-color:#eacc20;font-size:20px;padding:10px 0;width:250px;margin:0 auto;position:relative;top:-20px;">
                        精雕细刻雍容尽显
                    </li>
                </ul>
            </div>
            <div class="col-md-4 column">
                <ul class="list-unstyled" style="text-align:center;">
                    <li><img src="${pageContext.request.contextPath}/resources/images/activity/tv_wall_03.png"
                             class="img-circle img-responsive" style="border-radius:50%;width:290px;height:290px;"/>
                    </li>
                    <li style="background-color:#eacc20;font-size:20px;padding:10px 0;width:250px;margin:0 auto;position:relative;top:-20px;">
                        多重拼接精彩纷呈
                    </li>
                </ul>
            </div>
            <div class="col-md-4 column">
                <ul class="list-unstyled" style="text-align:center;">
                    <li><img src="${pageContext.request.contextPath}/resources/images/activity/tv_wall_04.png"
                             class="img-circle img-responsive" style="border-radius:50%;width:290px;height:290px;"/>
                    </li>
                    <li style="background-color:#eacc20;font-size:20px;padding:10px 0;width:250px;margin:0 auto;position:relative;top:-20px;">
                        无缝波光时空流转
                    </li>
                </ul>
            </div>
            <div class="col-md-12">
                <div class="jumbotron">
                    <a href="#portal" class="btn btn-success btn-lg"><span>电视墙设计报价</span></a>
                </div>
            </div>
        </div>
    </div>
    <div style="background-color: #f1fafe">
        <div class="container">
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <div class="jumbotron">
                        <div>
                            <h2 class="text-center hd_h1Text">把体验做到极致</h2>
                            <img src="${pageContext.request.contextPath}/resources/images/activity/bedroom_04.png"
                                 class="img-responsive"/>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 column">
                    <ul class="list-unstyled" style="text-align:center;">
                        <li><img src="${pageContext.request.contextPath}/resources/images/activity/bedroom_02.png"
                                 class="img-circle img-responsive" style="border-radius:50%;width:290px;height:290px;"/>
                        </li>
                        <li style="background-color:#eacc20;font-size:20px;padding:10px 0;width:250px;margin:0 auto;position:relative;top:-20px;">
                            色彩印象
                        </li>
                    </ul>
                </div>
                <div class="col-md-4 column">
                    <ul class="list-unstyled" style="text-align:center;">
                        <li><img src="${pageContext.request.contextPath}/resources/images/activity/bedroom_03.png"
                                 class="img-circle img-responsive" style="border-radius:50%;width:290px;height:290px;"/>
                        </li>
                        <li style="background-color:#eacc20;font-size:20px;padding:10px 0;width:250px;margin:0 auto;position:relative;top:-20px;">
                            安隅
                        </li>
                    </ul>
                </div>
                <div class="col-md-4 column">
                    <ul class="list-unstyled" style="text-align:center;">
                        <li><img src="${pageContext.request.contextPath}/resources/images/activity/bedroom_01.png"
                                 class="img-circle img-responsive" style="border-radius:50%;width:290px;height:290px;"/>
                        </li>
                        <li style="background-color:#eacc20;font-size:20px;padding:10px 0;width:250px;margin:0 auto;position:relative;top:-20px;">
                            乐享家
                        </li>
                    </ul>
                </div>
                <div class="col-md-12">
                    <div class="jumbotron">
                        <a href="#portal" class="btn btn-success btn-lg"><span>卧室设计报价</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="jumbotron">
                    <div>
                        <h2 class="text-center hd_h1Text">把细节做到极致</h2>
                        <img src="${pageContext.request.contextPath}/resources/images/activity/kidroom_01.png"
                             class="img-responsive"/>
                    </div>
                </div>
            </div>
            <div class="col-md-4 column">
                <ul class="list-unstyled" style="text-align:center;">
                    <li><img src="${pageContext.request.contextPath}/resources/images/activity/kidroom_02.png"
                             class="img-circle img-responsive" style="border-radius:50%;width:290px;height:290px;"/>
                    </li>
                    <li style="background-color:#eacc20;font-size:20px;padding:10px 0;width:250px;margin:0 auto;position:relative;top:-20px;">
                        童年记忆
                    </li>
                </ul>
            </div>
            <div class="col-md-4 column">
                <ul class="list-unstyled" style="text-align:center;">
                    <li><img src="${pageContext.request.contextPath}/resources/images/activity/kidroom_03.png"
                             class="img-circle img-responsive" style="border-radius:50%;width:290px;height:290px;"/>
                    </li>
                    <li style="background-color:#eacc20;font-size:20px;padding:10px 0;width:250px;margin:0 auto;position:relative;top:-20px;">
                        蓝色童话镇
                    </li>
                </ul>
            </div>
            <div class="col-md-4 column">
                <ul class="list-unstyled" style="text-align:center;">
                    <li><img src="${pageContext.request.contextPath}/resources/images/activity/kidroom_04.png"
                             class="img-circle img-responsive" style="border-radius:50%;width:290px;height:290px;"/>
                    </li>
                    <li style="background-color:#eacc20;font-size:20px;padding:10px 0;width:250px;margin:0 auto;position:relative;top:-20px;">
                        家有儿女
                    </li>
                </ul>
            </div>
            <div class="col-md-12">
                <div class="jumbotron">
                    <a href="#portal" class="btn btn-success btn-lg"><span>儿童房设计报价</span></a>
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

        if(util.detil.isPC() !== true){
            $(window).scrollTop(920);
        }else {
            $(window).scrollTop(900);
        }
    });


</script>
</html>
