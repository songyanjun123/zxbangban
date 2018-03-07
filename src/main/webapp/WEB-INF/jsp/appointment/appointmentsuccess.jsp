<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/7/14
  Time: 17:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>免费预约成功</title>
    <%@include file="../common/head.jsp"%>
    <style type="text/css">
        .jumbotron{
            background-color: rgba(0,0,0,0.3);
            margin-top: 50px;
            color: white;
        }
    </style>
</head>
<body>
<%@include file="../common/header.jsp"%>
<div class="page-wrapper">
    <div style="background-image: url('https://zxbangban.oss-cn-beijing.aliyuncs.com/appointmentsuccessbgi.png');height: 750px">
        <div class="container">
            <div class="jumbotron">
                <h3><span class="glyphicon glyphicon-ok" style="color: #e48632"></span>&nbsp;&nbsp;${msg}</h3>
                <p>感谢您的参与，我们的工作人员会尽快联系您！</p>
            </div>
            <div style="width: 100%; text-align: center;">
                <button type="button" class="btn btn-primary">返回首页</button>
            </div>
        </div>
    </div>
</div>
<%@include file="../common/footer.jsp"%>
</body>
<%@include file="../common/script.jsp"%>
<script type="text/javascript">
    var djs=11;
    var $jumbotron=$(".jumbotron");
    var $btn=$(".btn");
    $(function(){
        var ss= setInterval(function(){
            djs--;
            $jumbotron.html(" <h3><span class='glyphicon glyphicon-ok' style='color: #e48632'></span>&nbsp;&nbsp;${msg}</h3><p>感谢您的参与，我们的工作人员会尽快联系您！</p>");
            $jumbotron.append("<p>"+djs+"秒后自动返回首页</p>");
            if(djs===0){
                clearTimeout(ss);
                location.href="/home";
            }
        },1000);

        $btn.click(function(){
            clearTimeout(ss);
            location.href="/home";
        });
    });
</script>
</html>
