<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/7/19
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>账号自助服务|</title>
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
            margin-top: 15px;
        }
        .form-horizontal .form-group{
            margin-left: 0;
            margin-right: 0;
        }
        .form-group label{
            font-size: 16px;
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
                <h2>验证你的身份</h2>
                <span>如果你填写的信息与账号上说留的手机号码最后4位匹配，我们将向你发送验证码。</span>
                <form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/account-support/setpassword" method="post">
                    <div class="form-group">
                        <label>
                            <input type="text" name="code" class="form-control" placeholder="输入验证码">
                        </label>

                    </div>
                    <div class="form-group" style="display: none">
                        <span id="c">${code}</span>
                    </div>
                    <a href="${pageContext.request.contextPath}/account/signin" class="btn btn-default btn-lg">取消</a>
                    <button type="submit" class="btn btn-primary btn-lg">下一步</button>
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
        $("form").submit(function () {
            if(valicode() === false){
                return false;
            }
        });
        var $a = $("#c").text();
        var $b = $("input[name=code]");

        function valicode() {
            if($a.length === 0){
                return false;
            }else if($b.val() === 0){
                return false;
            }else return $a === $b.val();

        }

    });
</script>
</html>
