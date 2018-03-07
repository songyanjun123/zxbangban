<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common/tag.jsp" %>
<html>
<head>
    <title>装修帮办账号| 工人客服中心|主页</title>
    <%@include file="../common/head.jsp" %>
    <style type="text/css">
        .headimg {
            width: 43px;
            height: 43px;
        }

        .table > tbody > tr > th {
            line-height: 43px;
            vertical-align: middle;
        }

        .table .edit {
            margin-top: 4px;
        }

        .p_img {
            float: left;
        }

        .panel-title {
            text-align: center;
            font-size: 22px;
        }
        .panel-default>.panel-heading{
            background-color: white;
        }
        .panel-default>.panel-heading .badge{
            background-color: #e48632;
        }
    </style>
</head>
<body>
<%@include file="../common/header.jsp" %>
<div class="page-wrapper">
    <div class="row clearfix">
        <div class="col-lg-2 col-md-2 column">
            <div class="jumbotron">
                <div class="panel-group" id="accordion">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                    工种信息<span class="badge">${count}</span>
                                </a>
                            </h3>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse in">
                            <div class="panel-body">
                                <c:set var="job" scope="session" value="${jobs}"/>
                                <c:if test="${job.size() > 0}">
                                    <div class="btn-group-vertical">
                                        <button type="button" class="btn btn-default job-btn"
                                                value="ALL">所有工人</button>
                                        <c:forEach var="j" items="${jobs}">
                                            <button type="button" class="btn btn-default job-btn"
                                                    value="${j.name}">${j.des}</button>
                                        </c:forEach>
                                    </div>
                                </c:if>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="col-lg-10 col-md-10 column">
            <h1>${msg}</h1>
            <c:set var="worker" scope="page" value="${workers}"/>
            <c:if test="${worker.size() > 0}">
            <div class="table-responsive">
                <table class="table table-condensed table-hover">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>姓名</th>
                        <th>头像</th>
                        <th>手机号</th>
                        <th>工种</th>
                        <th>施工状态</th>
                        <th>实名认证</th>
                        <th>工程考察</th>
                        <th>平台认证</th>
                        <th>展示状态</th>
                        <th>入驻时间</th>
                        <th>操作</th>
                        <th>管理</th>
                    </tr>
                    </thead>
                    <tbody>
                    </c:if>
                    <c:forEach var="w" items="${workers}">
                        <tr>
                            <th>${w.id}</th>
                            <th>${w.name}</th>
                            <th><img src="${w.headImgUrl}" class="img-circle headimg"></th>
                            <th>${w.telPhone}</th>
                            <th>${w.job}</th>
                            <th>
                                <c:set var="state" value="${w.state}"/>
                                <c:choose>
                                    <c:when test="${state}">
                                        <span class="label label-danger">施工中</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="label label-success">可预约</span>
                                    </c:otherwise>
                                </c:choose>
                            </th>
                            <th>
                                <c:set var="authenticated" value="${w.authenticated}"/>
                                <c:choose>
                                    <c:when test="${authenticated}">
                                        <img class="worker-badge" src="https://zxbangban.oss-cn-beijing.aliyuncs.com/worker/Worker_Authenticated.png"/>
                                    </c:when>
                                    <c:otherwise>
                                        <img class="worker-badge" src="https://zxbangban.oss-cn-beijing.aliyuncs.com/worker/Worker_UnAuthenticated.png"/>
                                    </c:otherwise>
                                </c:choose>
                            </th>
                            <th>
                                <c:set var="pr" value="${w.pr}"/>
                                <c:choose>
                                    <c:when test="${pr}">
                                        <img class="worker-badge" src="https://zxbangban.oss-cn-beijing.aliyuncs.com/worker/Worker_Process_Review.png"/>
                                    </c:when>
                                    <c:otherwise>
                                        <img class="worker-badge" src="https://zxbangban.oss-cn-beijing.aliyuncs.com/worker/Worker_Process_UnReview.png"/>
                                    </c:otherwise>
                                </c:choose>
                            </th>
                            <th>
                                <c:set var="certificated" value="${w.certificated}"/>
                                <c:choose>
                                    <c:when test="${certificated}">
                                        <img class="worker-badge" src="https://zxbangban.oss-cn-beijing.aliyuncs.com/worker/Worker_Certificated.png"/>
                                    </c:when>
                                    <c:otherwise>
                                        <img class="worker-badge" src="https://zxbangban.oss-cn-beijing.aliyuncs.com/worker/Worker_UnCertificated.png"/>
                                    </c:otherwise>
                                </c:choose>
                            </th>
                            <th>
                                <c:set var="isShow" value="${w.show}"/>
                                <c:choose>
                                    <c:when test="${isShow}">
                                        <span class="label label-success">显示</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="label label-default">隐藏</span>
                                    </c:otherwise>
                                </c:choose>

                            </th>
                            <th><fmt:formatDate value="${w.createTime}" type="both"/></th>
                            <th>
                                <button type="button" name="notification" class="btn btn-default btn-manager"
                                        value="${w.id}">操作
                                </button>
                            </th>
                            <th>
                                <button type="button" name="notification" class="btn btn-info btn-detail"
                                        value="${w.id}">详情
                                </button>
                            </th>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="modal fade" id="modal-container-manager" role="dialog" aria-labelledby="myModalLabel"
             aria-hidden="true">
            <div class="container">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span
                                class="glyphicon glyphicon-remove"></span></button>
                    </div>
                    <div class="modal-body">
                        <div class="well well-lg">
                            <div class="row">
                                <div class="col-md-2 column">
                                    <button type="button" class="btn btn-success btn-lg btn-block" value=""
                                            onclick='a()'>短信推送
                                    </button>
                                </div>
                                <div class="col-md-2 column">
                                    <button type="button" class="btn btn-danger btn-lg btn-block" value=""
                                            onclick='b1()'>
                                        施工中
                                    </button>
                                </div>
                                <div class="col-md-2 column">
                                    <button type="button" class="btn btn-success btn-lg btn-block" value=""
                                            onclick='b2()'>
                                        可预约
                                    </button>
                                </div>
                                <div class="col-md-2 column">
                                    <button type="button" class="btn btn-danger btn-lg btn-block" value=""
                                            onclick='c()'>黑名单
                                    </button>
                                </div>
                                <div class="col-md-2 column">
                                    <button type="button" class="btn btn-info btn-lg btn-block" value=""
                                            onclick='d()'>白名单
                                    </button>
                                </div>
                                <div class="col-md-2 column">
                                    <button type="button" class="btn btn-info btn-lg btn-block" value=""
                                            onclick='del()'>注销信息
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-warning" data-dismiss="modal">关闭</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="modal fade" id="modal-container-manager-detail" role="dialog" aria-labelledby="myModalLabel"
             aria-hidden="true">
            <div class="container">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span
                                class="glyphicon glyphicon-remove"></span></button>
                    </div>
                    <div class="modal-body">
                        <div class="well well-lg">
                            <div class="table-responsive">
                                <table class='table table-hover table-responsive table-striped table-responsive'>
                                    <caption>工人详细信息</caption>
                                    <tbody>
                                    <tr>
                                        <th>工人编号:</th>
                                        <th class="workerid"></th>
                                        <th>姓名:</th>
                                        <th colspan="3"><span class="name"></span>
                                            <button class='btn btn-link pull-right edit' type='button'
                                                    onclick='en(this)'>
                                                编辑
                                            </button>
                                        </th>
                                        <th rowspan='4' colspan='2' class="himg text-center"></th>
                                    </tr>
                                    <tr>
                                        <th>工种:</th>
                                        <th><span class="jobid"></span>
                                        </th>
                                        <th>手机号:</th>
                                        <th colspan="3"><span class="tel"></span>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th>籍贯:</th>
                                        <th colspan='5'><span class="address"></span>
                                            <button class='btn btn-link pull-right edit' type='button' onclick='address(this)'>编辑
                                            </button>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th>现所在地:</th>
                                        <th colspan='5'><span class="location"></span>
                                            <button class='btn btn-link pull-right edit' type='button'
                                                    onclick='el(this)'>编辑
                                            </button>
                                        </th>
                                    </tr>

                                    <tr>
                                        <th>施工状态:</th>
                                        <th colspan="2"><span class="state"></span>
                                        </th>

                                        <th>实名认证:</th>
                                        <th><span class="auth"></span>
                                            <button class='btn btn-link pull-right edit' type='button'
                                                    onclick='auth(this)'>
                                                编辑
                                            </button>
                                        </th>

                                        <th>平台认证:</th>
                                        <th ><span class="cert"></span>
                                            <button class='btn btn-link pull-right edit' type='button'
                                                    onclick='ec(this)'>
                                                编辑
                                            </button>
                                        </th>

                                    </tr>
                                    <tr>
                                        <th>网站显示状态:</th>
                                        <th colspan="2" class="show"></th>
                                        <th>工龄:</th>
                                        <th colspan="2"><span class="age"></span>
                                        <th>担保金:</th>
                                        <th><span class="deposit"></span>
                                            <button class='btn btn-link pull-right edit' type='button'
                                                    onclick='ed(this)'>编辑
                                            </button>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th>星级评价:</th>
                                        <th><span class="stareva"></span>&nbsp;&nbsp;<span
                                                class="glyphicon glyphicon-star" style="color: #ecc340"></span></th>
                                        <th>综合评分:</th>
                                        <th><span class="oarating"></span></th>
                                        <th>工程考察:</th>
                                        <th colspan="3"><span class="pr"></span>
                                            <button class='btn btn-link pull-right edit' type='button'
                                                    onclick='ePR(this)'>编辑
                                            </button>
                                        </th>

                                    </tr>
                                    <tr>
                                        <th>推荐人手机号:</th>
                                        <th class="reftel"></th>
                                        <th>个人主页浏览量:</th>
                                        <th><span class="pv"></span>
                                        </th>
                                        <th>排名权重:</th>
                                        <th colspan="3"><span class="weighted"></span>
                                            <button class='btn btn-link pull-right edit' type='button'
                                                    onclick='ew(this)'>编辑
                                            </button>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th>入驻时间:</th>
                                        <th class="time" colspan="6"></th>
                                    </tr>
                                    <tr>
                                        <th colspan="7" class="text-center">工程展示图片</th>
                                    </tr>
                                    <tr>
                                        <th colspan="7">
                                            <span class="projectimg"></span>
                                            <button class='btn btn-link pull-right edit' type='button'
                                                    onclick='epi(this)'>编辑
                                            </button>
                                        </th>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="../common/footer.jsp" %>
