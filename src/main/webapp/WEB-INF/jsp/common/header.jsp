<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<style type="text/css">
	.cityCon .show{
		display: inline-block;
	}
	.citySel {
		background-color: #56b4f8;
		color: #fff !important;
	}
	#province_code,#city_code,#area_code{
		border:1px solid #ccc;
	}
	.aaa{
		width: 83px;
		height: 35px;
		display: inline-block;
		background-color: #f5f5f5;
		color: #666;
		margin-left: 6px;
		margin-top: 3px;
		line-height: 35px;
		text-align: center;
		cursor: pointer;
		font-size: 13px;
		overflow: hidden;
		cursor: pointer;
	}
	#city{
		font-size: 15px;
		color: red;
	}

</style>

<div class="fiexd" style="z-index:999" >
	<nav style="width: 100%;background: #fff;" >
		<div class="container">
			<div class="top_nav clearfix">
				<div class="address">
					<div class="change_city">
						<em></em>
						<span id="city"></span>
						<span style="color: #fcaf0a;cursor:pointer" onclick="changeCity()">[切换]</span>
					</div>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<div class="change_city">
						<em style="display: inline-block;width: 15px;height: 15px; vertical-align: middle;background: url(../../../resources/images/home/tell.png) no-repeat;background-size: 100% 100%;"></em>
						<span>联系我们</span>
						<%--<a href="javascript:;">0355-8881777</a>--%>
						<a href="tel:010-86466830">010-86466830</a>
					</div>
				</div>
				<div>
					<ul id="nav-login" class="gznaver">

					</ul>
				</div>
			</div>
			<div class="cityCon" id="div" style="display: none">
				<div id="province_code">
					<span class="aaa citySel">省份</span>
				</div>
				<div id="city_code">
					<span class="aaa citySel">城市</span>
				</div>
				<div id="area_code">
					<span class="aaa citySel">区县</span>
				</div>
			</div>
		</div>
	</nav>
	<nav class="navbar" style="margin-bottom: 0;">
		<div class="container">
			<div class="navbar_con">
				<ul>
					<img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/logo2.png"/>
					<li><a href="${pageContext.request.contextPath}/home" class="active">首页</a></li>
					<li><a href="${pageContext.request.contextPath}/w/category">找工人</a></li>
					<%--<li><a href="${pageContext.request.contextPath}">最新活动</a></li>--%>
					<li><a href="${pageContext.request.contextPath}">最新动态</a></li>
					<%--<li><a href="${pageContext.request.contextPath}">用户保障</a></li>--%>
					<li><a href="${pageContext.request.contextPath}/jobs/register">工人入驻</a></li>
					<li><a href="${pageContext.request.contextPath}">城市加盟</a></li>
					<li><a href="${pageContext.request.contextPath}/shop">商城</a></li>
				</ul>
			</div>
		</div>
	</nav>
</div>
<div class="heder_nav">
	<img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/logo2.png" />
	<span>装修帮办专业施工平台</span>

	<button type="button" class=" dropdown-toggle" onclick="show()" style="float: right;border:none;background: #e6a518">
		<span class="glyphicon glyphicon-circle-arrow-down" style="display:block;font-size: 16px;color: #000;line-height: 6rem;">菜单</span>
	</button>
</div>

<div class="collapse as" id="bs-example-navbar-collapse-1">
	<ul>
		<li><a href="${pageContext.request.contextPath}/home" class="active">首页</a></li>
		<li><a href="${pageContext.request.contextPath}/w/category">找工人</a></li>
		<%--<li><a href="${pageContext.request.contextPath}">最新活动</a></li>--%>
		<%--<li><a href="${pageContext.request.contextPath}">最新动态</a></li>--%>
		<%--<li><a href="${pageContext.request.contextPath}">用户保障</a></li>--%>
		<li><a href="${pageContext.request.contextPath}/jobs/register">工人入驻</a></li>
		<li><a href="${pageContext.request.contextPath}">城市加盟</a></li>
		<li><a href="${pageContext.request.contextPath}/shop">商城</a></li>
	</ul>
