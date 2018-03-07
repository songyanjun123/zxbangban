<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/19
  Time: 17:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="utf-8" %>
<html>
<head>
    <title>丽绣刺绣墙布</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="我们对自己所要追求的目标充满信心">
    <meta name="keywords" content="丽绣无缝墙布,丽绣刺绣墙布,丽绣刺绣,欧雅乐,丽绣刺绣无缝墙布">
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
    <style type="text/css">
        .ribbon {
            background-color: rgba(255,70,70,0.8);
            overflow: hidden;
            /* top left corner */
            position: absolute;
            right: -2.25em;
            top: 0;
            /* 45 deg ccw rotation */
            -moz-transform: rotate(30deg);
            -webkit-transform: rotate(30deg);
            /* shadow */
            /* -moz-box-shadow: 0 0 1em #888;
            -webkit-box-shadow: 0 0 1em #888; */
        }
        .ribbon a {
            border: 1px solid #faa;
            color: #fff;
            display: block;
            font: bold 67.25% 'Helvetiva Neue', Helvetica, Arial, sans-serif;
            margin: 0.05em 0 0.075em 0;
            padding: 0 3.6em;
            text-align: center;
            text-decoration: none;
            /* shadow */
            text-shadow: 0 0 0.5em #444;
        }
        .ribbon1 {
            background-color: rgba(255,70,70,0.8);
            overflow: hidden;
            /* top left corner */
            position: absolute;
            right: -3em;
            top: 0;
            /* 45 deg ccw rotation */
            -moz-transform: rotate(30deg);
            -webkit-transform: rotate(30deg);
            /* shadow */
            /* -moz-box-shadow: 0 0 1em #888;
            -webkit-box-shadow: 0 0 1em #888; */
        }
        .ribbon1 a {
            border: 1px solid #faa;
            color: #fff;
            display: block;
            font: bold 67.25% 'Helvetiva Neue', Helvetica, Arial, sans-serif;
            margin: 0.06em 0 0.06em 0;
            padding:  0 3.5em 0 6em;
            text-align: center;
            text-decoration: none;
            /* shadow */
            text-shadow: 0 0 0.5em #444;
        }
    </style>
</head>
<body>

<%@include file="../common/header.jsp"%>
<div class="page-wrapper">
    <div style="background: url('https://zxbangban.oss-cn-beijing.aliyuncs.com/brand/2/1.png') no-repeat;height: 900px;">
        <div class="container">
            <div class="jumbotron brandBanner">
                <h1>丽绣刺绣墙布</h1>
                <span>简约舒适的墙布，温馨怡人的家</span>
            </div>
        </div>
    </div>
    <div>
        <div class="container">
            <div class="row clearfix">
                <div class="jumbotron">
                    <h1 class="text-center" style="margin-top: 40px"><strong>传承刺绣国粹</strong></h1>
                    <h3 class="text-center" style="margin-bottom: 40px">高雅，尊贵，时尚的艺术品</h3>
                </div>
            </div>

            <div class="row clearfix">
                <div class="col-md-6 column">
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/brand/2/2.png" class="img-responsive"/>
                    <p class="mooup">
                        古老的纹样，使用流行色系搭配进行重新演绎，令经典造型再现全新形象。
                    </p>
                    <h3>&nbsp;</h3>
                </div>
                <div class="col-md-6 column">
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/brand/2/3.png" class="img-responsive"/>
                    <p class="mooup">
                        夸张的花朵图案，往往能带来惊艳的装饰效果。
                    </p>
                    <h3>&nbsp;</h3>
                </div>
                <div class="col-md-6 column">
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/brand/2/4.png" class="img-responsive"/>
                    <p class="mooup">
                        追求修身养性的生活境界，总体布局对称均衡，端正稳健，崇尚自然，富于变化，充分体现出中国传统美学精神。
                    </p>
                    <h3>&nbsp;</h3>
                </div>
                <div class="col-md-6 column">
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/brand/2/5.png" class="img-responsive"/>
                    <p class="mooup">
                        简单或繁复图案，都能与时尚接轨，稳重不失轻快，又能将温婉高贵气质展现的淋漓尽致。
                    </p>
                    <h3>&nbsp;</h3>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-md-6 column">
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/brand/2/6.png" class="img-responsive"/>
                    <p class="mooup">
                        褪去浓妆淡抹的装饰，细细品味，精美的工艺，别致的针脚，给人以高贵优雅之感，无一不显示着主任细腻的生活态度。
                    </p>
                    <h3>&nbsp;</h3>
                </div>
                <div class="col-md-6 column">
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/brand/2/7.png" class="img-responsive"/>
                    <p class="mooup">
                        稳重的深色系，大气而充满舒适感，有着高调而不张杨的奢华感，体现对品质生活的追求。
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="../common/footer.jsp"%>
</body>
<%@include file="../common/script.jsp"%>
</html>
