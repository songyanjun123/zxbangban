<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/5/24
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>工人入驻申请成功 | 装修帮办服务平台</title>
    <%@include file="common/head.jsp"%>
    <style type="text/css">
        .jumbotron{
            background-color: rgba(0,0,0,0.3);
            margin-top: 50px;
        }
			#upBox{
				text-align: center;
				width:100%;
				padding: 20px;
				border: 1px solid #666;
				margin: auto;
				margin-top: 50px;
				margin-bottom:50px;
				position: relative;
				border-radius: 10px;
	
	
			}
			#inputBox{
				width: 100%;
				height: 40px;
				border: 1px solid cornflowerblue;
				color: cornflowerblue;
				border-radius: 20px;
				position: relative;
				text-align: center;
				line-height: 40px;
				overflow: hidden;
				font-size: 16px;
			}
			#inputBox input{
				width: 114%;
				height: 40px;
				opacity: 0;
				cursor: pointer;
				position: absolute;
				top: 0;
				left: -14%;
	
			}
			#imgBox{
				text-align: left;
			}
			.imgContainer{
				display: inline-block;
				width: 32%;
				height: 300px;
				margin-left: 1%;
				border: 1px solid #666666;
				position: relative;
				margin-top: 30px;
				box-sizing: border-box;
			}
			.imgContainer img{
				width: 100%;
				height: 100%;
				cursor: pointer;
			}
			.imgContainer p{
				position: absolute;
				bottom: -1px;
				left: 0;
				width: 100%;
				height: 30px;
				background: black;
				text-align: center;
				line-height: 30px;
				color: white;
				font-size: 16px;
				font-weight: bold;
				cursor: pointer;
				display: none;
			}
			.imgContainer:hover p{
				display: block;
			}
			#btn{
				display: inline-block;
				text-align: center;
				line-height: 30px;
				outline: none;
				width: 100px;
				height: 30px;
				background: cornflowerblue;
				border: 1px solid cornflowerblue;
				color: white;
				cursor: pointer;
				margin-top: 30px;
				border-radius: 5px;
			}
			
    </style>

</head>
<body>
<%@include file="common/header.jsp"%>
<div class="page-wrapper">
    <div style="background-image: url('https://zxbangban.oss-cn-beijing.aliyuncs.com/registersuccess.png');height: 750px">
        <div class="container">
        	<div class="jumbotron">
            <!--<h2 style="color: green">工人入驻资质申请成功！</h2>-->
            <h2 style="color: #FFF">请完善您的资料进行认证</h2>
        	</div>
        	<form id="upBox">
                <h2>请上传您的工程效果图</h2>
                <div id="inputBox">
                    <input type="file" title="请选择图片" id="file" multiple accept="image/png,image/jpg,image/gif,image/JPEG,video/*" capture="camera" />点击选择图片
                </div>
                <div id="imgBox"></div>
                <a id="btn">上传</a>
            </form>
        </div>
    </div>
</div>
<%@include file="common/footer.jsp"%>
</body>
<%@include file="common/script.jsp"%>
<script src="../../resources/js/up.js"></script>
<script type="text/javascript">
  imgUpload({
		inputId:'file', //input框id
		imgBox:'imgBox', //图片容器id
		buttonId:'btn', //提交按钮id
		//upUrl:'../../resource/js/a.js',  //提交地址
		data:'file1', //参数名
		num:"5"//上传个数
	})
</script>
</html>
