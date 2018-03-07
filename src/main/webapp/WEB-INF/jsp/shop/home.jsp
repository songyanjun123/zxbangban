<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/9/13
  Time: 18:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商城主页|装修帮办</title>
    <%@include file="../common/head.jsp" %>
    <style type="text/css">
        .sc_h1 {
            background-color: #e48632;
            color: #FFF;
            margin: 0;
            padding: 14px 0 14px 14px;
        }

        .taoChan p {
            text-indent: 0;
            color: red;
            font-weight: bold;
            font-size: 28px;
        }
        .taoChan-titile h1 {
            margin: 0;
            padding: 14px 0 14px 14px;
        }

        .taoChan-titile h1 small {
            font-size: 40%;
            color: white;
        }
        .banner{
            height: 700px;
        }

        @media screen and (max-width: 600px){
            .banner{
                height: 500px;
            }
        }
        @media screen and (max-width: 400px) {
            .banner{
                height: 350px;
            }

            .sc_h1 {
                padding-left: 0;
                font-size: 26px;
            }
        }

        .jumbotron {
            color: white;
            height: 212px;
            border-radius: 0;
            text-align: center;
        }

        .h_one {
            color: #fff;
            padding: 20px;
            margin: 0.5em 0 0 0;
        }

        .col-md-5, .col-sm-5 {
            padding-right: 0;
        }

        .col-md-7, .col-sm-7 {
            padding-left: 0;
        }

        .col-md-5 > .jumbotron, .col-sm-5 > .jumbotron, .col-md-7 > .jumbotron, .col-sm-7 > .jumbotron {
            padding: 20px 24px;
            border-radius: 0;
        }

        .col-md-6 > .jumbotron, .col-sm-6 > .jumbotron, .col-xs-6 > .jumbotron {
            color: #80bcc6;
            padding: 4px 10px;
            height: auto;

        }

        .col-md-6 > .jumbotron img {
            border-radius: 5%;
        }

        .d_one img {
            border-radius: 5%;
        }

        .d_three {
            box-sizing: border-box;
            padding-bottom: 15px;
            text-align: center;
        }

        .d_six h3 {
            font-size: 1.5em;
        }

        .d_six h4 {
            font-size: 1.4em;
        }

        .d_eight {
            text-align: center;
            font-size: 1.2em;
            color: #58688f;
            line-height: 2em;
        }

        .d_eight img {
            margin: 0 auto;
        }

        .d_ten {
            float: left;
            padding-left: 2em;
            padding-top: 1em;
            text-align: center;
        }

        .p_one {
            text-indent: 0;
            padding-top: 10px;
            padding-bottom:10px;
            padding-left: 20px;
            font-size: 1.2em;
        }

        .btn-default {
            color: white;
            background: #6d7b9d;
            border: 1px solid #a3acc2;
        }
        .brand4{
            height: 240px;
          }
    </style>
