<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/7/19
  Time: 16:28
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
        }
    </style>
</head>
<body>
<%@include file="../common/header.jsp"%>
<div class="page-wrapper">
    <div style="height: 750px;">
        <div class="container">
            <div class="jumbotron">
                <h2>已恢复你的账号</h2>
                <span>现在你可以使用新的安全信息登录到你的账户。</span>
                <div class="" style="margin-top: 20px">
                    <a href="${pageContext.request.contextPath}/account/signin" class="btn btn-success btn-lg ">下一步</a>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="../common/footer.jsp"%>
</body>
<%@include file="../common/script.jsp"%>

</html>