<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/11/25/025
  Time: 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>装修效果图</title>
    <%@include file="../common/head.jsp"%>
</head>
<body>
<%@include file="../common/header.jsp" %>
<div class="page-wrapper">
<div class="content">
    <div class="container">
        <div class="con">
            <div class="conLeft">
                <ul class="zx_list">
                    <li>
                        <div class="zx_title">
                            <p>空间</p>
                            <p>HOME</p>
                        </div>
                        <div class="zx_con">
                            <ul>
                                <li><a href="${pageContext.request.contextPath}/details">客厅</a></li>
                                <li><a href="">餐厅</a></li>
                                <li><a href="">卧室</a></li></ul>
                            <ul>
                                <li><a href="">厨房</a></li>
                                <li><a href="">阳台</a></li>
                                <li><a href="">卫生间</a></li></ul>
                        </div>
                        <div class="more zx_con">
                            <ul>
                                <li><a href="">儿童房</a></li>
                                <li><a href="">飘窗</a></li>
                                <li><a href="">鞋柜</a></li>
                                <li><a href="">书房</a></li>
                            </ul>
                            <ul>
                                <li><a href="">国道</a></li>
                                <li><a href="">衣帽间</a></li>
                                <li><a href="">花园</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="zx_title">
                            <p>风格</p><p>STYLE</p>
                        </div>
                        <div class="zx_con">
                            <ul>
                                <li><a href="">中式</a></li>
                                <li><a href="">田园</a></li>
                                <li><a href="">现代</a></li></ul>
                            <ul>
                                <li><a href="">简约</a></li>
                                <li><a href="">简欧</a></li>
                                <li><a href="">古典</a></li></ul>
                        </div>
                        <div class="more zx_con">
                            <ul>
                                <li><a href="">复式</a></li>
                                <li><a href="">地中海</a></li>
                                <li><a href="">美式</a></li>
                                <li><a href="">新古典</a></li>
                            </ul>
                            <ul>
                                <li><a href="">日式</a></li>
                                <li><a href="">乡村</a></li>
                                <li><a href="">混搭</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="zx_title">
                            <p>户型</p><p>TYPE</p>
                        </div>
                        <div class="zx_con">
                            <ul>
                                <li><a href="">一居</a></li>
                                <li><a href="">二居</a></li>
                                <li><a href="">三局</a></li></ul>
                            <ul>
                                <li><a href="">大户型</a></li>
                                <li><a href="">别墅</a></li>
                                <li><a href="">复式楼</a></li></ul>
                        </div>
                        <div class="more zx_con">
                            <ul>
                                <li><a href="">小户型</a></li>
                                <li><a href="">跃层</a></li>
                                <li><a href="">70㎡</a></li>
                            </ul>
                            <ul>
                                <li><a href="">100㎡</a></li>
                                <li><a href="">110㎡</a></li>
                                <li><a href="">120㎡</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="zx_title">
                            <p>色彩</p><p>COLOR</p>
                        </div>
                        <div class="zx_con ">
                            <ul>
                                <li><a href="">纯情白色</a></li>
                                <li><a href="">中性冷色</a></li>
                                <li><a href="">明亮黄色</a></li></ul>
                            <ul>
                                <li><a href="">温暖橙色</a></li>
                                <li><a href="">浪漫分红</a></li>
                                <li><a href="">中性暖色</a></li></ul>
                        </div>
                        <div class="more zx_con">
                            <ul>
                                <li><a href="">动感绿色</a></li>
                                <li><a href="">海洋蓝色</a></li>
                                <li><a href="">神秘紫色</a></li>
                            </ul>
                            <ul>
                                <li><a href="">沉稳深色</a></li>
                                <li><a href="">缤纷彩色</a></li>

                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="zx_title">
                            <p>推荐</p><p>SPECIAL</p>
                        </div>
                        <div class="zx_con">
                            <ul>
                                <li><a href="">宜家</a></li>
                                <li><a href="">都市</a></li>
                                <li><a href="">大户型</a></li></ul>
                            <ul>
                                <li><a href="">小户型</a></li>
                                <li><a href="">北欧</a></li>
                                <li><a href="">80㎡</a></li></ul>
                        </div>
                        <div class="more zx_con">
                            <ul>
                                <li><a href="">田园</a></li>
                                <li><a href="">厨房</a></li>
                                <li><a href="">餐厅背景墙</a></li>
                            </ul>
                            <ul>
                                <li><a href="">儿童房</a></li>
                                <li><a href="">酒柜</a></li>
                                <li><a href="">120平方米</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="conRight" id="banner">
                <div class="htmleaf-container">
                    <div class="carousel">
                        <figure>
                            <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/webstylebanner.png" alt="">
                            <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/webstylebanner.png" alt="">
                            <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/webstylebanner.png" alt="">
                            <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/webstylebanner.png" alt="">
                            <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/webstylebanner.png" alt="">
                            <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/webstylebanner.png" alt="">
                            <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/webstylebanner.png" alt="">
                            <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/webstylebanner.png" alt="">
                        </figure>
                        <nav>
                            <button class="nav prev">上一个</button>
                            <button class="nav next">下一个</button>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--banner下面推荐-->
