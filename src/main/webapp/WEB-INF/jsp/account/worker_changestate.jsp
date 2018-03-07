<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/7
  Time: 17:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common/tag.jsp" %>
<html>
<head>
    <title>工人服务平台</title>
    <%@include file="../common/head.jsp"%>
    <STYLE type="text/css">
        .jumbotron{
            background-color: rgba(0,0,0,0.5);
            margin-top: 50px;
            color: white;
            text-align: center;
        }
        form{
            margin: 0 auto;
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
                    <div class="jumbotron">
                        <h2 style="color: white">平台工人信息</h2>

                        <form class="bs-example bs-example-form" role="form"
                              action="${pageContext.request.contextPath}/w/statesave" method="post">

                            <c:set var="w" scope="page" value="${workerinfo}"/>
                            <input type="hidden" name="wid" value="${w.workerId}">
                            <div class="input-group input-group-lg">
                                <span class="input-group-addon" style="margin-bottom: 10px">姓名</span>
                                <span class="input-group-addon" style="margin-bottom: 10px">${w.name}</span>
                            </div>
                            <br>
                            <div class="input-group input-group-lg" style="margin-bottom: 20px">

                                    <span class="input-group-addon">状体
                                    <c:set var="state" value="${w.state}"/>
                                    </span>
                                <select name="state" class="form-control">
                                    <option value="true" selected="selected"  >施工中</option>
                                    <option value="false" selected="selected" >可预约</option>
                                </select>
                            </div>
                            <div class="input-group input-group-lg" style="margin-bottom: 20px">
                                    <span class="input-group-btn">
                                        <input type="submit"  class="btn btn-success btn-block" value="提交"/>
                                    </span>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="../common/footer.jsp"%>
</body>
</html>
