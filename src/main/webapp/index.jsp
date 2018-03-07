<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>装修帮办-装修找帮办,省钱又省心</title>
    <%@include file="WEB-INF/jsp/common/head.jsp" %>
</head>
<body onload="getOnload()">
<%--<h1>正在加载.....</h1>--%>
</body>
<script>
    function getOnload() {
        window.location.href='${pageContext.request.contextPath}/home';
    }
</script>
</html>
