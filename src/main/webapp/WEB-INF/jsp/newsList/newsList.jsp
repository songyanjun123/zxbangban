
<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/4/29
  Time: 14:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common/tag.jsp"%>
<!doctype html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title>公司动态 | 装修帮办服务平台</title>
    <link rel="stylesheet" href="../../../resources/css/newsList.css">
    <%@include file="../common/head.jsp"%>
</head>

<body class="user-select">
<%@include file="../common/header.jsp"%>
<div class="page-wrapper">
    <section class="container">
    <div class="content-wrap">
        <div class="content">
            <div class="title">
                <h3 style="line-height: 1.3">公司动态</h3>
            </div>

            <article class="excerpt excerpt-2">
                <a class="focus" href="${pageContext.request.contextPath}/newsDetails" title="" target="_blank">
                    <img class="thumb" data-original="../../../resources/images/news/ccc.jpg" src="../../../resources/images/news/ccc.jpg" alt="标题一"  style="display: inline;">
                </a>
                <header>
                    <a class="cat" href="${pageContext.request.contextPath}/newsDetails" title="123" >公司动态<i></i></a>
                    <h2><a href="${pageContext.request.contextPath}/newsDetails" title="" target="_blank">新闻标题da1</a></h2>
                </header>
                <p class="meta">
                    <time class="time"><i class="glyphicon glyphicon-time"></i> 2016-10-14</time>
                    <span class="views"></span> <a class="comment" href="##comment" title="评论" ></a></p>
                <p class="note">新闻大盛世嫡妃大概地方发过火规范化感觉工会经费回家等等等</p>
            </article> <article class="excerpt excerpt-2">
            <a class="focus" href="${pageContext.request.contextPath}/newsDetails" title="" target="_blank">
                <img class="thumb" data-original="../../../resources/images/news/ccc.jpg" src="../../../resources/images/news/ccc.jpg" alt="标题一"  style="display: inline;">
            </a>
            <header>
                <a class="cat" href="${pageContext.request.contextPath}/newsDetails" title="123" >公司动态<i></i></a>
                <h2><a href="${pageContext.request.contextPath}/newsDetails" title="" target="_blank">新闻标题1</a></h2>
            </header>
            <p class="meta">
                <time class="time"><i class="glyphicon glyphicon-time"></i> 2016-10-14</time>
                <span class="views"></span> <a class="comment" href="##comment" title="评论" ></a></p>
            <p class="note">新闻内容</p>
        </article>
            <%--<nav class="pagination" style="display: none;">--%>
                <%--<ul>--%>
                    <%--<li class="prev-page"></li>--%>
                    <%--<li class="active"><span>1</span></li>--%>
                    <%--<li><a href="?page=2">2</a></li>--%>
                    <%--<li class="next-page"><a href="?page=2">下一页</a></li>--%>
                    <%--<li><span>共 2 页</span></li>--%>
                <%--</ul>--%>
            <%--</nav>--%>
        </div>
    </div>
    <aside class="sidebar">
        <div class="fixed">

            <div class="widget widget_sentence">
                <h3>标签云</h3>
                <div class="widget-sentence-content">
                    <ul class="plinks ptags">
                        <li><a href="#list/67/" title="公司动态" draggable="false">公司动态 <span class="badge">1</span></a></li>
                        <li><a href="#list/256/" title="行业新闻" draggable="false">行业新闻 <span class="badge">1</span></a></li>
                        <li><a href="#list/252/" title="装修知识" draggable="false">装修知识 <span class="badge">1</span></a></li>

                    </ul>
                </div>
            </div>
        </div>
        <div class="widget widget_hot">
            <h3>最新评论文章</h3>
            <ul>
                <li>
                    <a title="" href="#" >
                        <span class="thumbnail">
                            <img class="thumb" data-original="../../../resources/images/news/ccc.jpg" src="../../../resources/images/news/ccc.jpg" alt=""  style="display: block;">

                        </span>
                        <span class="text">用DTcms做一个独立博客网站（响应式模板）</span>
                        <span class="muted">2016-11-01</span>
                   </a>
                </li>
            </ul>
        </div>

    </aside>
</section>
</div>
<%@include file="../common/footer.jsp"%>
<%@include file="../common/script.jsp"%>

</body>
</html>
