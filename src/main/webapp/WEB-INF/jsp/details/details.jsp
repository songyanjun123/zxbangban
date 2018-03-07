<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/11/29/029
  Time: 10:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>效果图详情页</title>
    <%@include file="../common/head.jsp"%>
    <link rel="stylesheet" href="../../../resources/css/details.css">
</head>
<body>
<%@include file="../common/header.jsp" %>

<div class="page-wrapper">
    <div class="content" style="background: none">
        <div class="container">
            <div class="row bord">
                <div class="col-xs-1 col-md-1 col-sm-12 bg" align="center">空间</div>
                <div class="col-xs-11 col-md-11 col-sm-12">
                    <ul class="list-inline">
                        <li><a href="">客厅</a></li>
                        <li><a href="">卧室</a></li>
                        <li><a href="">餐厅</a></li>
                        <li><a href="">厨房</a></li>
                        <li><a href="">卫生间</a></li>
                        <li><a href="">阳台</a></li>
                        <li><a href="">书房</a></li>
                        <li><a href="">过道</a></li>
                        <li><a href="">儿童房</a></li>
                        <li><a href="">衣帽间</a></li>
                        <li><a href="">花园</a></li>
                    </ul>
                </div>
                <div class="col-xs-1 col-md-1 col-sm-12 bg" align="center">风格</div>
                <div class="col-xs-11 col-md-11 col-sm-12">
                    <ul class="list-inline">
                        <li><a href="">中式</a></li>
                        <li><a href="">田园</a></li>
                        <li><a href="">现代</a></li>
                        <li><a href="">简约</a></li>
                        <li><a href="">简欧</a></li>
                        <li><a href="">古典</a></li>
                        <li><a href="">复式</a></li>
                        <li><a href="">地中海</a></li>
                        <li><a href="">美式</a></li>
                        <li><a href="">新古典</a></li>
                        <li><a href="">日式</a></li>
                    </ul>
                </div>
                <div class="col-xs-1 col-md-1 col-sm-12 bg" align="center">户型</div>
                <div class="col-xs-11 col-md-11 col-sm-12">
                    <ul class="list-inline">
                        <li><a href="">一居</a></li>
                        <li><a href="">二居</a></li>
                        <li><a href="">三居</a></li>
                        <li><a href="">大户型</a></li>
                        <li><a href="">别墅</a></li>
                        <li><a href="">复式楼</a></li>
                    </ul>
                </div>
                <div class="col-xs-1 col-md-1 col-sm-12 bg" align="center">色彩</div>
                <div class="col-xs-11 col-md-11 col-sm-12">
                    <ul class="list-inline">
                        <li><a href="">纯情白色</a></li>
                        <li><a href="">中性冷色</a></li>
                        <li><a href="">明亮黄色</a></li>
                        <li><a href="">温暖橙色</a></li>
                        <li><a href="">浪漫粉红</a></li>
                        <li><a href="">中性暖色</a></li>
                        <li><a href="">动感绿色</a></li>
                        <li><a href="">海洋蓝色</a></li>
                        <li><a href="">神秘紫色</a></li>
                        <li><a href="">沉稳深色</a></li>

                    </ul>
                </div>
                <div class="col-xs-1 col-md-1 col-sm-12 bg" align="center"><em class="icon_up"></em>推荐</div>
                <div class="col-xs-11 col-md-11 col-sm-12">
                    <ul class="list-inline">
                        <li><a href="">宜家</a></li>
                        <li><a href="">都市</a></li>
                        <li><a href="">大户型</a></li>
                        <li><a href="">小户型</a></li>
                        <li><a href="">北欧</a></li>
                        <li><a href="">80㎡</a></li>
                        <li><a href="">田园</a></li>
                        <li><a href="">厨房</a></li>
                        <li><a href="">餐厅背景墙</a></li>
                        <li><a href="">儿童房</a></li>
                        <li><a href="">酒柜</a></li>
                        <li><a href="">120㎡</a></li>
                    </ul>
                </div>
            </div>
            <div class="row lazyload" style="margin-top: 10px;">
                <div class="col-lg-3 col-md-4 col-sm-6 layout">
                    <ul>
                        <li>
                            <a href="${pageContext.request.contextPath}/detail_list">
                                <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                                <em></em>
                                <span>装修这样需要多少钱？</span>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                                <em></em>
                                <span>装修这样需要多少钱？</span>
                            </a>
                        </li><li>
                        <a href="">
                            <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                            <em></em>
                            <span>装修这样需要多少钱？</span>
                        </a>
                    </li><li>
                        <a href="">
                            <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                            <em></em>
                            <span>装修这样需要多少钱？</span>
                        </a>
                    </li><li>
                        <a href="">
                            <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                            <em></em>
                            <span>装修这样需要多少钱？</span>
                        </a>
                    </li><li>
                        <a href="">
                            <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                            <em></em>
                            <span>装修这样需要多少钱？</span>
                        </a>
                    </li><li>
                        <a href="">
                            <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                            <em></em>
                            <span>装修这样需要多少钱？</span>
                        </a>
                    </li>
                    </ul>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 layout">
                    <ul>
                        <li>
                            <a href="">
                                <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                                <em></em>
                                <span>装修这样需要多少钱？</span>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                                <em></em>
                                <span>装修这样需要多少钱？</span>
                            </a>
                        </li><li>
                        <a href="">
                            <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                            <em></em>
                            <span>装修这样需要多少钱？</span>
                        </a>
                    </li><li>
                        <a href="">
                            <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                            <em></em>
                            <span>装修这样需要多少钱？</span>
                        </a>
                    </li><li>
                        <a href="">
                            <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                            <em></em>
                            <span>装修这样需要多少钱？</span>
                        </a>
                    </li><li>
                        <a href="">
                            <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                            <em></em>
                            <span>装修这样需要多少钱？</span>
                        </a>
                    </li><li>
                        <a href="">
                            <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                            <em></em>
                            <span>装修这样需要多少钱？</span>
                        </a>
                    </li>
                    </ul>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 layout">
                    <ul>
                        <li>
                            <a href="">
                                <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                                <em></em>
                                <span>装修这样需要多少钱？</span>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                                <em></em>
                                <span>装修这样需要多少钱？</span>
                            </a>
                        </li><li>
                        <a href="">
                            <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                            <em></em>
                            <span>装修这样需要多少钱？</span>
                        </a>
                    </li><li>
                        <a href="">
                            <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                            <em></em>
                            <span>装修这样需要多少钱？</span>
                        </a>
                    </li><li>
                        <a href="">
                            <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                            <em></em>
                            <span>装修这样需要多少钱？</span>
                        </a>
                    </li><li>
                        <a href="">
                            <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                            <em></em>
                            <span>装修这样需要多少钱？</span>
                        </a>
                    </li><li>
                        <a href="">
                            <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                            <em></em>
                            <span>装修这样需要多少钱？</span>
                        </a>
                    </li>
                    </ul>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 hidden-md layout">
                    <ul>
                        <li>
                            <a href="">
                                <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                                <em></em>
                                <span>装修这样需要多少钱？</span>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                                <em></em>
                                <span>装修这样需要多少钱？</span>
                            </a>
                        </li><li>
                        <a href="">
                            <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                            <em></em>
                            <span>装修这样需要多少钱？</span>
                        </a>
                    </li><li>
                        <a href="">
                            <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                            <em></em>
                            <span>装修这样需要多少钱？</span>
                        </a>
                    </li><li>
                        <a href="">
                            <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                            <em></em>
                            <span>装修这样需要多少钱？</span>
                        </a>
                    </li><li>
                        <a href="">
                            <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                            <em></em>
                            <span>装修这样需要多少钱？</span>
                        </a>
                    </li><li>
                        <a href="">
                            <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                            <em></em>
                            <span>装修这样需要多少钱？</span>
                        </a>
                    </li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