</body>
<%@include file="../common/script.jsp" %>
<script type="text/javascript">

    var tag;
    var flag;
    $(function () {
        $(".btn-manager").click(function () {
            tag = $(this);
            var $mwm = $("#modal-container-manager");
            $mwm.find("button").attr("value", tag.val());
            $mwm.modal({
                show: true
            });
        });
        $(".btn-detail").click(function () {
            tag = $(this);
            workerManager.detail.managerment(tag);
        });
        $("#modal-container-manager-detail").on("hide.bs.modal", function () {
            location.reload();
        });

        var $btns = $(".job-btn");
        for(var i = 0;i < $btns.length;i ++){
            $btns[i].onclick = function () {
                window.location.href="${pageContext.request.contextPath}/worker-console/home?j="+this.value;
            }
        }
        $(".btn-warning").click(function () {
            location.reload();
        })

    });

    function a() {
        workerManager.detail.notice(tag);
    }

    function b1() {
        workerManager.detail.changeStateTrue(tag);
    }

    function b2() {
        workerManager.detail.changeStateFalse(tag);
    }


    function c() {
        $.ajax({
            url: "/worker-console/banned",
            data: {
                "wid": tag.val()
            },
            type: "get",
            success: function (data) {
                if (data === "1") {
                    alert("操作成功!");
                } else {
                    alert("操作失败!");
                }
                //location.reload();
            }, error: function (xhr) {
                alert(xhr.state() + " " + xhr.statusText);
            }
        });
    }

    function d() {
        $.ajax({
            url: "/worker-console/unbanned",
            data: {
                "wid": tag.val()
            },
            type: "get",
            success: function (data) {
                if (data === "1") {
                    alert("操作成功!");
                } else {
                    alert("操作失败!");
                }
                //location.reload();
            }, error: function (xhr) {
                alert(xhr.state() + " " + xhr.statusText);
            }
        });
    }

    function del() {
        var b = confirm("确认注销该工人信息（一经注销，无法恢复）?");
        if (b === true) {
            $.ajax({
                url: "/worker-console/del",
                data: {
                    "wid": tag.val()
                },
                type: "get",
                success: function (data) {
                    if (data === "1") {
                        alert("操作成功!");
                    } else {
                        alert("操作失败!");
                    }
                    //location.reload();
                }, error: function (xhr) {
                    alert(xhr.state() + " " + xhr.statusText);
                }
            });
        }
    }

    function ed(param) {
        var $i = $(param);
        var $x = $($i).siblings();
        var $y = $x.html();
        flag = $($i).val();
        $($($i).parent()).html("<div class=''><div class='input-group'>" +
            "<input type='number' class='form-control' name='deposit' placeholder='" + $y + "'>" +
            "<span class='input-group-btn'><button type='button' class='btn btn-default' onclick='y()'>保存</button>" +
            "</span>" +
            "</div></div>");
    }

    function en(param) {
        var $i = $(param);
        var $x = $($i).siblings();
        var $y = $x.html();
        flag = $($i).val();
        $($($i).parent()).html("<div class=''><div class='input-group'>" +
            "<input type='text' class='form-control' name='name' placeholder='" + $y + "'>" +
            "<span class='input-group-btn'><button type='button' class='btn btn-default' onclick='x()'>保存</button>" +
            "</span>" +
            "</div></div>");
    }

    function ez(param) {
        var $i = $(param);
        var $x = $($i).siblings();
        flag = $($i).val();
        $($($i).parent()).html("<div class=''>" +
            "<form class='form' enctype='multipart/form-data' action='/worker-console/wid=" + flag + "/edit-himg' method='post'>" +
            "<div class='input-group'>" +
            "<input type='file' class='form-control' name='file'>" +
            "<span class='input-group-btn'><button type='submit' class='btn btn-default'>保存</button>" +
            "</span>" +
            "</div></form></div>");
    }

    function address(param) {
        var $i = $(param);
        var $x = $($i).siblings();
        var $y = $x.html();
        flag = $($i).val();
        $($($i).parent()).html("<div class=''><div class='input-group'>" +
            "<input type='text' class='form-control' name='address' placeholder='" + $y + "'>" +
            "<span class='input-group-btn'><button type='button' class='btn btn-default' onclick='m()'>保存</button>" +
            "</span>" +
            "</div></div>");
    }

    function el(param) {
        var $i = $(param);
        var $x = $($i).siblings();
        var $y = $x.html();
        flag = $($i).val();
        $($($i).parent()).html("<div class=''><div class='input-group'>" +
            "<select class='select' id='province_code' name='province_code' onchange='getCity()'>"+

            "</select>"+

            "<select class='select' id='city_code' name='city_code' onchange='getArea()'>"+
            "</select>"+

            "<select class='select' id='area_code' name='area_code'>"+

            "</select>" +
            "<span class='input-group-btn'><button type='button' class='btn btn-default' onclick='l()'>保存</button>" +
            "</span>" +
            "</div></div>");
        $.ajax({
            type: 'get',
            url: "/worker-console/queryProvinceAll",
            datatype: 'jsonp',
            success: function (data) {
                var result = eval('(' + data + ')');
                for (var i = 0; i < result.length; i++) {
                    $('#province_code').append("<option value='" + result[i].code + "' >" + result[i].name + "</option>");
                }
            },
            error: function () {
                alert("加载省失败");
            }
        });
    }
    /*加载市下拉选*/
    function getCity() {
        var id = $("#province_code").val();
        $("#city_code").empty();
        $("#area_code").empty();
        $.ajax({
            type: "post",
            url: "/worker-console/queryCityByCode",
            datatype: 'jsonp',
            data: {"id": id},
            success: function (data) {
                var result = eval('(' + data + ')');
                $('#city_code').append("<option value='' selected='selected' >" + '--请选择--' + "</option>");
                $('#area_code').append("<option value='' selected='selected' >" + '--请选择--' + "</option>");
                for (var i = 0; i < result.length; i++) {
                    $('#city_code').append("<option value='" + result[i].code + "' >" + result[i].name + "</option>");
                }
            },
            error: function () {
                alert("加载市失败");
            }
        });
    } ;
    /*加载地区下拉选*/
    function getArea() {
        var id = $("#city_code").val();
        $("#area_code").empty();
        $.ajax({
            type: "post",
            url: "/worker-console/queryAreaByCode",
            datatype: 'jsonp',
            data: {"id": id},
            success: function (data) {
                var result = eval('(' + data + ')');
                $('#area_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");
                for (var i = 0; i < result.length; i++) {
                    $('#area_code').append("<option value='" + result[i].code + "' >" + result[i].name + "</option>");
                }
            },
            error: function () {
                alert("加载区失败");
            }
        });
    }
    function auth(param) {
        var $i= $(param);
        var $x= $($i).siblings();
        flag = $($i).val();
        alert(flag);
        $($($i)).parent().html("<div class=''><div class='input-group'>" +
            "<select name='cert' class='form-control'>" +
            "<option value='0'>未实名</option>" +
            "<option value='1'>已实名</option></select>" +
            "<span class='input-group-btn'>" +
            "<button type='button' class='btn btn-default' onclick='at()'>保存</button>" +
            "</span> " +
            "</div></div>");
    }

    function ec(param) {
        var $i = $(param);
        var $x = $($i).siblings();
        var $y = $x.html();
        flag = $($i).val();
        $($($i)).parent().html("<div class=''><div class='input-group'>" +
            "<select name='cert' class='form-control'>" +
            "<option value='0'>未认证</option>" +
            "<option value='1'>已认证</option></select>" +
            "<span class='input-group-btn'>" +
            "<button type='button' class='btn btn-default' onclick='f()'>保存</button>" +
            "</span> " +
            "</div></div>");
    }
    function ePR(param) {
        var $i = $(param);
        var $x = $($i).siblings();
        var $y = $x.html();
        flag = $($i).val();
        $($($i).parent()).html("<div class=''><div class='input-group'>" +
            "<select name='pr' class='form-control'>" +
            "<option value='0'>未认证</option>" +
            "<option value='1'>已认证</option></select>" +
            "<span class='input-group-btn'>" +
            "<button type='button' class='btn btn-default' onclick='z()'>保存</button>" +
            "</span>" +
            "</div></div>");
    }

    function ew(param) {
        var $i = $(param);
        var $x = $($i).siblings();
        var $y = $x.html();
        flag = $($i).val();
        $($($i).parent()).html("<div class=''><div class='input-group'>" +
            "<input type='number' class='form-control' name='weighted' min='0' max='99' step='10' placeholder='" + $y + "'>" +
            "<span class='input-group-btn'><button type='button' class='btn btn-default' onclick='w()'>保存</button>" +
            "</span>" +
            "</div></div>");
    }

    function epi(param) {
        var $i = $(param);
        var $x = $($i).siblings();
        flag = $($i).val();
        $($($i).parent()).html("<div class=''>" +
            "<form class='form' enctype='multipart/form-data' action='/worker-console/wid=" + flag + "/edit-programimg' method='post'>" +
            "<div class='input-group'>" +
            "<input type='file' class='form-control' name='files' multiple='multiple'>" +
            "<span class='input-group-btn'><button type='submit' class='btn btn-default'>保存</button>" +
            "</span>" +
            "</div></form></div>");
    }

    function at() {
        var $a = $("select").val();
        $.ajax({
            url: "/worker-console/edit-auth",
            data: {
                "wid": flag,
                "auth": $a
            },
            type: "post",
            success: function (result) {
                if (result !== null && result === "1") {
                    alert("修改成功");
                } else {
                    alert("修改失败");
                }
                location.reload();

            },
            error: function (xhr) {
                alert(xhr.state() + " " + xhr.statusText);
            }
        });
    }

    function f() {
        var $a = $("select").val();
        $.ajax({
            url: "/worker-console/edit-cert",
            data: {
                "wid": flag,
                "cert": $a
            },
            type: "post",
            success: function (result) {
                if (result !== null && result === "1") {
                    alert("修改成功");
                } else {
                    alert("修改失败");
                }
                location.reload();

            },
            error: function (xhr) {
                alert(xhr.state() + " " + xhr.statusText);
            }
        });

    }

    function x() {
        var $a = $("input[name=name]");
        if (x1($a)) {
            $.ajax({
                url: "/worker-console/edit-name",
                data: {
                    "wid": flag,
                    "name": $a.val()
                },
                type: "post",
                success: function (result) {
                    if (result !== null && result === "1") {
                        alert("修改成功");
                    } else {
                        alert("修改失败");
                    }
                    location.reload();
                },
                error: function (xhr) {
                    alert(xhr.state() + " " + xhr.statusText);
                }
            });
        }
    }

    function l() {
        var procode=$('#province_code').find("option:selected").text();
        var cityCode=$("#city_code").find("option:selected").text();
        var areaCode=$('#area_code').find("option:selected").text();
        var loc=procode+cityCode+areaCode;

        $.ajax({
            url: "/worker-console/edit-location",
            data: {
                "wid": flag,
                "location":loc
            },
            type: "post",
            success: function (result) {
                if (result !== null && result === "1") {
                    alert("修改成功");
                } else {
                    alert("修改失败");
                }
                location.reload();
            },
            error: function (xhr) {
                alert(xhr.state() + " " + xhr.statusText);
            }
        });

    }
    function m() {
        var $a = $("input[name=address]");
        if (x1($a)) {
            $.ajax({
                url: "/worker-console/edit-address",
                data: {
                    "wid": flag,
                    "address": $a.val()
                },
                type: "post",
                success: function (result) {
                    if (result !== null && result === "1") {
                        alert("修改成功");
                    } else {
                        alert("修改失败");
                    }
                    location.reload();
                },
                error: function (xhr) {
                    alert(xhr.state() + " " + xhr.statusText);
                }
            });
        }
    }

    function y() {
        var $a = $("input[name=deposit]");
        $.ajax({
            url: "/worker-console/edit-deposit",
            data: {
                "wid": flag,
                "deposit": $a.val()
            },
            type: "post",
            success: function (result) {
                if (result !== null && result === "1") {
                    alert("修改成功");
                } else {
                    alert("修改失败");
                }
                location.reload();

            },
            error: function (xhr) {
                alert(xhr.state() + " " + xhr.statusText);
            }
        });
    }

    function z() {
        var $a = $("select").val();
        $.ajax({
            url: "/worker-console/edit-pr",
            data: {
                "wid": flag,
                "pr": $a
            },
            type: "post",
            success: function (result) {
                if (result !== null && result === "1") {
                    alert("修改成功");
                } else {
                    alert("修改失败");
                }
                location.reload();
            },
            error: function (xhr) {
                alert(xhr.state() + " " + xhr.statusText);
            }
        });
    }

    function w() {
        var $a = $("input[name=weighted]");
        if (0 < $a < 99) {
            $.ajax({
                url: "/worker-console/edit-weighted",
                data: {
                    "wid": flag,
                    "weighted": $a.val()
                },
                type: "post",
                success: function (result) {
                    if (result !== null && result === "1") {
                        alert("修改成功");
                    } else {
                        alert("修改失败");
                    }
                    location.reload();
                },
                error: function (xhr) {
                    alert(xhr.state() + " " + xhr.statusText);
                }
            });
        }
    }

    function x1(param) {
        var $temp = param;
        var $nameregular = /^[\u4e00-\u9fa5\\w]+$/;
        if ($temp.val().length === 0) {
            $temp.attr("placeholder", errorInfo.THE_NAME_CANNOT_BE_EMPTY);
            return false;
        }
        if ($temp.val().length < 2) {
            $temp.val("");
            $temp.attr("placeholder", errorInfo.THE_NAME_IS_TOO_SHORT);
            return false;
        }
        if ($temp.val().length > 10) {
            $temp.val("");
            $temp.attr("placeholder", errorInfo.THE_NAME_IS_TOO_LONG);
            return false;
        }
        if (!($nameregular.test($temp.val()))) {
            $temp.val("");
            $temp.attr("placeholder", errorInfo.NAMES_CAN_ONLY_BE_CHINESE_CHARACTERS);
            return false;
        }

        return true;
    }


    function z1(param) {
        var $temp = param;
        var $levelregular = /^[0-3]*$/g;
        if (!($levelregular.test($temp.val()))) {
            $temp.val("0");
            return false
        }
        return true;
    }


    var errorInfo = {
        THE_NAME_CANNOT_BE_EMPTY: "名字不能为空！",
        THE_NAME_IS_TOO_SHORT: "名字不能少于2个字！",
        THE_NAME_IS_TOO_LONG: "名字不能多于10个字！",
        NAMES_CAN_ONLY_BE_CHINESE_CHARACTERS: "名字只可以是汉字哦！"
    }
</script>
</html>
