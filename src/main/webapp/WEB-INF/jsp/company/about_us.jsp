<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/8/12
  Time: 15:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>关于我们</title>
    <%@include file="../common/head.jsp" %>
    <script type="text/javascript"
            src="https://webapi.amap.com/maps?v=1.3&key=bd02f29b9ab620578ecbccc3cfaffbc1"></script>
    <style type="text/css">
        .about_backcolor {
            background-color: #f4f7f9;
        }

        .about_imgZhong {
            margin: 0 auto;
        }

        .about_green {
            color: #0eb493;
        }

        .about_pLine {
            line-height: 23px;
            color: #717982;
        }

        .about_bianJu {
            margin-bottom: 20px;
        }

        .about_pfont {
            padding: 10% 5% 10% 5%;
            margin: 0;
            text-indent: 2em;
            line-height: 25px;
        }

        .about_0px {
            margin: 0;
            padding: 0;
        }

        .about_divImgP {
            height: 250px;
            background: no-repeat center;
        }

        .about_animate_div {
            width: 100%;
            height: 100%;
            background-color: rgba(28, 179, 150, 0.6);
            opacity: 0;
        }

        .about_animate_div img {
            padding-top: 15%;
        }

        .about_h3color {
            color: #FFF;
        }

        .about_ulmargin li {
            margin: 10px 20px 10px 20px;
        }

        .about_ulmargin li p {
            padding: 5px 10px;
            border-radius: 5px;
        }

        .about_menuColor {
            background-color: #0eb493;
            color: #FFF;
        }

        .about_ul_li {
            line-height: 30px;
            margin-top: 10px;
            color: #CCCCCC;
        }

        .about_ul_li h4 {
            color: #0eb493;
        }

        .about_rel img {
            margin: 0 auto;
        }

        .about_team {
            background-color: #0eb493;
            opacity: 0;
        }

        .about_team ul {
            padding: 10px;
        }

        .about_team ul li {
            color: #FFF;
            line-height: 25px;
        }

        .about_ico_div {
            background: url("https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/backimg.png");
            padding: 110px 0;
            margin-top: 50px;
        }

        .about_ico_li {
            color: #FFF;
            font-size: 18px;
            margin-top: 30px;
        }

        .about_ico_li li:FIRST-CHILD {
            font-size: 35px;
        }

        .about_tab {
            margin: 0 5px;
        }

        .about_tab a {
            border-radius: 10px;
            border: none;
        }

        .about_tab a:HOVER {
            border-radius: 10px;
            border: solid 1px #FFF;
        }

        #myTabContent .col-md-3 {
            padding: 0 0;
        }

        .about_abs {
            position: absolute;
            left: 15px;
            top: 0;
        }
    </style>

