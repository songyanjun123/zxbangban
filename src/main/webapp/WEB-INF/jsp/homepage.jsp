<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/4/19
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/tag.jsp" %>
<html>
<head>
    <title>个人主页 | 装修帮办服务平台</title>
    <%@include file="common/head.jsp" %>

    <style type="text/css">
        .show{
            display: inline-block;
        }
        #mess{
            display: none;
        }
        .tip{
            width: 100%;
            background: #d5d5d2;
            box-shadow: 0 0 12px 5px #fff;
            padding:20px;
            margin-bottom:20px;
        }
        .row{
            margin:0;
            padding-left:0;
            padding-right:0;
        }
        dl{
            width:100%;
            font-size:16px
        }
        dl dd{
            border-top:1px dashed #ccc;
            font-size:14px;
            line-height: 40px;
        }
        dl dt{
            font-size:16px;
            line-height:50px;
        }
        .worker_desc{
            width:100%;
            height:auto;
            background: #fff;
            margin-top:10px;
            margin-bottom:10px;
            border:1px solid #ccc;
            -webkit-box-shadow: 0px  0px  12px  0px #000;
            -moz-box-shadow:0px  0px  12px  0px #000;
            box-shadow: 0px  0px  12px  0px #000;
        }
        .worker_desc li{
            color: #000;
        }
        .worker_desc li p{
            text-indent:2em;
            padding-left: 20px;
            color: #6c6c6c;
            font-size:16px;
        }
        .worker_desc li h3{
            padding-left:20px;
            color: #666;
        }
        .panel>.panel-body{
            text-align: inherit;
        }
        .aaaa{
            width: 100%;
            height: 42px;
            line-height: 42px;
            text-align: center;
            display: block;
            background-color: #ff4400;
            color: #fff;
            font-size: 14px;
        }
        .aaaa:hover{
            color:#fff ;
        }
    </style>
</head>
<body>
<%@include file="common/header.jsp" %>
<div class="page-wrapper"  style="background: #eee;">
    <div class="container-fluid" style="background-image: url('https://zxbangban.oss-cn-beijing.aliyuncs.com/workerhomepagebgi.png');height: auto;background-repeat: no-repeat;background-size: 100% 100%; ">
        <div class="container">
            <div style="margin-top: 40px">
                <div class="row clearfix">
                    <div class="col-md-3 col-sm-12 col-xs-12 column hidden-xs "  style="text-align: center">
                        <div class="" style="padding-bottom: 40px">
                            <img class="img-circle img-responsive worker-head-img" src=" https://zxbangban.oss-cn-beijing.aliyuncs.com/541508293209091.png?x-oss-process=style/headimg" style="border-radius: inherit;width: 100%;
    height: 250px;">
                            <span>
                                <c:choose>
                                    <c:when test="${workerinfo.jobId==2}">
                                        <a href="/c/appoint/workerid=${workerinfo.workerId}/free" class="aaaa">
                                            预约我免费报价
                                        </a>
                                    </c:when>
                                    <c:otherwise>
                                        <button class="btn btn-success" id="tellNum" type="button" >
                                            获取手机号&nbsp;(--)
                                        </button>
                                    </c:otherwise>
                                </c:choose>
                            </span>

                        </div>

                    </div>
                    <div class="col-md-3 col-sm-12 col-xs-4 hidden-md hidden-sm hidden-lg column"  style="text-align: center">
                        <div class="" style="padding-bottom: 40px">
                            <img class="img-circle img-responsive worker-head-img" src=" ${workerinfo.headImgUrl}">
                        </div>
                    </div>
                    <div class="col-md-5 col-sm-6 col-xs-12 hidden-xs column">
                        <div>
                            <ul class="workerHomePageCard" style="padding-left: 0">
                                <li>
                                    <span>我是<span class="" id="oARating">帮到底装饰</span></span>
                                </li>
                                <li>
                                    工龄:<span class="loading" id="age">${workerProfile.age}</span>
                                </li>
                                <li>
                                    星级：
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                </li>
                                <li>
                                    籍贯:<span  id="address">${workerinfo.address}</span>
                                </li>
                                <li>
                                    现工程地址:<span  id="location">${workerinfo.location}</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12 hidden-xs column">
                        <div>
                            <ul class="workerHomePageCard">

                                <li>
                                    <span>队长：${workerinfo.name}</span>
                                    <c:choose>
                                        <c:when test="${workerinfo.authenticated}">
                                            <img class="worker-badge-tiny" src="https://zxbangban.oss-cn-beijing.aliyuncs.com/worker/Worker_Authenticated.png" data-toggle="tooltip"
                                                 title="已实名认证"/>
                                        </c:when>
                                        <c:otherwise>
                                            <img class="worker-badge-tiny" src="https://zxbangban.oss-cn-beijing.aliyuncs.com/worker/Worker_UnAuthenticated.png" data-toggle="tooltip"
                                                 title="未实名认证"/>
                                        </c:otherwise>
                                    </c:choose>
                                    <c:choose>
                                        <c:when test="${workerinfo.certificated}">
                                            <img class="worker-badge-tiny" src="https://zxbangban.oss-cn-beijing.aliyuncs.com/worker/Worker_Certificated.png" data-toggle="tooltip"
                                                 title="平台已认证"/>
                                        </c:when>
                                        <c:otherwise>
                                            <img class="worker-badge-tiny" src="https://zxbangban.oss-cn-beijing.aliyuncs.com/worker/Worker_UnCertificated.png" data-toggle="tooltip"
                                                 title="平台未认证"/>
                                        </c:otherwise>
                                    </c:choose>
                                    <c:choose>
                                        <c:when test="${workerinfo.pr}">
                                            <img class="worker-badge-tiny" src="https://zxbangban.oss-cn-beijing.aliyuncs.com/worker/Worker_Process_Review.png" data-toggle="tooltip"
                                                 title="工程已考察"/>
                                        </c:when>
                                        <c:otherwise>
                                            <img class="worker-badge-tiny" src="https://zxbangban.oss-cn-beijing.aliyuncs.com/worker/Worker_Process_UnReview.png" data-toggle="tooltip"
                                                 title="工程未考察"/>
                                        </c:otherwise>
                                    </c:choose>
                                </li>
                                <li>
                                    <span>综合评分:<span class="" id="oARating">${workerinfo.overAllRating}</span></span>
                                </li>
                                <li>
                                    <span>浏览量：<span class="loading" id="pageview"></span><span class="glyphicon glyphicon-eye-open"></span> </span>
                                </li>
                                <li>
                                    出身工种:
                                    <span id="jobId">
                                        <c:forTokens items="设计师,工长,水电工,防水工,贴砖工,木工,油漆工,吊顶工,土建工,集成墙吊顶,家俱安装工,石材安装工,壁纸工,室内门安装工,卫浴安装工,灯饰安装,窗帘安装工,搬运工,家政,送货工,木地工,美缝工,包立管