</div>
<script>

    window.onload = function() {
        var loc = $.cookie("loc");
        if(loc!=null){
            $("#city").text(loc);
        }else {
            $("#city").text("山西省-长治市-市　区");
        }
    }
    function changeCity() {
        $(".cityCon").css("display","inline-block");
        var aDiv = document.getElementById("div").getElementsByTagName("div");
        cityArray = [];
        $.ajax({
            type: 'get',
            url: "/worker-console/queryProvinceAll",
            datatype: 'jsonp',
            success: function (data) {
                $("#province_code,#city_code,#area_code").empty();
                var result = eval('(' + data + ')');
                for (var i = 0; i < result.length; i++) {
                    $('#province_code').append("<span class='aaa' id='" + result[i].code + "'>" + result[i].name + "</span>");
                    var aSpan = $("#province_code").find('span');
                    for(var j=0;j<aSpan.length;j++){
                        aSpan[j].onclick=function(){
                            $(this).addClass("citySel").siblings().removeClass("citySel");
                            cityArray = [];
                            cityArray.push(this.innerHTML);
                            var aSpanId = this.id;
                            getCity(aSpanId);
                        }
                    }
                }
            },
            error: function () {
                alert("加载省失败");
            }
        });
    }
    /*加载市下拉选*/
    function getCity( id) {
        $("#city_code").empty();
        $("#area_code").empty();
        $.ajax({
            type: "post",
            url: "/worker-console/queryCityByCode",
            datatype: 'jsonp',
            data: {"id": id},
            success: function (data) {
                var result = eval('(' + data + ')');
                for (var i = 0; i < result.length; i++) {
                    $('#city_code').append("<span id='" + result[i].code + "' class='aaa' onclick='getArae()' >" + result[i].name + "</span>");
                    var citySpan = $("#city_code").find('span');
                    for(var j=0;j<citySpan.length;j++){
                        citySpan[j].onclick = function(){
                            $(this).addClass("citySel").siblings().removeClass("citySel");
                            cityArray.push(this.innerHTML);
                            var citySpanId = this.id;
                            getArea(citySpanId);
                        }
                    }
                }
            },
            error: function () {
                alert("加载市失败");
            }
        });
    };
    /*加载地区下拉选*/
    function getArea(id) {
        $("#area_code").empty();
        $.ajax({
            type: "post",
            url: "/worker-console/queryAreaByCode",
            datatype: 'jsonp',
            data: {"id": id},
            success: function (data) {
                var result = eval('(' + data + ')');
                for (var i = 0; i < result.length; i++) {
                    $('#area_code').append("<span value='" + result[i].code + "' class='aaa' >" + result[i].name + "</span>");
                    var citySpan = $("#area_code").find('span');
                    for(var j=0;j<citySpan.length;j++){
                        citySpan[j].onclick = function(){
                            $(this).addClass("citySel").siblings().removeClass("citySel");
                            cityArray.push(this.innerHTML);

                            var str = cityArray.join();

                            /*获取地址*/
                            var a = str.replace(/,/g, "-");
                            post("/home",{"location":a});
                            $(".cityCon").css("display","none");
                        }
                    }
                }
            },
            error: function () {
                alert("加载区失败");
            }
        });
    }
    function show(){
        $(".collapse").fadeToggle();
    }
    function post(URL, PARAMS) {
        var temp = document.createElement("form");
        temp.action = URL;
        temp.method = "post";
        temp.style.display = "none";
        for (var x in PARAMS) {
            var opt = document.createElement("textarea");
            opt.name = x;
            opt.value = PARAMS[x];
            temp.appendChild(opt);
        }
        document.body.appendChild(temp);
        temp.submit();
        return temp;
    }

</script>

