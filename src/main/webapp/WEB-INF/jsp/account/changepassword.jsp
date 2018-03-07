<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/8/10
  Time: 15:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>装修帮办账号|主页</title>
    <%@include file="../common/head.jsp" %>
    <script type="text/css">
        .jumbotron h2 img {
            background-color: #cccccc;
        }
    </script>
</head>
<body>
<%@include file="../common/header.jsp" %>
<div class="page-wrapper">
    <div class="">
        <div class="container">
            <div class="row clearfix">
                <div class="col-md-4 col-sm-4 col-xs-12 column">
                    <div class="jumbotron">
                        <h2><img src="${headimg}" class="img-circle img-responsive"/></h2>
                        <h1><span style="margin-left: 15px">${uid}</span></h1>
                    </div>
                </div>
                <div class="col-md-8 col-sm-8 col-xs-12 column">
                    <div class="jumbotron">
                        <form class="form" role="form" action="${pageContext.request.contextPath}/my-account/updatepassword" method="post" style="width: 100%;padding-top: 50px;">
                            <div class="input-group" style="margin-bottom: 10px">
                                <span class="input-group-addon">旧密码</span>
                                <input type="password" class="form-control" name="oldpassword" placeholder="${msg}">
                            </div>
                            <div class="input-group" style="margin-bottom: 10px">
                                <span class="input-group-addon">新密码</span>
                                <input type="password" class="form-control" name="password">
                            </div>
                            <div class="input-group" style="margin-bottom: 10px">
                                <span class="input-group-addon">新密码确认</span>
                                <input type="password" class="form-control" name="repassword">
                            </div>
                            <button type="submit" class="btn btn-info btn-block">提交修改</button>
                        </form>

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
    $(function () {
        $("form").submit(function () {

            if(a() === false || a() === undefined){
                return false;
            }
        });
        
        var $oldpassword = $("input[name=oldpassword]");
        $oldpassword.blur(function () {
            d();
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
            var $temp3 = $oldpassword.val();

            if($temp1 !== $temp2){
                $repassword.val("");
                $repassword.attr("placeholder",errorInfo.THE_PASSWORD_FOR_THE_TWO_TIME_IS_INCONSISTENT);
                return false;
            }
            if($temp1 === $temp3){
                $repassword.val("");
                $repassword.attr("placeholder",errorInfo.OLD_PASSWORD_CANNOT_BE_NEW_PASSWORD);
                return false;
            }
            if(c() && b() && $temp1 === $temp2 && $temp1 !== $temp3){
                return true;
            }
        }
        function d() {
            var $temp = $oldpassword.val();
            if($temp.length === 0){
                $oldpassword.val("");
                $oldpassword.attr("placeholder",errorInfo.PASSWORD_TOO_EMPTY);
                return false;
            }
            return true;
        }
        var errorInfo = {
            PASSWORD_PAIR_SHORT: "密码不能小于6位！",
            PASSWORD_TOO_LONG: "密码不能大于16位！",
            PASSWORD_TOO_EMPTY: "密码不能为空！",
            THE_PASSWORD_HAS_NO_LETTERS: "密码中必须同时有字母和数字！",
            PASSWORD_CANNOT_BE_BLANK: "密码中不能有空格！",
            THE_PASSWORD_FOR_THE_TWO_TIME_IS_INCONSISTENT: "两次输入密码不一致！",
            PASSWORD_CANNOT_BE_EQUAL_TO_USERNAME: "密码不能和用户名一样哦！",
            OLD_PASSWORD_CANNOT_BE_NEW_PASSWORD : "新旧密码不能一致"
        }});
</script>
</html>
