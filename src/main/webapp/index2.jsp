<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
<head>
    <title>装修帮办-装修找帮办,省钱又省心</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no" />
    <link rel="stylesheet" type="text/css" href="resources/css/main.css" />
    <link rel="stylesheet" type="text/css" href="resources/css/index.css" />
    <script src="resources/js/tab.js" type="text/javascript" charset="utf-8"></script>
    <script src="resources/js/main.js"></script>
    <script src="resources/js/tab.js"></script>
    <style type="text/css">
        .TechnolgP li div{
            width:150px;
            height:150px;
            display: table-cell;
            vertical-align: middle;
            text-align: center;
            background: #fcaf0a;
            border-radius: 50%;
        }
    </style>
</head>
<body>
<%@include file="WEB-INF/jsp/common/header.jsp" %>
<!--banner-->
<div class="banner" id="banner1" >
    <div class="banner-view"></div>
    <div class="banner-btn"></div>
    <div class="banner-number"></div>
    <div class="banner-progres"></div>
</div>
<script type="text/javascript">
    var w = document.documentElement.clientWidth || document.body.clientWidth;

    if(/Android|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)) {
//            var a = bannerOff.style.height= "200";
        var banner = new FragmentBanner({
            container : "#banner1",//选择容器 必选
            imgs : ['resources/images/banner1.png','resources/images/banner2.png','resources/images/banner3.png'],//图片集合 必选
            size : {
                width : w,
                height : 150
            },//容器的大小 可选
            //行数与列数 可选
            grid : {
                line :6,
                list : 8
            },
            index: 0,//图片集合的索引位置 可选
            type : 1,//切换类型 1 ， 2 可选
            boxTime : 1000,//小方块来回运动的时长 可选
            fnTime : 10000//banner切换的时长 可选
        });
    } else {
        var banner = new FragmentBanner({
            container : "#banner1",//选择容器 必选
            imgs : ['resources/images/banner1.png','resources/images/banner2.png','resources/images/banner3.png'],//图片集合 必选
            size : {
                width : w,
                height : 450
            },//容器的大小 可选
            //行数与列数 可选
            grid : {
                line : 12,
                list : 14
            },
            index: 0,//图片集合的索引位置 可选
            type : 2,//切换类型 1 ， 2 可选
            boxTime : 1000,//小方块来回运动的时长 可选
            fnTime : 10000//banner切换的时长 可选
        });
    }