" delims="," var="item" varStatus="status" >
                                        <c:if test="${workerinfo.jobId==status.count}">${item}</c:if>
                                        </c:forTokens>
                                    </span>

                                </li>
                                <c:choose>
                                        <c:when test="${workerinfo.state == true}">
                                            <li>
                                            施工状态:
                                            <span   style="color: red">
                                                    施工中
                                            </span>
                                            </li>
                                        </c:when>
                                        <c:otherwise>
                                            <li>
                                                施工状态:
                                            <span  style="color: #83d944">
                                                     可预约
                                            </span>
                                            </li>
                                        </c:otherwise>
                                    </c:choose>

                            </ul>
                        </div>
                    </div>
                    <div class="col-md-5 col-sm-6 col-xs-8 hidden-md hidden-lg hidden-sm column">
                        <div style="">
                            <ul class="workerHomePageCard" style="padding-left: 0">
                                <li>
                                    <span>${workerinfo.name}</span>
                                    <c:choose>
                                        <c:when test="${workerinfo.authenticated}">
                                            <img class="worker-badge-tiny" src="https://zxbangban.oss-cn-beijing.aliyuncs.com/worker/Worker_Authenticated.png" data-toggle="tooltip"
                                                 title="已实名认证"/>
                                        </c:when>
                                        <c:otherwise>
                                            <img class="worker-badge-tiny" src="https://zxbangban.oss-cn-beijing.aliyuncs.com/worker/Worker_UnAuthenticated.png" data-toggle="tooltip"
                                                 title="未实名认证"/>
                                        </c:otherwise>
                                    </c:choose>
                                    <c:choose>
                                        <c:when test="${workerinfo.certificated}">
                                            <img class="worker-badge-tiny" src="https://zxbangban.oss-cn-beijing.aliyuncs.com/worker/Worker_Certificated.png" data-toggle="tooltip"
                                                 title="平台已认证"/>
                                        </c:when>
                                        <c:otherwise>
                                            <img class="worker-badge-tiny" src="https://zxbangban.oss-cn-beijing.aliyuncs.com/worker/Worker_UnCertificated.png" data-toggle="tooltip"
                                                 title="平台未认证"/>
                                        </c:otherwise>
                                    </c:choose>
                                    <c:choose>
                                        <c:when test="${workerinfo.pr}">
                                            <img class="worker-badge-tiny" src="https://zxbangban.oss-cn-beijing.aliyuncs.com/worker/Worker_Process_Review.png" data-toggle="tooltip"
                                                 title="工程已考察"/>
                                        </c:when>
                                        <c:otherwise>
                                            <img class="worker-badge-tiny" src="https://zxbangban.oss-cn-beijing.aliyuncs.com/worker/Worker_Process_UnReview.png" data-toggle="tooltip"
                                                 title="工程未考察"/>
                                        </c:otherwise>
                                    </c:choose>
                                </li>
                                <li>
                                    工龄:<span class="loading" id="age">${workerProfile.age}</span>
                                </li>



                            </ul>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12 hidden-md hidden-lg hidden-sm  column">
                        <div class=" ">
                            <ul class="workerHomePageCard">
                                <li>
                                    星级：
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>

                                </li>
                                <li>
                                    籍贯:<span  id="address">${workerinfo.address}</span>
                                </li>
                                <li>
                                    现工程地址:<span  id="location">${workerinfo.location}</span>
                                </li>
                                <li>
                                    <span>综合评分:<span class="" id="oARating">${workerinfo.overAllRating}</span></span>
                                </li>
                                <li>
                                    <span>浏览量：<span class="loading" id="pageview"></span><span class="glyphicon glyphicon-eye-open"></span> </span>
                                </li>
                                <li>
                                    出身工种:
                                    <span id="jobId">
                                        <c:forTokens items="设计师,工长,水电工,防水工,贴砖工,木工,油漆工,吊顶工,土建工,集成墙吊顶,家俱安装工,石材安装工,壁纸工,室内门安装工,卫浴安装工,灯饰安装,窗帘安装工,搬运工,家政,送货工,木地工,美缝工,包立管
