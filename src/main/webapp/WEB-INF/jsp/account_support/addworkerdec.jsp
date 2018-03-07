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

        .inline{
            display: inline-block;
            font-size: 25px;
        }
        .sss{
            display: none;
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
                    <div class="jumbotron">
                        <h2 style="color: black"></h2><br/>
                        <form  action="/worker-console/saveDes" method="post" style="text-align: left">
                            <input type="hidden" name="wid" value="${wid}">
                            <h3 class="inline">工程：</h3>
                            <select name="project">
                                <c:forEach begin="1" end="10" step="1" var="temp">
                                    <option value="工程${temp}">工程${temp}</option>
                                </c:forEach>
                            </select><br/>
                            <h3 class="inline" >时间：</h3>
                            从：<input type="date" width="60px" name="start" class="start" ><br class="sss" />到：<input type="date" width="60px" name="end">
                            <h3 style="font-size: 25px;vertical-align: top">工程描述：</h3>
                            <textarea contenteditable="true" rows="8" cols="65" name="desc" id="textarea" class="condit" style="text-indent: 0;resize: none"></textarea>
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
</script>
</html>