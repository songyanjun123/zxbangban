<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/9/10
  Time: 9:39
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common/tag.jsp" %>
<html>
<head>
    <title>装修帮办|你的个人资料</title>
    <%@include file="../common/head.jsp" %>


    <style type="text/css">
        .headimg {
            background-color: #cccccc;
        }

        .noneBtn {
            display: none;
        }
        .imgLen{

        }
        .imgLen span{
            position: relative;
            display: inline-block;
            margin: 5px;
        }
        .imgLen .remove{
            position: absolute;
            top:0;
            left:0;
            font-size:20px;
            display: inline-block;
            width:100%;
            height:30px;
            line-height: 30px;
            text-align: center;
            background: rgba(0,0,0,.5);
            cursor: pointer;
        }
        .imgLen img{
            width:100%;

        }
        dd,dt{
            font-size:17px;
        }
        dl{
            border: 1px solid #ccc;
        }
        #clas{
            border-bottom: hidden;
        }
    </style>
</head>
<body>
<%@include file="../common/header.jsp" %>
<div class="page-wrapper">
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 col-sm-12 col-xs-12 column">
                <ul class="nav nav-pills nav-justified" style="">
                    <li><a href="${pageContext.request.contextPath}/my-account/center">账号</a></li>
                    <li class="active"><a href="${pageContext.request.contextPath}/my-account/profile">你的信息</a></li>
                    <li><a href="#">订单信息</a></li>
                    <li><a href="#">协议与合同</a></li>
                    <li><a href="#">服务</a></li>
                </ul>
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="jumbotron" style="padding-left: 0;padding-right: 0px">
                    <h2>你的信息</h2>
                    <ol class="nav nav-tabs">
                        <li><a href="${pageContext.request.contextPath}/my-account/profile">个人资料</a></li>
                        <li><a href="#">联系人信息</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/my-account/profile-workerinfo">工人信息</a>
                        </li>
                    </ol>
                </div>
            </div>
            <c:set var="img" scope="page" value="${worker}"/>
            <c:if test="${img != null}">
            <div class="col-md-2 col-sm-2 col-xs-12 column">
                <div class="jumbotron" style="padding-left: 0;padding-right: 0px">
                    <h2><img src="${worker.headImgUrl}" class="img-circle img-responsive headimg"/></h2>
                        <span class="text-center">
                                <button type="button" class="btn btn-link" onclick="ei(this)" value="${worker.workerId}">修改头像</button>
                            </span>
                </div>
            </div>
            <div class="col-md-10 col-sm-10  col-xs-12 column">
                <div class="jumbotron">
                    <div>
                        <h2 style="margin-bottom: 0">姓名：${worker.name}</h2>
                        <span><a href="#"></a> </span>
                        <span></span><br/>
                    </div>
                    <div>
                        <font size="6">工作地址：${worker.location}</font>
                        <button class='btn btn-link pull-right edit' type='button'
                                onclick='editloc(this)' value="${worker.workerId}">编辑
                        </button>
                    </div>
                    <h2 style="margin-bottom: 0">工程描述:</h2><br/>
                    <div>
                        <dl class="row" id="clas">
                            <dt class="col-md-2">小区</dt>
                            <dt class="col-md-1">面积</dt>
                            <dt class="col-md-1">报价</dt>
                            <dt class="col-md-2">施工方式</dt>
                            <dt class="col-md-2">当前状态</dt>
                            <dt class="col-md-3">时间</dt>
                            <dt class="col-md-1">操作</dt>
                            <c:set var="workerDes" value="${worker.projectDes.split(';')}"></c:set>
                            <c:forEach var="info"  items="${workerDes}" varStatus="vs" step="6">
                                <dt class="col-md-2" id="${vs.index}" name="${vs.index}">${workerDes[vs.index]}</dt>
                                <dt class="col-md-1" id="${vs.index}" name="${vs.index}">${workerDes[vs.index+1]}</dt>
                                <dt class="col-md-1" id="${vs.index}" name="${vs.index}">${workerDes[vs.index+2]}</dt>
                                <dt class="col-md-2" id="${vs.index}" name="${vs.index}">${workerDes[vs.index+3]}</dt>
                                <dt class="col-md-2" id="${vs.index}" name="${vs.index}">${workerDes[vs.index+4]}</dt>
                                <dt class="col-md-3" id="${vs.index}" name="${vs.index}">${workerDes[vs.index+5]}</dt>
                                <c:if test="${worker.projectDes!=''}">
                                    <dt class="col-md-1"  id="${vs.index}"><button type="button" class="btn btn-default" onclick="editProject(this)">删除</button></dt>
                                </c:if>
                            </c:forEach>
                        </dl>
                        <a href="${pageContext.request.contextPath}/worker-console/addDec?wid=${worker.workerId}"   ><span style="font-size: 20px" class="btn btn-info">添加</span></a>
                    </div>
                    <h2 style="margin-bottom: 0">工程图片:</h2>
                    <c:choose>
                        <c:when test="${empty worker.projectImgUrl}">
                            <span style="font-size: 40px;border: 1px;height: auto;width: auto">暂无</span> <br>
                            <a href="${pageContext.request.contextPath}/worker-console/uploadpic?wid=${worker.workerId}"><span style="font-size: 20px">上传图片</span></a>
                        </c:when>
                        <c:otherwise>
                            <div class="row"  id="imgLen">
                                <c:forEach items="${worker.projectImgUrl.split(';')}" var="workerImg" varStatus="count">
                                    <c:if test="${not empty workerImg}">
                                        <div class="col-md-4 column imgLen"  >
                                            <span>
                                                <em class='remove'>删除图片</em>
                                                <img src="${workerImg}" class='img-responsive' id="${count.index}"/>
                                            </span>
                                        </div>
                                    </c:if>
                                </c:forEach>
                            </div>
                            <a href="${pageContext.request.contextPath}/worker-console/uploadpic?wid=${worker.workerId}"   ><span  class="btn maxLen btn-primary" style="font-size: 20px">上传图片</span></a>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </div>
        </c:if>
    </div>
