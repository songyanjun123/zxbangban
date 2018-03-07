<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/tag.jsp"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
	<%@include file="common/head.jsp"%>
	<style>
		.citybox{
			margin: 30px auto;
		}
		.citybox a{
			cursor: pointer;
		}
		.citybox .entrance{
			display: block;
			background: #2E84D9;
			width: 400px;
			height: 50px;
			color: white;
			font-size: 25px;
			line-height: 50px;
			text-align: center;
			border-radius: 25px;
			margin: 20px auto;
		}
		#citysearch{
			font-size:20px;
			line-height: 30px;
			height: 30px;
			text-align: center;
			margin-bottom: 20px;
		}
		#citysearch>select{
			width: 200px;
		}
		#citysearch>input[type=button]{
			background: #2E84D9;
			color: white;
			border: none;
			border-radius: 10px;
			width: 50px;
			height: 30px;
		}
		#clist{

		}
		#clist>.quyu{
			color: #999;
			width: 1200px;
			line-height: 34px;
			height: 34px;
			padding-left: 2px;
			font-size: 16px;
			clear: none;
		}
		#clist>.quyu>span{
			padding-right:10px;
			background: white;
		}
		#clist > div + div{
			border-top: 1px solid #eee;
		}
		#clist dt{
			color: #545454;
			display: inline-block;
			vertical-align:top;
			width: 125px;
			font-family: Arial, Helvetica, sans-serif;
			font-size: 14px;
			line-height: 20px;
			clear: both;
			font-weight: bold;
			margin: 0;
			padding: 3px 0 3px 4px;
		}
		#clist dd{
			width: 1040px;
			display: inline-block;
			margin-left: 0px;
			padding: 3px 0;
		}
		#clist dd>a{
			display: inline-block;
			font-size: 14px;
			line-height: 20px;
			margin-right: 14px;
			white-space: nowrap;
			text-decoration: none;
			display: inline-block;
		}
		#clist dd>a.disable{
			color: #ccc;
		}

	</style>
</head>
<body>

<dl id="clist" avalonctrl="city">
	<dt class="quyu"><span>全部城市</span></dt>
	<div id="aa">

	</div>


</dl>

</body>
<%@include file="common/script.jsp"%>
<script type="text/javascript">
	$(function(){

		$.ajax({
			type: 'get',
			url: "/worker-console/queryProvinceAll",
			datatype: 'jsonp',
			success: function (data) {
				var result = eval('(' + data + ')');
				for(var i=0;i<result.length;i++){
					$("#aa").append("<dt>"+result[i].name+"</dt>");
				}
			}
		});
        $.ajax({
            type: 'get',
            url: "/worker-console/queryCityByCode",
            datatype: 'jsonp',
            success: function (data) {
                console.log(data)

            }
        });
	});
</script>
</html>