<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/4/19
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/tag.jsp" %>
<!DOCTYPE html>
<html>

	<head>
		<title>工长介绍</title>
		<%@include file="common/head.jsp" %>
		<link rel="stylesheet" type="text/css" href="../../resources/css/foreman.css" />
	</head>

	<body>
		<%@include file="common/header.jsp" %>
		<div class="page-wrapper">
			<div class="gz-layout clear" style="background:#f9f9f9;">
					<div class="gz-250">
						<div class="ngz-gzphoto"><img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/541508293209091.png?x-oss-process=style/headimg"></div>
						<a href="javascript:void(0);" class="J_callForeman ngz-yybtn" data-token="hnqi3IR3pa5_fHGrs3aslQ" data-foremanid="6814" data-foremanname="王兴旺">预约我免费报价</a>
						<i class="ngz-call">010-86466830</i>
					</div>
					<div class="gz-716">
						<div class="ngz-about-w" style="width:290px;">
							<div class="ngz-xm-w">
								<h1>蓝宝石装潢装饰：贾晓飞</h1><i class="level-02"></i>高级施工队</div>

							<p style="width: 135px;margin-top:10px;">出身工种：木工</p>
							<p style="width: 135px;margin-left:5px;margin-top:10px;">从业：10年以上</p>
							<p>成立时间：2010年3月</p>
						</div>
						<div class="ngz-about-w" style="width: 245px;">
							<p><i class="ngz-ico-qd"></i>签单总数：<span>0</span></p>
							<p><i class="ngz-ico-yy"></i>预约总数：<span id="total">0</span></p>
							<p><i class="ngz-ico-jg"></i>人数：<span>0</span></p>
						</div>
						<div class="ngz-about-w" style="width: 175px;border: 0;">
							<p style="width: 100%;"><i class="ngz-ico-jl"></i>接受装修第三方监管</p>
							<p style="width: 100%;"><i class="ngz-ico-zb"></i>售后：整体2年，水电5年</p>
						</div>
						<h3 class="clear">擅长风格</h3>
						<div class="no-yx">现代简约、恬淡田园、新中式、欧式古典、地中海、混搭</div>

						<h3 class="clear">擅长工艺</h3>
						<div class="no-yx">大型工装、复杂造型、水电改造、木工制造</div>
						<h3 class="clear">施工队介绍</h3>
						<p class="about">施工队现共18人，自2012年真是成立以来，队伍不断壮大，目前已经配备所有的装修施工工种，包括水电工、防水工、贴砖工，吊顶共、木工、油工等，经过多年的配合，队伍内部配合默契，是个高效又高质的队伍，目前对现代简约、欧式、美式、中式和混搭的风格装修都非常擅长。</p>
					</div>
				</div>
			<div class="gz-layout clear" style="margin-top: 22px;">
				<div class="gz-250">
					<div class="ngz-border clear">
						<div class="ngz-tit">
							<h2>预约我的业主</h2><span>共<i>2</i>人</span></div>
						<ul class="ngz-my-yz" id="total_num">
							<li>
								<div class="name">张先生</div>
								<div class="address ellipsis">西南关</div>
								<div class="date">12-28</div>
							</li>
							<li>
								<div class="name">李先生</div>
								<div class="address ellipsis">幸福家园</div>
								<div class="date">12-19</div>
							</li>
						</ul>
					</div>

				</div>
				<div class="gz-716">
					<div class="ngz-border clear">
						<div class="ngz-tit">
							<h2>我的最新订单</h2>
							<a href="/foreman-6814/tender">更多&gt;&gt;</a>
						</div>
						<dl class="ngz-new-dd">
							<dt style="width: 80px;">业主</dt>
							<dt style="width: 262px;">小区</dt>
							<dt style="width: 90px;">面积</dt>
							<dt style="width: 100px;">户型</dt>
							<dt style="width: 120px;">报价</dt>
							<!--<dt style="width: 80px;">时间</dt>-->
							<!--循环区域-->
							<dd style="width: 80px;">李女士</dd>
							<dd style="width: 262px;">幸福家园</dd>
							<dd style="width: 90px;">100㎡</dd>
							<dd style="width: 100px;">2室1厅1卫</dd>
							<dd style="width: 120px;">8-10万</dd>
							<!--<dd style="width: 80px;">2017-12-19</dd>-->
							<!--循环区域-->

						</dl>
						<div class="clear"></div>
					</div>
					<div class="ngz-border" style="padding-bottom: 20px; margin-top: 22px;">
						<motempty name="construction">

							<div class="ngz-tit">
								<h2>工地案例</h2>
								<a href="/foreman-6814/sites">更多&gt;&gt;</a>
							</div>
							<!--工地案例循环部分开始-->

							<img src="http://zxbangban.oss-cn-beijing.aliyuncs.com/effect/bies/01/01_cant.jpg?x-oss-process=style/style" width="220" height="165" alt="">

							<img src="http://zxbangban.oss-cn-beijing.aliyuncs.com/effect/bies/01/01_cant.jpg?x-oss-process=style/style" width="220" height="165" alt="">


							<img src="http://zxbangban.oss-cn-beijing.aliyuncs.com/effect/bies/01/01_cant.jpg?x-oss-process=style/style" width="220" height="165" alt="">

							<img src="http://zxbangban.oss-cn-beijing.aliyuncs.com/effect/bies/01/01_cant.jpg?x-oss-process=style/style" width="220" height="165" alt="">

							<!--工地案例循环部分开始-->
						</motempty>
					</div>
				</div>
			</div>
			<div style="clear: both"></div>
		</div>
		<%@include file="common/footer.jsp" %>
	</body>
	<%@include file="common/script.jsp" %>
	<script type="text/javascript">
		/*预约总数*/
		var total_num = document.getElementById("total_num").getElementsByTagName("li").length;
		total.innerHTML = total_num;
	</script>
</html>