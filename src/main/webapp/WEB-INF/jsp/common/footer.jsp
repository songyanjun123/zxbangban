<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/4/27
  Time: 11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style type="text/css">
	p{
		text-indent:0;
	}
	.center_img p{
		text-align: center;
	}
</style>
<div id="footer">

	<div class="conten">
			<div class="container">
				<div class=" row">
					<ul class="col-md-2 col-xs-6 col-sm-3 ">
						<li><h3>官方商城</h3></li>
						<li><a href="">我的订单</a></li>
						<li><a href="">工人信息</a></li>
						<li><a href="${pageContext.request.contextPath}/contact_us" target="_blank">联系我们</a></li>
					</ul>
					<ul class="col-md-2 col-xs-6 col-sm-3 ">
						<li><h3>账户</h3></li>
						<li><a href="${pageContext.request.contextPath}/my-account/center" target="_blank">管理你的账户</a></li>
						<li><a href="">协议与合同</a></li>
						<li><a href="${pageContext.request.contextPath}/termsofuse" target="_blank">服务条款</a></li>
					</ul>
					<ul class="col-md-2 col-xs-6 col-sm-3 ">
						<li><h3>价值观</h3></li>
						<li><a href="">公司责任</a></li>
						<li><a href="${pageContext.request.contextPath}/privacy" target="_blank">隐私</a></li>
					</ul>
					<ul class="col-md-2 col-xs-6 col-sm-3 ">
						<li><h3>公司</h3></li>
						<li><a href="${pageContext.request.contextPath}/join" target="_blank">招贤纳士</a></li>
						<li><a href="${pageContext.request.contextPath}/about-us" target="_blank">关于我们</a></li>
						<li><a href="">公司新闻</a></li>
					</ul>
					<ul class="col-md-2 col-xs-12 col-sm-3 center_img ">
						<li><h3 style="text-align: center;">公众号</h3></li>
						<li style="text-align: center;">
							<span>
								<img src="https://zxbangban.com/resources/images/common/QR_2.jpg"/>
							</span>
						</li>
						<li><p>扫一扫关注二维码</p></li>
					</ul>
				</div>
				<div class="foot_link">
					<p>友情链接：<a href="http://www.bootcss.com" target="_blank">Bootstrap中文网</a>&nbsp;&nbsp;<a href="http://glyphicons.com/" target="_blank">Glyphicors</a>&nbsp;&nbsp;<a href="">中文</a>
						</p>
					<p>
						<a href="${pageContext.request.contextPath}/contact_us" target="_blank">联系我们</a>&nbsp;&nbsp;
						<a href="${pageContext.request.contextPath}/privacy" target="_blank">隐私</a>&nbsp;&nbsp;
						<a href="${pageContext.request.contextPath}/termsofuse" target="_blank">使用条款</a>&nbsp;&nbsp;
						<a href="">关于我们的广告</a>&nbsp;&nbsp;
					</p>
					<p>
						<span>京ICP备17027517号-1&nbsp; Copyright&nbsp; © &nbsp;2017 北京三维家装饰工程管理有限公式 &nbsp;&nbsp;版权所有</span>
					</p>
				</div>
				
			</div>
		</div>
</div>