<div class="content_con">
    <div class="tj container">
        <ul>
            <li>
                <div>
                    <div class="text">
                        <h1>家居美图</h1>
                        <p>美图千千万万</p>
                    </div>

                    <div class="op"></div>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/shoppingad.png" alt="">

                </div>
            </li>
            <li>
                <div>
                    <div class="text">
                        <h1>家居美图</h1>
                        <p>美图千千万万</p>
                    </div>

                    <div class="op"></div>
                    <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/shoppingad.png" alt="">

                </div>
            </li> <li>
            <div>
                <div class="text">
                    <h1>家居美图</h1>
                    <p>美图千千万万</p>
                </div>

                <div class="op"></div>
                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/shoppingad.png" alt="">

            </div>
        </li> <li>
            <div>
                <div class="text">
                    <h1>家居美图</h1>
                    <p>美图千千万万</p>
                </div>

                <div class="op"></div>
                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/shoppingad.png" alt="">
            </div>
        </li>
        </ul>
    </div>
    <div class="container flex_row">
        <div class="flex_row_left">
            <ul>
                <li>
                    <a href="">
                        <span>复古式装修图</span>
                        <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/shoppingad.png" alt="">
                    </a>
                </li>
                <li>
                    <a href="">
                        <span>复古式装修图</span>
                        <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/shoppingad.png" alt="">
                    </a>
                </li>
                <li>
                    <a href="">
                        <span>复古式装修图</span>
                        <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/shoppingad.png" alt="">
                    </a>
                </li>
            </ul>

        </div>
        <div class="flex_row_con">
            <ul>
                <li>
                    <a href="">
                        <span>fugu</span>
                        <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/shoppingad.png" alt="">
                    </a>
                </li>
            </ul>

            <ul>
                <li>
                    <a href="">
                        <span>复古式装修图</span>
                        <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/shoppingad.png" alt="">
                    </a>
                </li>
                <li>
                    <a href="">
                        <span>复古式装修图</span>
                        <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/shoppingad.png" alt="">
                    </a>
                </li>
                <li>
                    <a href="">
                        <span>复古式装修图</span>
                        <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/shoppingad.png" alt="">
                    </a>
                </li>
            </ul>
        </div>
        <div class="flex_row_right">
            <div class="treebox">
                <ul class="menu">
                    <li class="level1">
                        <a href="#none"><em class="ico">1</em>店长推荐<i class="down">5</i></a>
                        <ul class="level2">
                            <li><a href="javascript:">
                                <img src="https://www.zxbangban.com/resources/images/shop/dongpeng_cizhuan/1.png" alt="">
                            </a></li>

                        </ul>
                    </li>
                    <li class="level1">
                        <a href="#none"><em class="ico">2</em>店长推荐<i>2张</i></a>
                        <ul class="level2">
                            <li><a href="javascript:;"><img src="https://www.zxbangban.com/resources/images/shop/dongpeng_cizhuan/1.png" alt=""></a></li>

                        </ul>
                    </li>
                    <li class="level1">
                        <a href="#none"><em class="ico">3</em>店长推荐<i></i></a>
                        <ul class="level2">
                            <li><a href="javascript:;"><img src="https://www.zxbangban.com/resources/images/shop/dongpeng_cizhuan/1.png" alt=""></a></li>

                        </ul>
                    </li>
                    <li class="level1">
                        <a href="#none"><em class="ico">4</em>店长推荐<i></i></a>
                        <ul class="level2">
                            <li><a href="javascript:;"><img src="https://www.zxbangban.com/resources/images/shop/dongpeng_cizhuan/1.png" alt=""></a></li>

                        </ul>
                    </li>
                    <li class="level1">
                        <a href="#none"><em class="ico">5</em>店长推荐<i></i></a>
                        <ul class="level2">
                            <li><a href="javascript:;"><img src="https://www.zxbangban.com/resources/images/shop/dongpeng_cizhuan/1.png" alt=""></a></li>

                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!--局部装修-->
    <div class="local container">
        <div class="con">
            <h1>局部装修效果图</h1>
            <div class="row-fluid">
                <div class="span4">
                    <div class="tabbable" id="tabs-162228">
                        <ul class=" local_top_nav nav nav-tabs">
                            <li>
                                <a href="#panel-202440" data-toggle="tab">
                                    <span>卧室</span>
                                    <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                </a>
                            </li>
                            <li>
                                <a href="#panel-647316" data-toggle="tab">
                                    <span>卧室</span>
                                    <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                </a>
                            </li>
                            <li>
                                <a href="#panel-202443" data-toggle="tab">
                                    <span>卧室</span>
                                    <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                </a>
                            </li>
                            <li>
                                <a href="#panel-202444" data-toggle="tab">
                                    <span>卧室</span>
                                    <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">

                                </a>
                            </li>
                            <li>
                                <a href="#panel-202445" data-toggle="tab">

                                    <span>卧室</span>
                                    <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                </a>
                            </li>


                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane" id="panel-202440">
                                <ul>
                                    <li>
                                        <a href="">
                                            <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="tab-pane active" id="panel-647316">
                                <ul>
                                    <li>
                                        <a href="">
                                            <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="tab-pane" id="panel-202443">
                                <ul>
                                    <li>
                                        <a href="">
                                            <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="tab-pane" id="panel-202444">
                                <ul>
                                    <li>
                                        <a href="">
                                            <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="https://www.zxbangban.com/resources/images/shop/4brand/3.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="http://localhost:8080/resources/images/shop/dongpeng_cizhuan/1.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="http://localhost:8080/resources/images/shop/dongpeng_cizhuan/1.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="http://localhost:8080/resources/images/shop/dongpeng_cizhuan/1.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="tab-pane" id="panel-202445">
                                <ul>
                                    <li>
                                        <a href="">
                                            <img src="http://localhost:8080/resources/images/shop/dongpeng_cizhuan/1.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="http://localhost:8080/resources/images/shop/dongpeng_cizhuan/1.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="http://localhost:8080/resources/images/shop/dongpeng_cizhuan/1.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="http://localhost:8080/resources/images/shop/dongpeng_cizhuan/1.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="http://localhost:8080/resources/images/shop/dongpeng_cizhuan/1.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="http://localhost:8080/resources/images/shop/dongpeng_cizhuan/1.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="http://localhost:8080/resources/images/shop/dongpeng_cizhuan/1.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="http://localhost:8080/resources/images/shop/dongpeng_cizhuan/1.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <img src="http://localhost:8080/resources/images/shop/dongpeng_cizhuan/1.png" alt="">
                                            <span>暗示健康的教案上看见</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