" delims="," var="item" varStatus="status" >
                                            <c:if test="${workerinfo.jobId==status.count}">${item}</c:if>
                                        </c:forTokens>
                                    </span>

                                </li>
                                <c:choose>
                                    <c:when test="${workerinfo.state == true}">
                                        <li>
                                            施工状态:
                                            <span   style="color: red">
                                                    施工中
                                            </span>
                                        </li>
                                    </c:when>
                                    <c:otherwise>
                                        <li>
                                            施工状态:
                                            <span  style="color: #83d944">
                                                     可预约
                                            </span>
                                        </li>
                                    </c:otherwise>
                                </c:choose>
                                <li>
                                    <span>
                                        <c:choose>
                                            <c:when test="${workerinfo.jobId==2}">
                                                 <a href="/c/appoint/workerid=${workerinfo.workerId}/free" class="btn btn-success">
                                                    立即预约&nbsp;(--)
                                                </a>
                                            </c:when>
                                            <c:otherwise>
                                                <button class="btn btn-success" id="tellNum" type="button" >
                                                         获取手机号&nbsp;(--)
                                                 </button>
                                            </c:otherwise>
                                        </c:choose>
                                    </span>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="row" >
                        <div class="col-md-3"></div>
                        <div  id="mess"  class="col-md-9 col-sm-12 col-xs-12 column">
                            <span style="color: white;font-size: 21px ">工人手机号：${workerinfo.tel}</span><br/>
                            <span  style="color: red;font-size:20px"><br/><p style="text-indent:2em;line-height: 25px;" class="tip">
                            温馨提示：在选择平台工人给您提供服务时，过低的报价可能存在家装风险，为了您的装修资金、施工服务、售后服务得到保障，
                            可以选择通过平台签订<a>三方施工协议</a>，并通过平台进行约束，否则您在家装过程中出现的任何问题本平台不予保障！</p></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">

        <div class="row clearfix">
            <div class="col-md-12 col-sm-12 col-xs-12 column" style="float:inherit;padding-left:0;padding-right: 0;">
                <div>
                    <ul class="worker_desc" style="padding-left: 0">
                        <li class="panel panel-warning">
                            <div class="panel-heading">
                                <h3  class="panel-titile">我们的宗旨</h3>
                            </div>
                            <div class="panel-body">
                                <p>诚信第一，服务第一</p>
                            </div>
                        </li>
                        <li class="panel panel-danger">
                            <div class="panel-heading">
                                <h3 class="panel-titile">擅长装修风格</h3>
                            </div>
                            <div class="panel-body">
                                <p>现代简约、恬淡田园、新中式、欧式古典、地中海、混搭</p>
                            </div>
                        </li>
                        <li class="panel panel-success">
                            <div class="panel-heading">
                                <h3 class="panel-titile">擅长工艺</h3>
                            </div>
                            <div class="panel-body">
                                <p>大型工装、复杂造型、水电改造、木工制造</p>
                            </div>
                        </li>
                        <li class="panel panel-info">
                            <div class="panel-heading">
                                <h3 class="panel-titile">我们的成长</h3>
                            </div>
                            <div class="panel-body">
                                <p  style="padding-bottom: 10px;">施工队现共18人，自2012年真是成立以来，队伍不断壮大，目前已经配备所有的装修施工工种，包括水电工、防水工、贴砖工，吊顶共、木工、油工等，经过多年的配合，队伍内部配合默契，是个高效又高质的队伍，目前对现代简约、欧式、美式、中式和混搭的风格装修都非常擅长。</p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-12 column worker_desc" style="padding-left:0;padding-right: 0;" >
                <div class="panel panel-warning">
                    <div class="panel-heading">
                        <h3 class="panel-titile">
                            业主预约信息:
                        </h3>
                    </div>
                    <div class="panel-body">
                        <dl class="row">
                            <dt class="col-md-3">业主</dt>
                            <dt class="col-md-3">小区</dt>
                            <dt class="col-md-3">手机号</dt>
                            <dt class="col-md-3">时间</dt>

                            <c:forEach var="customer" items="${customers}">
                                <c:set var="cust" scope="page" value="${customers}"></c:set>
                                <dd class="col-md-3">${customer.name}</dd>
                                <dd class="col-md-3">${customer.programAddress}</dd>
                                <dd class="col-md-3" class="telphone">${customer.telphone.substring(0,3)}****${customer.telphone.substring(7,11)}</dd>
                                <dd class="col-md-3">${customer.createTime.toLocaleString()}</dd>
                            </c:forEach>
                        </dl>
                    </div>
                </div>
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-titile">
                            工程订单案例:
                        </h3>
                    </div>
                    <div class="panel-body">
                        <dl class="row" >
                            <dt class="col-md-2">小区</dt>
                            <dt class="col-md-2">面积</dt>
                            <dt class="col-md-2">报价</dt>
                            <dt class="col-md-2">施工方式</dt>
                            <dt class="col-md-2">当前状态</dt>
                            <dt class="col-md-2">时间</dt>
                            <c:set var="workerDes" value="${workerinfo.projectDes.split(';')}"></c:set>
                             <c:forEach var="info"  items="${workerDes}">
                                 <dd class="col-md-2">${info}</dd>
                             </c:forEach>

                            <dt class="col-md-3 col-xs-3 ">业主</dt>
                            <dt class="col-md-3 col-xs-3 ">小区</dt>
                            <dt class="col-md-3 col-xs-3 ">面积</dt>
                            <dt class="col-md-3 col-xs-3 ">时间</dt>

                            <dd class="col-md-3 col-xs-3 ">阿萨德</dd>
                            <dd class="col-md-3 col-xs-3 ">幸福花园</dd>
                            <dd class="col-md-3 col-xs-3 ">100㎡</dd>
                            <dd class="col-md-3 col-xs-3 ">2017/8-2018/7</dd>

                            <dd class="col-md-3 col-xs-3 ">阿萨德</dd>
                            <dd class="col-md-3 col-xs-3 ">幸福花园</dd>
                            <dd class="col-md-3 col-xs-3 ">100㎡</dd>
                            <dd class="col-md-3 col-xs-3 ">2017/8-2018/7</dd>

                            <%--<dd class="col-md-2">阿萨德</dd>--%>
                            <%--<dd class="col-md-3">幸福花园</dd>--%>
                            <%--<dd class="col-md-2">100㎡</dd>--%>
                            <%--<dd class="col-md-2">8-10万</dd>--%>
                            <%--<dd class="col-md-3">2017/8-2018/7</dd>--%>


                            <%--<dd class="col-md-2">阿萨德</dd>--%>
                            <%--<dd class="col-md-3">幸福花园</dd>--%>
                            <%--<dd class="col-md-2">100㎡</dd>--%>
                            <%--<dd class="col-md-2">8-10万</dd>--%>
                            <%--<dd class="col-md-3">2017/8-2018/7</dd>--%>

                        </dl>
                    </div>
                </div>
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-md-12 column worker_desc" style="padding-left:0;padding-right: 0;">
                <div class="panel panel-warning">
                    <div class="panel-heading">
                        <h3 class="panel-titile">
                            工程案例展示:
                        </h3>
                    </div>
                    <div class="panel-body">
                        <div id="projectimg">
                            <h4 class="loading">Loading</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="common/footer.jsp" %>
</body>
<%@include file="common/script.jsp" %>
<script type="text/javascript">
    $(function () {
        var $wid = "${workerinfo.workerId}";
        setTimeout(function () {
            homepagestate.detail.a($wid);
            homepagestate.detail.c($wid);
        },3000);
        $("[data-toggle='tooltip']").tooltip();

    });
    $("#tellNum").click(function(){
        $("#mess").toggleClass("show");
    });

</script>
</html>