</script>
<div class="container">
    <div class="TechnolgP">
        <ul>
            <li>
                <div>
                    <img src="resources/images/home/helmet.png" alt="" />
                </div>
                <p>预约工人</p>
            </li>
            <li>
                <div>

                    <img src="resources/images/home/right_arrow.png" alt="" />
                </div>

            </li>
            <li>
                <div>
                    <img src="resources/images/home/budget.png" alt="" />
                </div>
                <p>价格PK</p>
            </li>
            <li>
                <div>

                    <img src="resources/images/home/right_arrow.png" alt="" />
                </div>

            </li>
            <li>
                <div>
                    <img src="resources/images/home/ruler.png" alt="" />
                </div>
                <p>三方协议</p>
            </li>
            <li>
                <div>
                    <img src="resources/images/home/right_arrow.png" alt="" />
                </div>
            </li>
            <li>
                <div>
                    <img src="resources/images/home/schedule.png" alt="" />
                </div>
                <p>验收评价</p>
            </li>
        </ul>
    </div>
    <div style="clear:both;"></div>
    <!--工人推荐-->
    <div class="row">
        <div class="recommend col-md-8 col-xs-12 col-sm-8">
            <!--施工队队长推荐-->
            <div class="construction">
                <div>
                    <p class="bgg">
                        <span>施工队队长推荐</span>
                    </p>
                    <img src="resources/images/home/thumbs-up.png" />
                    <span><a href="${pageContext.request.contextPath}/w/category">更多>></a></span>
                </div>
                <ul class="pc_worker">
                    <c:forEach var="headerworker" items="${headmans}" varStatus="vs">
                        <li class="image_gr">
                            <div class="image_gr">
                                <img src=${headerworker.headImgUrl} alt="" />
                            </div>
                            <div class="introduce">
                                <h3>${headerworker.name}</h3>
                                <h3>${headerworker.location}</h3>
                                <span>
                                            成功案列：5套楼房
                                 </span>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
                <ul class="m_worker">
                    <c:forEach var="headerworker" items="${headmans}" varStatus="vs">
                        <li class="image_gr">
                            <img src=${headerworker.headImgUrl} alt="" class="col-xs-3" />
                            <div class="col-xs-8">
                                <span style="display: inline-block;">${headerworker.name}</span>
                                <span style="display: inline-block;">${headerworker.location}</span>
                                <p> 成功案列：5套楼房</p>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <!--水电工师傅推荐-->
            <div class="construction">
                <div>
                    <p class="blue bgg">
                        <span>水电工师傅推荐</span>
                    </p>
                    <img src="resources/images/home/heart.png" />
                    <span><a href="${pageContext.request.contextPath}/w/category">更多>></a></span>
                </div>
                <ul class="pc_worker">
                    <c:forEach var="plumber" items="${plumbers}" varStatus="vs">
                        <li class="image_gr">
                            <div class="image_gr">
                                <img src=${plumber.headImgUrl} alt="" />
                            </div>
                            <div class="introduce">
                                <h3>${plumber.name}</h3>
                                <h3>${plumber.location}</h3>
                                <span>
                                            成功案列：5套楼房
                                 </span>
                            </div>
                        </li>
                    </c:forEach>
                </ul>

                <ul class="m_worker">
                    <c:forEach var="plumber" items="${plumbers}" varStatus="vs">
                        <li class="image_gr">
                            <img src=${plumber.headImgUrl} alt=""  class="col-xs-3" />
                            <div class="col-xs-8">
                                <span>${plumber.name}</span>
                                <span>${plumber.location}</span>
                                <p>成功案列：5套楼房</p>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>

            <!--铺地工师傅推荐-->
            <div class="construction">
                <div>
                    <p class="bgg">
                        <span>铺地工师傅推荐</span>
                    </p>
                    <img src="resources/images/home/collection.png" />

                    <span><a href="${pageContext.request.contextPath}/w/category">更多>></a></span>
                </div>
                <ul class="pc_worker">
                    <c:forEach var="paving" items="${pavings}" varStatus="vs">
                        <li class="image_gr">
                            <div class="image_gr">
                                <img src=${paving.headImgUrl} alt="" />
                            </div>
                            <div class="introduce">
                                <h3>${paving.name}</h3>
                                <h3>${paving.location}</h3>
                                <span>
                                            成功案列：5套楼房
                                 </span>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
                <ul class="m_worker">
                    <c:forEach var="paving" items="${pavings}" varStatus="vs">
                        <li class="image_gr">
                            <img src=${paving.headImgUrl} alt="" />
                            <div class="col-xs-8">
                                <span>${paving.name}</span>
                                <span>${paving.location}</span>
                                <p>成功案列：5套楼房</p>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <!--腻子工师傅推荐-->
            <div class="construction">
                <div>
                    <p class="blue bgg">
                        <span>腻子工师傅推荐</span>
                    </p>
                    <img src="resources/images/home/hot.png" />

                    <span><a href="${pageContext.request.contextPath}/w/jobid=5/finder">更多>></a></span>
                </div>
                <ul class="pc_worker">
                    <c:forEach var="putty" items="${Puttys}" varStatus="vs">
                        <li class="image_gr">
                            <div class="image_gr">
                                <img src=${putty.headImgUrl} alt="" />
                            </div>
                            <div class="introduce">
                                <h3>${putty.name}</h3>
                                <h3>${putty.location}</h3>
                                <span>
                                            成功案列：5套楼房
                                 </span>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
                <ul class="m_worker">
                    <c:forEach var="putty" items="${Puttys}" varStatus="vs">
                        <li class="image_gr">
                            <img src=${putty.headImgUrl} alt="" class="col-xs-3" />
                            <div class="col-xs-8">
                                <span>${putty.name}</span>
                                <span>${putty.location}</span>
                                <p>成功案列：5套楼房</p>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>

        </div>
        <div class="list  col-md-4">
            <div class="news_list">
                <h2>公司动态<span>更多></span></h2>

                <div style="clear:both"></div>
                <div class="sss">
                    <img src="resources/images/activity/bedroom_03.png"/>
                </div>
                <div>
                    <ul style="margin-left: 30px">
                        <c:forEach var="company" items="${companies}" varStatus="vs">
                            <li class="image_gr" type="disc">
                                <a href="${company.curl}">${company.cname}</a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>

                <div class="split"></div>
            </div>
            <div class="pic_list">
                <h2>行业新闻<span>更多></span></h2>

                <div style="clear:both"></div>
                <div class="sss">
                    <img src="resources/images/activity/bedroom_03.png"/>
                </div>

                <ul style="margin-left: 30px">
                    <c:forEach var="industry" items="${industries}" varStatus="vs">
                        <li class="image_gr" type="disc">
                            <a href="${industry.curl}">${industry.cname}</a>
                        </li>
                    </c:forEach>
                </ul>
                <div class="split"></div>
            </div>
            <div class="pic_list">
                <h2>最新工程<span>更多></span></h2>

                <div style="clear:both"></div>
                <div class="sss">
                    <img src="resources/images/activity/bedroom_03.png"/>
                </div>
                <ul style="margin-left: 30px">
                    <c:forEach var="project" items="${projects}" varStatus="vs">
                        <li class="image_gr" type="disc">
                            <a href="${project.curl}">${project.cname}</a>
                        </li>
                    </c:forEach>
                </ul>
                <div class="split"></div>
            </div>
            <div class="pic_list">
                <h2>装修知识<span>更多></span></h2>

                <div style="clear:both"></div>
                <div class="sss">
                    <img src="resources/images/activity/bedroom_03.png"/>
                </div>
                <ul style="margin-left: 30px">
                    <c:forEach var="decorate" items="${decorates}" varStatus="vs">
                        <li class="image_gr" type="disc">
                            <a href="${decorate.curl}">${decorate.cname}</a>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </div>