</head>
<body>
<%@include file="../common/header.jsp" %>
<div class="page-wrapper">
    <div class="container-fluid banner" style="background-image: url('/resources/images/shop/shop_banner_bgi.png')">
        <div class="container" style="margin-top: 100px">
            <div class="jumbotron" style="background-color: transparent;">
                <img src="${pageContext.request.contextPath}/resources/images/shop/shop_banner.png" alt="" class="img-responsive" style="margin: 0 auto">
            </div>

        </div>

    </div>
    <div class="container">
        <p>&nbsp;</p>
        <div class="row clearfix">
            <div class="col-md-6 column">
                <img src="${pageContext.request.contextPath}/resources/images/shop/sc_left.png" class="img-responsive">
            </div>
            <div class="col-md-6 column">
                <img src="${pageContext.request.contextPath}/resources/images/shop/sc_right.png" class="img-responsive">
            </div>
        </div>
        <p>&nbsp;</p>

        <div class="row clearfix">
            <div class="col-md-6 col-sm-12 col-xs-12 column">
                <h2 style="background:#31bdd4;" class="h_one">王者陶瓷</h2>
                <div class="row clearfix">
                    <div class="col-md-6 col-sm-6 col-xs-12 column">
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-6 column">
                                <div class="jumbotron">
                                    <h4>卡拉拉白</h4>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-6 column">
                                <div class="jumbotron">
                                    <img src="${pageContext.request.contextPath}/resources/images/shop/wangzhe/1.jpg"
                                         class="img-responsive"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12 column">
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-6 column">
                                <div class="jumbotron">
                                    <h4>凌霄灰岩</h4>
                                </div>

                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-6 column">
                                <div class="jumbotron">
                                    <img src="${pageContext.request.contextPath}/resources/images/shop/wangzhe/2.jpg"
                                         class="img-responsive"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12 column">
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-6 column">
                                <div class="jumbotron">
                                    <h4>天使米黄</h4>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-6 column">
                                <div class="jumbotron">
                                    <img src="${pageContext.request.contextPath}/resources/images/shop/wangzhe/3.jpg"
                                         class="img-responsive"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12 column">
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-6 column">
                                <div class="jumbotron">
                                    <h4>圣德保米黄</h4>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-6 column">
                                <div class="jumbotron">
                                    <img src="${pageContext.request.contextPath}/resources/images/shop/wangzhe/4.jpg"
                                         class="img-responsive"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12 column">
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-6 column">
                                <div class="jumbotron">
                                    <h4>霓虹木歌</h4>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-6 column">
                                <div class="jumbotron">
                                    <img src="${pageContext.request.contextPath}/resources/images/shop/wangzhe/5.jpg"
                                         class="img-responsive"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12 column">
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-6 column">
                                <div class="jumbotron">
                                    <h4>阿曼米黄</h4>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-6 column">
                                <div class="jumbotron">
                                    <img src="${pageContext.request.contextPath}/resources/images/shop/wangzhe/6.jpg"
                                         class="img-responsive"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-sm-12 col-xs-12 column">
                <h2 style="background:#ae80c6;" class="h_one">东鹏洁具</h2>
                <div class="row clearfix">
                    <div class="col-md-12 column">
                        <p class="p_one">专业成就未来</p>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-md-4 col-sm-4 col-xs-4 column">
                        <div class="d_three">
                            <img src="${pageContext.request.contextPath}/resources/images/shop/7.png"
                                 class="img-responsive"/>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-4 column">
                        <div class="d_three">
                            <img src="${pageContext.request.contextPath}/resources/images/shop/8.png"
                                 class="img-responsive"/>
                        </div>
                    </div>

                    <div class="col-md-4 col-sm-4 col-xs-4 column">
                        <div class="d_three">
                            <img src="${pageContext.request.contextPath}/resources/images/shop/9.png"
                                 class="img-responsive"/>
                        </div>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-md-12 column">
                        <p class="p_one">天天健康“恒久远”，日日清新“洁”万家</p>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-md-4 col-sm-4 col-xs-4 column">
                        <div class="d_three">
                            <img src="${pageContext.request.contextPath}/resources/images/shop/10.png"
                                 class="img-responsive"/>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-4 column">
                        <div class="d_three">
                            <img src="${pageContext.request.contextPath}/resources/images/shop/11.png"
                                 class="img-responsive"/>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-4 column">
                        <div class="d_three">
                            <img src="${pageContext.request.contextPath}/resources/images/shop/12.png"
                                 class="img-responsive"/>
                        </div>
                    </div>

                </div>
            </div>

        </div>
        <div style="margin-bottom: 20px">
            <h1 class="sc_h1" style="background:#f64545;">&nbsp;&nbsp;东鹏瓷砖&nbsp;&nbsp;
            </h1>
        </div>
        <div class="row clearfix">
            <div class="col-md-2 col-sm-2 col-xs-4 column">
                <div class="taoChan">
                    <div class="">
                        <img src="${pageContext.request.contextPath}/resources/images/shop/dongpeng_cizhuan/1.png"
                             class="img-responsive">
                        <h5>雪花厨卫套餐</h5>
                    </div>
                </div>
            </div>
            <div class="col-md-2 col-sm-2 col-xs-4 column">
                <div class="taoChan">
                    <div class="">
                        <img src="${pageContext.request.contextPath}/resources/images/shop/dongpeng_cizhuan/2.png"
                             class="img-responsive">
                        <h5>彩云厨卫套餐</h5>
                    </div>
                </div>
            </div>
            <div class="col-md-2 col-sm-2 col-xs-4 column">
                <div class="taoChan">
                    <div class="">
                        <img src="${pageContext.request.contextPath}/resources/images/shop/dongpeng_cizhuan/3.png"
                             class="img-responsive">
                        <h5>白天鹅通体大理石</h5>
                    </div>
                </div>
            </div>
            <div class="col-md-2 col-sm-2 col-xs-4 column">
                <div class="taoChan">
                    <div class="">
                        <img src="${pageContext.request.contextPath}/resources/images/shop/dongpeng_cizhuan/4.png"
                             class="img-responsive">
                        <h5>胡桃木木纹砖</h5>
                    </div>
                </div>
            </div>
            <div class="col-md-2 col-sm-2 col-xs-4 column">
                <div class="taoChan">
                    <div class="">
                        <img src="${pageContext.request.contextPath}/resources/images/shop/dongpeng_cizhuan/5.png"
                             class="img-responsive">
                        <h5>丝韵仿古砖</h5>
                    </div>
                </div>
            </div>
            <div class="col-md-2 col-sm-2 col-xs-4 column">

            </div>
        </div>

        <div class="row clearfix">
            <div class="col-md-6 col-sm-6 col-xs-12 column">
                <div class="row">
                    <div class="col-md-5 col-sm-5 col-xs-5 column">
                        <div class="jumbotron brand4" style="background: #72bb90;">
                            <hr style="border-top: 2px solid #eee;"/>
                            <h3>宏陶陶瓷</h3>
                            <hr style="border-top: 2px solid #eee;"/>
                            <h4>自然之美,大理石</h4>
                        </div>
                    </div>
                    <div class="col-md-7 col-sm-7 col-xs-7 column">
                        <div class="jumbotron brand4" style="background: #dfe9e1;">
                            <img src="${pageContext.request.contextPath}/resources/images/shop/4brand/1.png"
                                 class="img-responsive"/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-12 column">
                <div class="row">
                    <div class="col-md-5 col-sm-5 col-xs-5 column">
                        <div class="jumbotron brand4" style="background: #ded47b;">
                            <hr style="border-top: 2px solid #eee;"/>
                            <h3>金丝玉玛</h3>
                            <hr style="border-top: 2px solid #eee;"/>
                            <h4>K金瓷砖金星玉</h4>
                        </div>
                    </div>
                    <div class="col-md-7 col-sm-7 col-xs-7 column">
                        <div class="jumbotron brand4" style="background: #fffde9;">
                            <img src="${pageContext.request.contextPath}/resources/images/shop/4brand/2.png"
                                 class="img-responsive"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-md-6 col-sm-6 col-xs-12 column">
                <div class="row">
                    <div class="col-md-5 col-sm-5 col-xs-5 column">
                        <div class="jumbotron brand4" style="background: #5c5566;">
                            <hr style="border-top: 2px solid #eee;"/>
                            <h3>西姆橱柜</h3>
                            <hr style="border-top: 2px solid #eee;"/>
                            <h4>爱琴海
                            </h4>
                        </div>
                    </div>
                    <div class="col-md-7 col-sm-7 col-xs-7 column">
                        <div class="jumbotron brand4" style="background: #b2abb7;">
                            <img src="${pageContext.request.contextPath}/resources/images/shop/4brand/3.png"
                                 class="img-responsive"/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-12 column">
                <div class="row">
                    <div class="col-md-5 col-sm-5 col-xs-5 column">
                        <div class="jumbotron brand4" style="background: #498c94;">
                            <hr style="border-top: 2px solid #eee;"/>
                            <h3>适而居</h3>
                            <hr style="border-top: 2px solid #eee;"/>
                            <h4>现代简约卧室</h4>
                        </div>
                    </div>
                    <div class="col-md-7 col-sm-7 col-xs-7 column">
                        <div class="jumbotron brand4" style="background: #c4dae0;">
                            <img src="${pageContext.request.contextPath}/resources/images/shop/4brand/4.png"
                                 class="img-responsive"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div style="background:#58688f;padding: 14px 0 14px 14px">
                    <div class="row">
                        <div class="col-md-6 col-md-12 column">
                            <h1 style="color: white;margin-top: 0;margin-bottom: 0;">森海饰材</h1>
                        </div>
                        <div class="col-md-6 col-md-12 column">
                            <div class="btn-toolbar" role="toolbar" style="margin-top: 4px">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default">板材</button>
                                    <button type="button" class="btn btn-default">钉子</button>
                                    <button type="button" class="btn btn-default">轻钢</button>
                                    <button type="button" class="btn btn-default">辅料</button>
                                    <button type="button" class="btn btn-default">油漆辅料</button>
                                    <button type="button" class="btn btn-default">内墙</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-md-3 col-sm-3 col-xs-12 column">
                <div class="d_eight">
                    <img src="${pageContext.request.contextPath}/resources/images/shop/21.jpg" class="img-responsive"/>
                    <p style="margin: 0 auto; width:5em;background: #A3ACC2;color: #FFFFFF;font-size:1.5em;text-indent: 0">
                        板材</p>
                    有板有眼<br/>
                    健康之选
                </div>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-12 column">
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-6 column">

                        <div class="d_ten">
                            <img src="${pageContext.request.contextPath}/resources/images/shop/22.jpg"
                                 class="img-responsive"/><br/>
                            真真切切的品质
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-6 column">
                        <div class="d_ten">
                            <img src="${pageContext.request.contextPath}/resources/images/shop/23.jpg"
                                 class="img-responsive"/><br/>
                            实实在在的选择
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-6 column">
                        <div class="d_ten">
                            <img src="${pageContext.request.contextPath}/resources/images/shop/24.jpg"
                                 class="img-responsive"/><br/>
                            彰显不凡的气质
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-6 column">
                        <div class="d_ten">
                            <img src="${pageContext.request.contextPath}/resources/images/shop/25.jpg"
                                 class="img-responsive"/><br/>
                            缔造经典空间
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-3 col-xs-12 column">
                <div class="d_eight">
                    <img src="${pageContext.request.contextPath}/resources/images/shop/26.jpg" class="img-responsive"/>
                    <p style="margin: 0 auto; width:5em;background: #A3ACC2;color: #FFFFFF;font-size:1.5em;text-indent: 0">
                        内饰</p>
                    绿色相伴<br/>
                    健康未来
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="../common/footer.jsp" %>
<div class="ewm">
    <img src="${pageContext.request.contextPath}/resources/images/common/QR.png" alt="关注公众号，领取大礼包" class="img-responsive">
</div>

<style type="text/css">
    .ewm {
        width: 150px;
        height: 100px;
        position: fixed;
        left: -110px;
        top: 40%;
        z-index: 9999;
    }

</style>
</body>
<%@include file="../common/script.jsp" %>
</html>
