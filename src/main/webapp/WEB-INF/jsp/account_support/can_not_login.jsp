<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/7/18
  Time: 11:07
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
        .radio label input{
            width: 20px;
            height: 20px;
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
                    <h2>无法登陆？</h2>
                    <form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/account-support/reset" method="post">
                        <div class="form-group">
                            <div class="radio">
                                <label>
                                    <input type="radio" name="option" value="1"><span>忘记密码了。</span>
                                </label>
                            </div>
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
            if(!$("input[name=option]").prop('checked')){
                return false;
            }
        });
    });
</script>
</html>