</div>
<!--4个按钮-->

<div class="button">
    <div class="container">
        <div class="TechnolgP TechnolgPpp">
            <ul>
                <li class="active">
                    <a href="">
                    <div>
                        <img src="resources/images/home/helmet.png" alt="" />
                    </div>
                    <p>我要装修</p></a>
                </li>
                <li></li>
                <li>
                    <a href="${pageContext.request.contextPath}/shop" target="_blank" id="nav-shop">
                    <div>
                        <img src="resources/images/home/budget.png" alt="" />
                    </div>
                    <p>商城</p>
                    </a>
                </li>
                <li></li>
                <li>
                    <a href="${pageContext.request.contextPath}/appointment">
                    <div>
                        <img src="resources/images/home/ruler.png" alt="" />
                    </div>
                    <p>免费预约</p>
                    </a>
                </li>
                <li></li>
                <li>
                    <a href="">
                    <div>
                        <img src="resources/images/home/schedule.png" alt="" />
                    </div>
                    <p>免费方案</p></a>
                </li>
            </ul>
        </div>
    </div>
</div>


<div class="tab_case">
    <h1>成功案例</h1>
    <div class="tab_nav">
        <ul>
            <li class="on">别墅</li><li>中式</li><li>田园</li><li>美式</li><li>现代</li>
        </ul>

    </div>
    <div class="tab_con">
        <ul class="show">
            <li>
                <div>
                    <img class="aa" src="resources/images/home/bies/01/01_cant.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li class="active">
                <div>
                    <img class="aa" src="resources/images/home/bies/01/01_chas.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li>
                <div>
                    <img class="aa" src="resources/images/home/bies/01/01_chuf.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li>
                <div>
                    <img class="aa" src="resources/images/home/bies/01/01_jiaz.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li>
                <div>
                    <img class="aa" src="resources/images/home/bies/01/01_jiub.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li class="active">
                <div>
                    <img class="aa" src="resources/images/home/bies/01/01_ket.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li>
                <div>
                    <img class="aa" src="resources/images/home/bies/01/01_keta.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li>
                <div>
                    <img class="aa" src="resources/images/home/bies/01/01_wos.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
        </ul>
        <ul>
            <li>
                <div>
                    <img class="aa" src="resources/images/home/zhongshi/01/01.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li class="active">
                <div>
                    <img class="aa" src="resources/images/home/zhongshi/01/02.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li>
                <div>
                    <img class="aa" src="resources/images/home/zhongshi/01/03.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li>
                <div>
                    <img class="aa" src="resources/images/home/zhongshi/01/04.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li>
                <div>
                    <img class="aa" src="resources/images/home/zhongshi/01/05.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li class="active">
                <div>
                    <img class="aa" src="resources/images/home/zhongshi/01/06.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li>
                <div>
                    <img class="aa" src="resources/images/home/zhongshi/01/07.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li>
                <div>
                    <img class="aa" src="resources/images/home/zhongshi/01/08.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>

        </ul>
        <ul>
            <li>
                <div>
                    <img class="aa" src="resources/images/home/tiany/01/01.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li class="active">
                <div>
                    <img class="aa" src="resources/images/home/tiany/01/02.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li>
                <div>
                    <img class="aa" src="resources/images/home/tiany/01/03.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li>
                <div>
                    <img class="aa" src="resources/images/home/tiany/01/04.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li>
                <div>
                    <img class="aa" src="resources/images/home/tiany/01/05.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li>
                <div>
                    <img class="aa" src="resources/images/home/tiany/01/06.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li>
                <div>
                    <img class="aa" src="resources/images/home/tiany/01/07.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li>
                <div>
                    <img class="aa" src="resources/images/home/tiany/01/08.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
        </ul>
        <ul>
            <li>
                <div>
                    <img class="aa" src="resources/images/home/meis/01/01.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li class="active">
                <div>
                    <img class="aa" src="resources/images/home/meis/01/02.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li>
                <div>
                    <img class="aa" src="resources/images/home/meis/01/03.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li>
                <div>
                    <img class="aa" src="resources/images/home/meis/01/04.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li>
                <div>
                    <img class="aa" src="resources/images/home/meis/01/05.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li class="active">
                <div>
                    <img class="aa" src="resources/images/home/meis/01/06.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li>
                <div>
                    <img class="aa" src="resources/images/home/meis/01/07.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li>
                <div>
                    <img class="aa" src="resources/images/home/meis/01/08.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
        </ul>
        <ul>
            <li>
                <div>
                    <img class="aa" src="resources/images/home/xiandai/01/01.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li class="active">
                <div>
                    <img class="aa" src="resources/images/home/xiandai/01/02.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li>
                <div>
                    <img class="aa" src="resources/images/home/xiandai/01/03.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li>
                <div>
                    <img class="aa" src="resources/images/home/xiandai/01/04.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li>
                <div>
                    <img class="aa" src="resources/images/home/xiandai/01/05.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li>
                <div>
                    <img class="aa" src="resources/images/home/xiandai/01/06.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li>
                <div>
                    <img class="aa" src="resources/images/home/xiandai/01/07.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>
            <li>
                <div>
                    <img class="aa" src="resources/images/home/xiandai/01/08.jpg"/>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/491507520220008.png?x-oss-process=style/headimg" alt="" class="HeadP" />
                </div>
                <div>
                    <p>北京装修帮办施工平台</p>
                    <span>秦智新</span><span>工龄：3年</span><span>成功案例：60套</span>
                    <p>设计师</p>
                </div>
            </li>

        </ul>
        <span class="next"> </span>
        <span class="prev"></span>
    </div>
