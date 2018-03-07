<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/7/19
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>账号自助服务|重置你的密码</title>
    <%@include file="../common/head.jsp"%>
    <style type="text/css">
        .jumbotron{
            text-align: center;
            color: white;
            background-color: rgba(0,0,0,0.5);
            margin-top: 50px;
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
                <h2>重置你的密码</h2>
                <form class="bs-example bs-example-form" role="form" action="${pageContext.request.contextPath}/account-support/newpassword" method="post">
                    <br>
                    <div class="input-group input-group-lg" style="margin-bottom: 20px">
                        <span class="input-group-addon">密码</span>
                        <input type="password" class="form-control" placeholder="请输入密码" name="password">
                    </div>
                    <div class="input-group input-group-lg" style="margin-bottom: 20px">
                        <span class="input-group-addon">确认密码</span>
                        <input type="password" class="form-control" placeholder="请再次输入密码" name="repassword">
                    </div>
                    <div class="input-group input-group-lg" style="margin-bottom: 20px">
                        <span class="input-group-btn">
                            <button type="submit" class="btn btn-primary btn-lg btn-block" >下一步</button>
                        </span>
                    </div>
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

            if(a() === false || a() === undefined){
                return false;
            }
        });

        var $password = $("input[name=password]");
        $password.blur(function () {
            b();

        });

        var $repassword = $("input[name=repassword]");
        $repassword.blur(function () {
            b();
            c();
        });

        function b() {

            var $temp = $password.val();
            var $passwordregular1 = /^\s*$/g;
            var $passwordregular2 = /[A-Za-z].*[0-9]|[0-9].*[A-Za-z]/;
            if($temp.length === 0){
                $password.val("");
                $password.attr("placeholder",errorInfo.PASSWORD_TOO_EMPTY);
                return false;
            }
            if($temp.length < 6){
                $password.val("");
                $password.attr("placeholder",errorInfo.PASSWORD_PAIR_SHORT);
                return false;
            }
            if($temp.length > 16){
                $password.val("");
                $password.attr("placeholder",errorInfo.PASSWORD_TOO_LONG);
                return false;
            }
            if($passwordregular1.test($temp)){
                $password.val("");
                $password.attr("placeholder",errorInfo.PASSWORD_CANNOT_BE_BLANK);
                return false;
            }
            if(!($passwordregular2.test($temp))){
                $password.val("");
                $password.attr("placeholder",errorInfo.THE_PASSWORD_HAS_NO_LETTERS);
                return false;
            }
            return true;
        }
        function c() {
            var $temp = $repassword.val();
            var $repasswordregular1 = /^\s*$/g;
            var $repasswordregular2 = /[A-Za-z].*[0-9]|[0-9].*[A-Za-z]/;
            if($temp.length === 0){
                $repassword.val("");
                $repassword.attr("placeholder",errorInfo.PASSWORD_TOO_EMPTY);
                return false;
            }
            if($temp.length < 6){
                $repassword.val("");
                $repassword.attr("placeholder",errorInfo.PASSWORD_PAIR_SHORT);
                return false;
            }
            if($temp.length > 16){
                $repassword.val("");
                $repassword.attr("placeholder",errorInfo.PASSWORD_TOO_LONG);
                return false;
            }
            if($repasswordregular1.test($temp)){
                $repassword.val("");
                $repassword.attr("placeholder",errorInfo.PASSWORD_CANNOT_BE_BLANK);
                return false;
            }
            if(!($repasswordregular2.test($temp))){
                $repassword.val("");
                $repassword.attr("placeholder",errorInfo.THE_PASSWORD_HAS_NO_LETTERS);
                return false;
            }
            return true;
        }

        function a() {
            var $temp1 = $password.val();
            var $temp2 = $repassword.val();

            if($temp1 !== $temp2){
                $repassword.val("");
                $repassword.attr("placeholder",errorInfo.THE_PASSWORD_FOR_THE_TWO_TIME_IS_INCONSISTENT);
                return false;
            }
            if(c() && b() && $temp1 === $temp2){
                return true;
            }
        }

        var errorInfo = {
            PASSWORD_PAIR_SHORT: "密码不能小于6位！",
            PASSWORD_TOO_LONG: "密码不能大于16位！",
            PASSWORD_TOO_EMPTY: "密码不能为空！",
            THE_PASSWORD_HAS_NO_LETTERS: "密码中必须同时有字母和数字！",
            PASSWORD_CANNOT_BE_BLANK: "密码中不能有空格！",
            THE_PASSWORD_FOR_THE_TWO_TIME_IS_INCONSISTENT: "两次输入密码不一致！",
            PASSWORD_CANNOT_BE_EQUAL_TO_USERNAME: "密码不能和用户名一样哦！"
        };

    });
</script>
</html>