</div>
</div>

<%@include file="../common/footer.jsp" %>
</body>
<%@include file="../common/script.jsp" %>
<script type="text/javascript">

    function  editProject(param) {
       var id= param.parentNode.id;
       var eles=document.getElementsByName(id);
       var  str = "";
        for(i=0;i<eles.length;i++){
            str += eles[i].innerHTML + ";";
        }
        $.ajax({
            type:"POST",
            url:"${pageContext.request.contextPath}/worker-console/editDes",
            data:{str:str,wid:${worker.workerId}},
            dataType:"json",
            success:function(temp){
                location.reload();
            }
        });
    }

    /*图片删除*/
    var imgLen = document.getElementById("imgLen").getElementsByTagName("div");
    if(imgLen.length >= 7){
        $('.maxLen').css("display","none");
    }else{
        $('.maxLen').css("display","inline-block");
    }
    $('.remove').css("color","#fff");
    $('.remove').click(function(){
        var index = $(this).siblings().attr("id");
        var fileName = document.getElementById(index).src;
        console.log(fileName);
        $.ajax({
            url:"${pageContext.request.contextPath}/worker-console/deletepic",
            type:"GET",
            data:{wid:${worker.workerId},fileName:fileName},
            dataType:"json",
            success:function (receive) {
                if(receive == 1){
                    location.reload();
                }else{
                    alert("出错了，请刷新页面之后重新删除！");
                }
            }
        })
    });
    function editloc(param) {
        var $i = $(param);
        flag = $($i).val();
        $($($i).parent()).html("<div><div class='input-group'>" +
            "<font size='6'>"+"工作地址："+"</font>"+
            "<select class='select' id='provinces' name='province_code' onchange='getCitys()'>"+

            "</select>"+

            "<select class='select' id='citys' name='city_code' onchange='getAreas()'>"+
            "</select>"+

            "<select class='select' id='areas' name='area_code'>"+

            "</select>" +
            "<span><button type='button' class='btn btn-default' onclick='l()'>保存</button>" +
            "</span>" +
            "</div></div>");
        $.ajax({
            type: 'get',
            url: "/worker-console/queryProvinceAll",
            datatype: 'jsonp',
            success: function (data) {
                var result = eval('(' + data + ')');
                for (var i = 0; i < result.length; i++) {
                    $('#provinces').append("<option value='" + result[i].code + "' >" + result[i].name + "</option>");
                }
            },
            error: function () {
                alert("加载省失败");
            }
        });
    }
    /*加载市下拉选*/
    function getCitys() {
        var id = $("#provinces").val();
        $("#citys").empty();
        $("#areas").empty();
        $.ajax({
            type: "post",
            url: "/worker-console/queryCityByCode",
            datatype: 'jsonp',
            data: {"id": id},
            success: function (data) {
                var result = eval('(' + data + ')');
                $('#citys').append("<option value='' selected='selected' >" + '--请选择--' + "</option>");
                $('#areas').append("<option value='' selected='selected' >" + '--请选择--' + "</option>");
                for (var i = 0; i < result.length; i++) {
                    $('#citys').append("<option value='" + result[i].code + "' >" + result[i].name + "</option>");
                }
            },
            error: function () {
                alert("加载市失败");
            }
        });
    } ;
    /*加载地区下拉选*/
    function getAreas() {
        var id = $("#citys").val();
        $("#areas").empty();
        $.ajax({
            type: "post",
            url: "/worker-console/queryAreaByCode",
            datatype: 'jsonp',
            data: {"id": id},
            success: function (data) {
                var result = eval('(' + data + ')');
                $('#areas').append("<option value='' selected='selected' >" + '请选择' + "</option>");
                for (var i = 0; i < result.length; i++) {
                    $('#areas').append("<option value='" + result[i].code + "' >" + result[i].name + "</option>");
                }
            },
            error: function () {
                alert("加载区失败");
            }
        });
    };
    function l() {
        var procode=$('#provinces').find("option:selected").text();
        var cityCode=$("#citys").find("option:selected").text();
        var areaCode=$('#areas').find("option:selected").text();
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

    };
</script>
</html>