</head>
<body>
<%@include file="../common/header.jsp" %>
<div class="page-wrapper">
    <div class="container-fluid" style="padding-right: 0;padding-left: 0">
        <div class="carousel slide" id="carousel-143901">
            <ol class="carousel-indicators">
                <li class="active" data-slide-to="0" data-target="#carousel-143901">
                </li>
                <li data-slide-to="1" data-target="#carousel-143901">
                </li>
                <li data-slide-to="2" data-target="#carousel-143901">
                </li>
            </ol>
            <div class="carousel-inner">
                <div class="item active">
                    <img alt="" src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/about_banner01.png"/>
                    <div class="carousel-caption" style="left: 0;right: 0">
                        <h2>
                            装修帮办，<br/>
                            一个中国新兴的家装模式互联网创新服务平台
                        </h2>
                    </div>
                </div>
                <div class="item">
                    <img alt="" src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/about_banner02.png"/>
                    <div class="carousel-caption">
                        <h4>

                        </h4>
                        <p>

                        </p>
                    </div>
                </div>
                <div class="item">
                    <img alt="" src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/about_banner03.png"/>
                    <div class="carousel-caption">
                        <h4>

                        </h4>
                        <p>

                        </p>
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#carousel-143901" data-slide="prev"><span
                    class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control"
                                                                            href="#carousel-143901"
                                                                            data-slide="next"><span
                class="glyphicon glyphicon-chevron-right"></span></a>
        </div>
    </div>
    <div class="about_backcolor">
        <div class="container">
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <h3>&nbsp;</h3>
                    <h2 class="text-center about_green">分类</h2>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/about_xin.png"
                         class="img-responsive about_imgZhong"/>
                    <h3>&nbsp;</h3>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-md-3 column">
                    <h3 class="about_green about_bianJu"><strong>关于我们</strong></h3>
                    <p class="about_pLine">我们致力于通过互联网线上服务平台，以装配式家装模式为服务主体，以平台担保支付为服务保障，为广大消费者提供价格透明、施工保障、省钱省心的装修服务!</p>
                </div>
                <div class="col-md-3 column">
                    <h3 class="about_green about_bianJu"><strong>工程领域</strong></h3>
                    <p class="about_pLine">为全方位的为业主做好装饰装修的服务，真正使消费者安心、放心、省心、省力、省钱，打造一个满意的温馨而舒适的生活空间</p>
                </div>
                <div class="col-md-3 column">
                    <h3 class="about_green about_bianJu"><strong>开发团队</strong></h3>
                    <p class="about_pLine">
                        这里具有专业的开发工程师，JAVA工程师，UI设计师，使公司在研发上具有很强的竞争力。这是一支充满活力与高素质的团队，年轻化的研发团队为公司蓬勃发展提供源源不断的活力与动力。</p>
                </div>
                <div class="col-md-3 column">
                    <h3 class="about_green about_bianJu"><strong>运营团队</strong></h3>
                    <p class="about_pLine">
                        本团队成员来自不同学院多个专业，合理搭配能力，具有一定的经济学、管理学、市场分析及营销方面的基础知识技能，组员多次获得一等奖学金、国奖等。责任心上进心强，具有很好的团队协作能力与社会实践能力。</p>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <h1>&nbsp;</h1>
                <h2 class="about_green about_bianJu text-center"><strong>关于我们</strong></h2>
                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/about_xin.png"
                     class="img-responsive about_imgZhong"/>
                <p>&nbsp;</p>
                <p class="about_pLine text-center">
                    装修帮办是北京三维家装饰工程管理有限公司旗下运营的互联网服务平台。我们致力于通过互联网线上服务平台，以装配式家装模式为服务主体，以平台担保支付为服务保障，为广大消费者提供价格透明、施工保障、省钱省心的装修服务!</p>
                <h1>&nbsp;</h1>
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-md-6 column about_0px">
                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/title01.png" class="about_0px"
                     style="width:100%;">
            </div>
            <div class="col-md-6 column about_0px">
                <p class="about_pfont">
                    这是一个信息平台，通过对工人与建材商的信息资源整合，为业主提供了优质的信息服务。
                    却也不单单是一个信息平台，我们正在重新定义和创造家装家居行业的消费体验，以互联
                    网为主的一整套信息技术（包括移动互联网、云计算、流量大数据等）在业务流程中的深
                    度扩散和应用
                </p>
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-md-6 column about_0px">
                <p class="about_pfont">
                    我们凭借家装产品数字化的变革及服务产品信息化改造，实现技术创新和新型泛家装式的
                    服务理念，线上体验和线下服务协同互通，平台统一规划、统一设计，打造从传统装修模
                    式到装配式家装模式的颠覆性，客户直接在线上即可完成整个家装流程的体验
                </p>
            </div>
            <div class="col-md-6 column about_0px">
                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/title02.png" class="about_0px"
                     style="width:100%;">
            </div>
        </div>

        <div class="row clearfix">
            <div class="col-md-12 column">
                <h1>&nbsp;</h1>
                <h2 class="about_green about_bianJu text-center"><strong>工程领域</strong></h2>
                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/about_xin.png"
                     class="img-responsive about_imgZhong"/>
                <p>&nbsp;</p>
                <p class="about_pLine text-center">为全方位的为业主做好装饰装修的服务，真正使消费者安心、放心、省心、省力、省钱，打造一个满意的温馨而舒适的生活空间</p>
                <h1>&nbsp;</h1>
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div style="text-align: center">
                    <ul id="myTab" class="nav nav-tabs center-block" style="padding:25px 0;display: inline-block">
                        <li class="about_tab active"><a href="#xiandai" data-toggle="tab">现代</a></li>
                        <li class="about_tab"><a href="#zhongshi" data-toggle="tab">中式</a></li>
                        <li class="about_tab"><a href="#tianyuan" data-toggle="tab">田园</a></li>
                        <li class="about_tab"><a href="#dizhonghai" data-toggle="tab">地中海</a></li>
                        <li class="about_tab"><a href="#oshi" data-toggle="tab">欧式</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div id="myTabContent" class="tab-content">
            <div class="tab-pane fade in active" id="xiandai">
                <div class="row clearfix">
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP"
                             style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/Modern-01.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">简单爱</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP"
                             style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/Modern-02.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">光辉城市</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP"
                             style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/Modern-03.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">宁静的力量</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP"
                             style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/Modern-04.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">都市节奏</h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP"
                             style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/Modern-05.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">错位空间</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP"
                             style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/Modern-06.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">自由家</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP"
                             style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/Modern-07.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">咖啡滋味</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP"
                             style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/Modern-08.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">自在生活</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="zhongshi">
                <div class="row clearfix">
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP"
                             style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/Chinese_style-01.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">流金岁月</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP"
                             style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/Chinese_style-02.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">东方禅韵</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP"
                             style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/Chinese_style-03.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">回归生活</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP"
                             style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/Chinese_style-04.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">韵憩</h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP"
                             style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/Chinese_style-05.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">悠居之时</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP"
                             style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/Chinese_style-06.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">溯源新筑</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP"
                             style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/Chinese_style-07.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">墨印</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP"
                             style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/Chinese_style-08.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">原木主张</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="tianyuan">
                <div class="row clearfix">
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP" style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/Countryside-01.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">夏日花园</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP" style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/Countryside-02.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">清风之家</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP" style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/Countryside-03.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">自然入境</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP" style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/Countryside-04.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">轻描淡写</h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row cleafix">
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP"
                             style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/Countryside-05.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">春风十里</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP"
                             style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/Countryside-06.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">一场春梦</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP"
                             style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/Countryside-07.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">返璞归真</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP"
                             style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/Countryside-08.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">时光里</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="dizhonghai">
                <div class="row cleafix">
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP" style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/Mediterranean-01.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">串联的风景</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP" style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/Mediterranean-02.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">蓝色似海</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP" style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/Mediterranean-03.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">梦享生活</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP" style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/Mediterranean-04.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">蓝湾</h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row cleafix">
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP" style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/Mediterranean-05.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">风轻云淡</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP" style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/Mediterranean-06.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">色彩点播</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP" style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/Mediterranean-07.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">浪漫满屋</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP" style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/Mediterranean-08.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">蓝色魅影</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="oshi">
                <div class="row clearfix">
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP" style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/European-01.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">宁静北欧</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP" style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/European-02.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">减法生活</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP" style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/European-03.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">挪威森林</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP" style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/European-04.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">古堡假日</h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP" style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/European-05.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">莱茵映象</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP" style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/European-06.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">欧式浪漫</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP" style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/European-07.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">自然居所</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 column">
                        <div class="about_divImgP" style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/Decoration_picture/European-08.png?x-oss-process=style/size');">
                            <div class="about_animate_div">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/icon-Eye.png"
                                     class="about_imgZhong img-responsive">
                                <h3 class="about_h3color text-center">北欧风情</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <h3>&nbsp;</h3>
                <h2 class="text-center about_green">开发团队</h2>
                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/about_xin.png"
                     class="img-responsive about_imgZhong"/>
                <h3>&nbsp;</h3>
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-md-3 col-sm-6 col-xs-12 column">
                <div class="about_rel about_chuPeng">
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/IT_team/pyr.png"
                         class="about_absImg"/>
                    <div class="about_team about_abs">
                        <ul class="list-unstyled text-center">
                            <li><h4><strong>技术总监</strong></h4></li>
                            <li>具有多年JAVA Web开发经验，对于最新的响应式网站开发具有独到的见解。</li>
                        </ul>
                    </div>
                    <div class="list-unstyled text-center about_ul_li">
                        <h4><strong>平芸瑞</strong></h4>
                        <h5>技术总监</h5>
                    </div>
                </div>

            </div>
            <div class="col-md-3 col-sm-6 col-xs-12 column">
                <div class="about_rel about_chuPeng">
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/IT_team/mm.png"
                         class="about_absImg"/>
                    <div class="about_team about_abs">
                        <ul class="list-unstyled text-center">
                            <li><h4><strong>UI设计师</strong></h4></li>
                            <li>有着多年的设计经验，对极简主义有着自己的独特理解，对于HTML5的响应式开发有独到的见解。</li>
                        </ul>
                    </div>
                    <div class="list-unstyled text-center about_ul_li">
                        <h4><strong>马铭</strong></h4>
                        <h5>UI设计师</h5>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12 column">
                <div class="about_rel about_chuPeng">
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/IT_team/lf.png"
                         class="about_absImg"/>
                    <div class="about_team about_abs">
                        <ul class="list-unstyled text-center">
                            <li><h4><strong>JAVA程序员</strong></h4></li>
                            <li>具有深刻的JAVA开发经验，年轻，充满活力的极客。</li>
                        </ul>
                    </div>
                    <div class="list-unstyled text-center about_ul_li">
                        <h4><strong>赵志衡</strong></h4>
                        <h5>JAVA程序员</h5>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12 column">
                <div class="about_rel about_chuPeng">
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/IT_team/ws.png"
                         class="about_absImg"/>
                    <div class="about_team about_abs">
                        <ul class="list-unstyled text-center">
                            <li><h4><strong>实习运维</strong></h4></li>
                            <li>曾经的JAVA程序员，转职DBA后，现任职公司运维管理。</li>
                        </ul>
                    </div>
                    <div class="list-unstyled text-center about_ul_li">
                        <h4><strong>王帅</strong></h4>
                        <h5>实习运维</h5>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="about_ico_div">
        <div class="container">
            <div class="row clearfix">
                <div class="col-md-3 col-sm-6 col-xs-6 column">
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/ico01.png"
                         class="img-responsive about_imgZhong">
                    <ul class="list-unstyled text-center about_ico_li">
                        <li><strong>2100</strong></li>
                        <li>公司面积</li>
                    </ul>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-6 column">
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/ico02.png"
                         class="img-responsive about_imgZhong">
                    <ul class="list-unstyled text-center about_ico_li">
                        <li><strong>10</strong></li>
                        <li>加盟商</li>
                    </ul>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-6 column">
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/ico03.png"
                         class="img-responsive about_imgZhong">
                    <ul class="list-unstyled text-center about_ico_li">
                        <li><strong>80</strong></li>
                        <li>万用户选择</li>
                    </ul>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-6 column">
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/aboutus/ico04.png"
                         class="img-responsive about_imgZhong">
                    <ul class="list-unstyled text-center about_ico_li">
                        <li><strong>13</strong></li>
                        <li>覆盖地区</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div id="amap" style="width: auto;height: 300px">

    </div>
    <%@include file="../common/footer.jsp" %>
