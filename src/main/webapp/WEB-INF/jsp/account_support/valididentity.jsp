<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/7/19
  Time: 9:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>账号自助服务</title>
    <%@include file="../common/head.jsp"%>
    <style type="text/css">
        .jumbotron{
            text-align: center;
            color: white;
            background-color: rgba(0,0,0,0.5);
            margin-top: 50px;
        }
        .form-horizontal{
            font-size: 20px;
        }
        .form-horizontal .form-group{
            margin-left: 0;
            margin-right: 0;
        }
        .form-group label{
            font-size: 16px;
        }
        .radio label input{
            width: 20px;
            height: 20px;
        }
        .radio label{
            font-size: 20px;
        }
        .radio label span{
            margin-left: 5px;
        }
        .btn-lg{
            width: 80px;
        }
    </style>
</head>
<body>
<%@include file="../common/header.jsp"%>
<div class="page-wrapper">
    <div style="background-image:url('/resources/images/signinbgi.png');background-repeat: no-repeat;height: 750px;">
        <div class="container">
            <div class="jumbotron">
                <h2>我们需要验证<span id="accountname">${name}</span>的身份</h2>
                <form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/account-support/valicode" method="post">
                    <div class="form-group">
                        <div class="radio">
                            <label>
                                <input type="radio" name="option" value="1">向<span id="valitel"></span>发送短信
                            </label>
                        </div>
                    </div>
                    <div class="form-group" style="margin-top: 20px">
                        <label>
                            <span>若要验证这是否为你的电话号码，请输入最后 4 个数字，然后单击“发送代码”以接收你的代码。</span>

                        </label>
                        <br>
                        <label>
                            <input type="text" name="telnumber" class="form-control" placeholder="电话号码的最后4个数字">
                        </label>

                    </div>
                    <div class="form-group" style="display: none">
                        <label >
                            <input id="a" type="text" name="number" class="form-group" >
                        </label>
                    </div>

                    <a href="${pageContext.request.contextPath}/account/signin" class="btn btn-default btn-lg">取消</a>
                    <button type="submit" class="btn btn-primary btn-lg">发送代码</button>
                </form>
            </div>
        </div>
    </div>
</div>
<%@include file="../common/footer.jsp"%>
</body>
<%@include file="../common/script.jsp"%>
<script type="text/javascript">
    $(function () {
        var $name = $("#accountname").text();
        var $valitel = $("#valitel");
        var $telnumber = $("input[name=telnumber]");
        var $a = $("#a");
        var $b = "";
        var $c = "";
        if($name.length > 0){
            $.ajax({
                url : "/account-support/help/validata",
                data : {
                    "name" : $name
                },
                type : "get",
                success : function (data) {
                    $b = data;
                    $c = $b.substr(7,4);
                    $a.val($b);
                    $b = "*********"+$b.substr(9,2);
                    $valitel.text($b);
                },error : function (xhr) {
                    alert(xhr.status + " " + xhr.statusText);
                }
            });
        }
        $("form").submit(function () {
            if(valiTel() === false){
                return false;
            }
            if(a() === false){
                return false;
            }
            if(!$("input[name=option]").prop('checked')){
                return false;
            }
        });

        function valiTel() {
            var a = $telnumber.val();
            if(a.length !== 4){
                $telnumber.val("");
                $telnumber.attr("placeholder","号码的最后4个数字");
                return false;
            }else if(a === $c){
                return true;
            }else {
                $telnumber.val("");
                $telnumber.attr("placeholder","号码的最后4个数字");
                return false;
            }
        }
        function a() {
            var a = $a.val();
            if(a.length !== 11){
                return false;
            }
        }
    });
</script>
</html>