</div>

<div class="content" style="background: none">
    <div class="container">
        <div class="row bord">
            <div class="col-xs-1 col-md-1 col-sm-12 bg" align="center">空间</div>
            <div class="col-xs-11 col-md-11 col-sm-12">
                <ul class="list-inline">
                    <li><a href="">客厅</a></li>
                    <li><a href="">卧室</a></li>
                    <li><a href="">餐厅</a></li>
                    <li><a href="">厨房</a></li>
                    <li><a href="">卫生间</a></li>
                    <li><a href="">阳台</a></li>
                    <li><a href="">书房</a></li>
                    <li><a href="">过道</a></li>
                    <li><a href="">儿童房</a></li>
                    <li><a href="">衣帽间</a></li>
                    <li><a href="">花园</a></li>
                </ul>
            </div>
            <div class="col-xs-1 col-md-1 col-sm-12 bg" align="center">风格</div>
            <div class="col-xs-11 col-md-11 col-sm-12">
                <ul class="list-inline">
                    <li><a href="">中式</a></li>
                    <li><a href="">田园</a></li>
                    <li><a href="">现代</a></li>
                    <li><a href="">简约</a></li>
                    <li><a href="">简欧</a></li>
                    <li><a href="">古典</a></li>
                    <li><a href="">复式</a></li>
                    <li><a href="">地中海</a></li>
                    <li><a href="">美式</a></li>
                    <li><a href="">新古典</a></li>
                    <li><a href="">日式</a></li>
                </ul>
            </div>
            <div class="col-xs-1 col-md-1 col-sm-12 bg" align="center">户型</div>
            <div class="col-xs-11 col-md-11 col-sm-12">
                <ul class="list-inline">
                    <li><a href="">一居</a></li>
                    <li><a href="">二居</a></li>
                    <li><a href="">三居</a></li>
                    <li><a href="">大户型</a></li>
                    <li><a href="">别墅</a></li>
                    <li><a href="">复式楼</a></li>
                </ul>
            </div>
            <div class="col-xs-1 col-md-1 col-sm-12 bg" align="center">色彩</div>
            <div class="col-xs-11 col-md-11 col-sm-12">
                <ul class="list-inline">
                    <li><a href="">纯情白色</a></li>
                    <li><a href="">中性冷色</a></li>
                    <li><a href="">明亮黄色</a></li>
                    <li><a href="">温暖橙色</a></li>
                    <li><a href="">浪漫粉红</a></li>
                    <li><a href="">中性暖色</a></li>
                    <li><a href="">动感绿色</a></li>
                    <li><a href="">海洋蓝色</a></li>
                    <li><a href="">神秘紫色</a></li>
                    <li><a href="">沉稳深色</a></li>


                </ul>
            </div>
            <div class="col-xs-1 col-md-1 col-sm-12 bg" align="center"><em class="icon_up"></em>推荐</div>
            <div class="col-xs-11 col-md-11 col-sm-12">
                <ul class="list-inline">
                    <li><a href="">宜家</a></li>
                    <li><a href="">都市</a></li>
                    <li><a href="">大户型</a></li>
                    <li><a href="">小户型</a></li>
                    <li><a href="">北欧</a></li>
                    <li><a href="">80㎡</a></li>
                    <li><a href="">田园</a></li>
                    <li><a href="">厨房</a></li>
                    <li><a href="">餐厅背景墙</a></li>
                    <li><a href="">儿童房</a></li>
                    <li><a href="">酒柜</a></li>
                    <li><a href="">120㎡</a></li>
                </ul>
            </div>
        </div>
        <div class="row lazyload" style="margin-top: 10px;">
            <div class="col-lg-3 col-md-4 col-sm-6 layout">
                <ul>
                    <li>
                        <a href="">
                            <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                            <em></em>
                            <span>装修这样需要多少钱？</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                            <em></em>
                            <span>装修这样需要多少钱？</span>
                        </a>
                    </li><li>
                    <a href="">
                        <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                        <em></em>
                        <span>装修这样需要多少钱？</span>
                    </a>
                </li><li>
                    <a href="">
                        <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                        <em></em>
                        <span>装修这样需要多少钱？</span>
                    </a>
                </li><li>
                    <a href="">
                        <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                        <em></em>
                        <span>装修这样需要多少钱？</span>
                    </a>
                </li><li>
                    <a href="">
                        <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                        <em></em>
                        <span>装修这样需要多少钱？</span>
                    </a>
                </li><li>
                    <a href="">
                        <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                        <em></em>
                        <span>装修这样需要多少钱？</span>
                    </a>
                </li>
                </ul>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 layout">
                <ul>
                    <li>
                        <a href="">
                            <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                            <em></em>
                            <span>装修这样需要多少钱？</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                            <em></em>
                            <span>装修这样需要多少钱？</span>
                        </a>
                    </li><li>
                    <a href="">
                        <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                        <em></em>
                        <span>装修这样需要多少钱？</span>
                    </a>
                </li><li>
                    <a href="">
                        <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                        <em></em>
                        <span>装修这样需要多少钱？</span>
                    </a>
                </li><li>
                    <a href="">
                        <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                        <em></em>
                        <span>装修这样需要多少钱？</span>
                    </a>
                </li><li>
                    <a href="">
                        <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                        <em></em>
                        <span>装修这样需要多少钱？</span>
                    </a>
                </li><li>
                    <a href="">
                        <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                        <em></em>
                        <span>装修这样需要多少钱？</span>
                    </a>
                </li>
                </ul>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 layout">
                <ul>
                    <li>
                        <a href="">
                            <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                            <em></em>
                            <span>装修这样需要多少钱？</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                            <em></em>
                            <span>装修这样需要多少钱？</span>
                        </a>
                    </li><li>
                    <a href="">
                        <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                        <em></em>
                        <span>装修这样需要多少钱？</span>
                    </a>
                </li><li>
                    <a href="">
                        <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                        <em></em>
                        <span>装修这样需要多少钱？</span>
                    </a>
                </li><li>
                    <a href="">
                        <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                        <em></em>
                        <span>装修这样需要多少钱？</span>
                    </a>
                </li><li>
                    <a href="">
                        <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                        <em></em>
                        <span>装修这样需要多少钱？</span>
                    </a>
                </li><li>
                    <a href="">
                        <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                        <em></em>
                        <span>装修这样需要多少钱？</span>
                    </a>
                </li>
                </ul>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 hidden-md layout">
                <ul>
                    <li>
                        <a href="">
                            <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                            <em></em>
                            <span>装修这样需要多少钱？</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                            <em></em>
                            <span>装修这样需要多少钱？</span>
                        </a>
                    </li><li>
                    <a href="">
                        <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                        <em></em>
                        <span>装修这样需要多少钱？</span>
                    </a>
                </li><li>
                    <a href="">
                        <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                        <em></em>
                        <span>装修这样需要多少钱？</span>
                    </a>
                </li><li>
                    <a href="">
                        <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                        <em></em>
                        <span>装修这样需要多少钱？</span>
                    </a>
                </li><li>
                    <a href="">
                        <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                        <em></em>
                        <span>装修这样需要多少钱？</span>
                    </a>
                </li><li>
                    <a href="">
                        <img data-img="http://pic.to8to.com/smallcase/1709/09/20170909_744ffe633b2d551bc4f4rfsgji9eyw26_284.jpg" src="http://book.jirengu.com/jirengu-inc/jrg-renwu10/homework/%E5%AD%99%E7%BA%A2%E7%85%A7/mission29/img/blank.jpg"  alt="客官您别着急我正在加载中。。。" class="img-rounded">
                        <em></em>
                        <span>装修这样需要多少钱？</span>
                    </a>
                </li>
                </ul>
            </div>

        </div>
    </div>
</div>
<%@include file="../common/footer.jsp" %>
</body>
<%@include file="../common/script.jsp"%>


<script type="text/javascript">
    $(function () {
        lozyLoad.init();
    });
    var lozyLoad = (function(){
        var clock;
        function init(){
            $(window).on('scroll', function(){
                if(clock){
                    clearTimeout(clock);
                }
                clock = setTimeout(function(){
                    checkShow();
                },200);

            });
            checkShow();

        }
        function checkShow(){
            $('.lazyload img').each(function(){
                var $cur = $(this);

                if($cur.attr('isLoaded')){
                    return
                }
                if(shouldShow($cur)){
                    showImg($cur);
                }
            })
        }
        function shouldShow($node){
            var scrollH = $(window).scrollTop(),
                winH = $(window).height(),
                top = $node.offset().top;
            if(top < winH + scrollH){
                return true;
            }else{
                return false;
            }
        }
        function showImg($node){
            $node.attr('src',$node.attr('data-img'));
            $node.attr('isLoaded',true);

        }
        return {
            init:init
        }

    })();

</script>

<script type="text/javascript">
    lozyLoad.init();

</script>
</html>