</div>
<%@include file="../common/footer.jsp" %>

</body>
<%@include file="../common/script.jsp"%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"  type="text/javascript"></script>
<script type="text/javascript">
    'use strict';
    window.addEventListener('load', function () {
        var carousels = document.querySelectorAll('.carousel');
        for (var i = 0; i < carousels.length; i++) {
            carousel(carousels[i]);
        }
    });
    //旋转轮播图
    function carousel(root){
        var figure = root.querySelector('figure'),
            nav = root.querySelector('nav'),
            images = figure.children,
            n = images.length,
            gap = root.dataset.gap || 0,
            bfc = 'bfc' in root.dataset,
            theta = 2 * Math.PI / n,
            currImage = 0;

        setupCarousel(n, parseFloat(getComputedStyle(images[0]).width));
        window.addEventListener('resize', function () {
            setupCarousel(n, parseFloat(getComputedStyle(images[0]).width));
        });
        setupNavigation();
        function setupCarousel(n, s) {
            var apothem = s / (2 * Math.tan(Math.PI / n));
            figure.style.transformOrigin = '50% 50% ' + -apothem + 'px';
            for (var i = 0; i < n; i++) {
                images[i].style.padding = gap + 'px';
            }for (i = 1; i < n; i++) {
                images[i].style.transformOrigin = '50% 50% ' + -apothem + 'px';
                images[i].style.transform = 'rotateY(' + i * theta + 'rad)';
            }
            if (bfc) for (i = 0; i < n; i++) {
                images[i].style.backfaceVisibility = 'hidden';
            }rotateCarousel(currImage);
        }
        function setupNavigation() {
            nav.addEventListener('click', onClick, true);
            function onClick(e) {
                e.stopPropagation();
                var t = e.target;
                if (t.tagName.toUpperCase() != 'BUTTON') return;
                if (t.classList.contains('next')) {
                    currImage++;
                } else {
                    currImage--;
                }
                rotateCarousel(currImage);
            }
        }
        function rotateCarousel(imageIndex) {
            figure.style.transform = 'rotateY(' + imageIndex * -theta + 'rad)';
        }
    }
    //手风琴效果
    $(function(){
        $(".treebox .level1>a").click(function(){
            $(this).addClass('current').find('i').addClass('down').parent().next().slideDown('slow','easeOutQuad').parent().siblings().children('a').removeClass('current').find('i').removeClass('down').parent().next().slideUp('slow','easeOutQuad');
            return false;
        });
    })
    /*$.ajax({
        type:"GET",
        url:"pbl.json",
        success:function(msg){
            console.log(msg);
        }
    })*/
</script>
</html>
