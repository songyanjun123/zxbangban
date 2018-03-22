<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>入驻工人申请 | 装修帮办服务平台</title>
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0">
    <%@include file="../common/head.jsp"%>
    <STYLE type="text/css">
        .jumbotron{

            margin-top: 50px;

            text-align: center;

        }
        form{
            margin: 0 auto;
        }
        .time_mar{
            margin-left:26px;
        }
        .condit{
            border:1px solid #ccc;
            text-align: left;
            font-size:14px;
            padding:10px;

        }

        .sss{
            display: none;
        }
        .aas h4{
            display: inline-block;
            width:20%;
            font-size:25px;
            line-height: 30px;
        }
        .aas input{
            height:30px;
            width:60%;
        }
        .aas select{
            height:30px;
            width:60%;
        }
        .aas input[type="date"]{
            width:28%;
        }
        @media screen and (max-width:660px) {
            .btn-submit{
                margin-left:0;
                margin-top:10px;
                margin-bottom:10px;
            }
            .inline{
                display: block;
            }
            .jumbotron .condit{
                border:1px solid #ccc;
                text-align: left;
                font-size:14px;
                height:20rem;
            }
            .sss{
                display: inline-block;
            }
        }
    </STYLE>
</head>
<body>
<%@include file="../common/header.jsp"%>
<div class="page-wrapper">
    <div class="container-fluid" style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/workerregisterbgi.png');background-repeat: no-repeat;height: 750px ">
        <div class="container">
            <div class="row clearfix">
                <div class="col-md-8 col-md-offset-2 column">
                    <div class="jumbotron row">
                        <h2 style="color: black">工程订单案例添加</h2><br/>
                        <form  action="/worker-console/saveDes" method="post" style="text-align: left"  name="form" onSubmit="return beforeSubmit(this);">

                            <input type="hidden" name="wid" value="${wid}" >
                            <div class="col-md-12 aas">
                                <h4 class="inline" >小区：</h4><input type="text" name="local" placeholder="例：长治市富馨小区"/>
                            </div>
                            <div class="col-md-12 aas">
                                <h4 class="inline" >时间：</h4><input type="date" width="60px" name="start" class="start" ><br class="sss" /> 到：<input type="date" width="60px" name="end">
                            </div>
                            <div class="col-md-12 aas">
                                <h4 class="inline">面积：</h4><input type="text" name="area" /> m²
                            </div>
                            <div class="col-md-12 aas">
                                <h4 class="inline">报价：</h4><input type="text" name="price" placeholder="8-10万"/>
                            </div>
                            <div class="col-md-12 aas">
                                <h4 class="inline">施工方式：</h4>
                                <select name="mode" >
                                    <option value="清包">清包</option>
                                    <option value="半包">半包</option>
                                    <option value="大包">大包</option>
                                    <option value="整装">整装</option>
                                </select>

                            </div>
                            <div class="col-md-12 aas">
                                <h4 class="inline" >当前状态：</h4><select name="state"><option value="已完成">已完成</option><option value="进行中">进行中</option></select>
                            </div>
                             <input type="submit" value="提交" class="btn btn-success btn-lg btn-submit">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="../common/footer.jsp"%>
</body>
<%@include file="../common/script.jsp"%>
<script type="text/javascript">
    $(function(){
        var clientWidth = document.body.clientWidth || document.documentElement.clientWidth;
        if(clientWidth <= 600){
            $("#textarea").attr("cols",27);
            $("#textarea").attr("rows",8);
        }
    })
    function  beforeSubmit(form) {
        if(form.local.value==''){
            alert('小区名不能为空！');
            form.local.focus();
            return false;
        }
        if(form.start.value==''){
            alert('时间不能为空！');
            form.start.focus();
            return false;
        }
        if(form.end.value==''){
            alert('时间不能为空！');
            form.end.focus();
            return false;
        }
        if(form.area.value==''){
            alert('面积不能为空！');
            form.area.focus();
            return false;
        }
        if(form.price.value==''){
            alert('价格名不能为空！');
            form.price.focus();
            return false;
        }
    }
</script>
</html>