</body>
<%@include file="../common/script.jsp" %>
<script type="text/javascript">
    $(function () {
        $("#carousel-143901").carousel('cycle');
        $(".about_animate_div").hover(function () {
            $(this).stop().animate({"opacity": "1"});
        }, function () {
            $(this).stop().animate({"opacity": "0"});
        });

//        var $imgLen = $(".about_absImg").length;
//        for (var i = 0; i < $imgLen; i++) {
//            $(".about_ul_li:eq(" + i + ")").css({"margin-top": "298px"});
//        }

        $(".about_chuPeng").hover(function () {
            var $img = $(".about_absImg");
            var $imgLen = $img.length;
            var $imgwidth = $img.width();
            var $imgheight = $img.height();
            $(this).find(".about_team").stop().animate({"opacity": "1", "width": $imgwidth, "height": $imgheight}, 200);
        }, function () {
            $(this).find(".about_team").stop().animate({"width": 0, "height": 0, "opacity": "0"});
        });
        var map = new AMap.Map('amap', {
            zoom: 15,
            center: [116.425477, 40.128236]
        });

        function addMarker() {
            marker = new AMap.Marker({
                icon: "http://webapi.amap.com/theme/v1.3/markers/n/mark_b.png",
                position: [116.425477, 40.128236]
            });
            marker.setMap(map);
        }

        function updateMarker() {
            // 自定义点标记内容
            var markerContent = document.createElement("div");

            // 点标记中的图标
            var markerImg = document.createElement("img");
            markerImg.className = "markerlnglat";
            markerImg.src = "https://webapi.amap.com/theme/v1.3/markers/n/mark_r.png";
            markerContent.appendChild(markerImg);

            // 点标记中的文本
            var markerSpan = document.createElement("span");
            markerSpan.className = 'marker';
            markerSpan.innerHTML = "装修帮办";
            markerContent.appendChild(markerSpan);

            marker.setContent(markerContent); //更新点标记内容
            marker.setPosition([116.425477, 40.128236]); //更新点标记位置
        }

        addMarker();
        updateMarker();
    });
</script>
</html>