</div>

<%@include file="WEB-INF/jsp/common/footer.jsp" %>
<%@include file="WEB-INF/jsp/common/quoted.jsp"%>
<%@include file="WEB-INF/jsp/common/active.jsp"%>
<div id="fudai">
    <a href="${pageContext.request.contextPath}/activity" target="_blank">
        <img src="${pageContext.request.contextPath}/resources/images/activity/bag.png" style="width: 100%;height: auto"/>
    </a>
</div>

</body>
<%@include file="WEB-INF/jsp/common/script.jsp" %>
<script type="text/javascript">
    $(function () {
        $("#myCarousel").carousel('cycle');
        $("#modal-container-894940").modal({
            keyboard: false
        });
        processQuoted.detail.init();
        processQuoted.detail.window();
        workerlist.detail.showworkers();
    });
    var t = n = 0,
        count;
    $(document).ready(function() {
        /*var temp=$("#city").text();
        */
        //window.onload.href="${pageContext.request.contextPath}/w/index/city="+temp;
        count = $("#banner_list a").length;
        $("#banner_list a:not(:first-child)").hide();
        $("#banner_info").html($("#banner_list a:first-child").find("img").attr('alt'));
        $("#banner_info").click(function() {
            window.open($("#banner_list a:first-child").attr('href'), "_blank")
        });
        $("#banner li").click(function() {
            var i = $(this).text() - 1; //获取Li元素内的值，即1，2，3，4
            n = i;
            if(i >= count) return;
            $("#banner_info").html($("#banner_list a").eq(i).find("img").attr('alt'));
            $("#banner_info").unbind().click(function() {
                window.open($("#banner_list a").eq(i).attr('href'), "_blank")
            })
            $("#banner_list a").filter(":visible").fadeOut(500).parent().children().eq(i).fadeIn(1000);
            document.getElementById("banner").style.background = "";
            $(this).toggleClass("on");
            $(this).siblings().removeAttr("class");
        });
        t = setInterval("showAuto()", 4000);
        $("#banner").hover(function() {
            clearInterval(t)
        }, function() {
            t = setInterval("showAuto()", 4000);
        });
    })
    function showAuto()
    {
        n = n >= (count - 1) ? 0 : ++n;
        $("#banner li").eq(n).trigger('click');
    }
    var abtn = $(".tab_nav ul li");
    var adiv = $(".tab_con ul");
    util.detil.tabFun(abtn,adiv);
</script>
</html>
