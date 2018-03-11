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
    <title>新闻详情</title>
    <link rel="stylesheet" type="text/css" href="../../../resources/css/newsList.css">
    <%@include file="../common/head.jsp"%>
</head>
<body class="user-select single">
<%@include file="../common/header.jsp"%>
<div class="page-wrapper"  style="background: #eee;">
    <section class="container">
    <div class="content-wrap">
        <div class="content">
            <header class="article-header">
                <h1 class="article-title"><a href="#" title="">文章标题</a></h1>
                <div class="article-meta">
                    <span class="item article-meta-time">
                        <time class="time" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="发表时间：2016-10-14">
                            时间：2016-10-14</time>
                    </span>
                    <span class="item article-meta-source" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="">来源： <a href="#" title="MZ-NetBlog主题">MZ-NetBlog主题</a></span>
                </div>
            </header>
            <article class="article-content">
                <p>
                    <img data-original="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/banner1.png" src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/banner1.png" alt=""/>
                </p>
                <p id="desc">啊实打实大师阿萨德阿萨德阿萨德非得公司付款大公鸡ksmklsjogjdo评估到的房间观看打个卡大概看见的覅偶戴高帽地方购买电饭锅可能对方看来你吗，vnxcm,女警积分那个接口的方式呢工地欧股份那个尽可能的就开个那地方姐可能地方你就快过年地方看见你感动哭了烦死你公交卡十多年了发个可拉到烦死你干嘛你爸妈，现场女就开个his积分就南方你的房间快过年大嫁风尚那个
                </p>
                <p>
                    <img data-original="" src="" alt=""/>
                </p>
                <p>
                    新闻2
                </p>
                <p>
                    <img data-original="" src="" alt=""/>
                </p>
                <p>
                    新闻2
                </p>

                <%--<script type="text/javascript">--%>
                    <%--var desca = document.getElementById("desc").innerHTML.substring(0,40);--%>
                    <%--var url = window.url;--%>

                    <%--(function () {--%>
                        <%--var p = {--%>
                            <%--url: 'https://zxbangban.com/home',--%>
                            <%--showcount: '1',/*是否显示分享总数,显示：'1'，不显示：'0' */--%>
                            <%--desc:desca,/*默认分享理由(可选)*/--%>
                            <%--summary: '敢不敢比一比谁家的装修费用低，打造全网最低装修',/*分享摘要(可选)*/--%>
                            <%--title: '记录分享',/*分享标题(可选)*/--%>
                            <%--site: '',/*分享来源 如：腾讯网(可选)*/--%>
                            <%--pics: '', /*分享图片的路径(可选)*/--%>
                            <%--style: '101',--%>
                            <%--width: 199,--%>
                            <%--height: 30--%>
                        <%--};--%>
                        <%--var s = [];--%>
                        <%--for (var i in p) {--%>
                            <%--s.push(i + '=' + encodeURIComponent(p[i] || ''));--%>
                        <%--}--%>
                        <%--document.write(['<a version="1.0" class="qzOpenerDiv" href="http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?', s.join('&'), '" target="_blank">分享</a>'].join(''));--%>
                    <%--})();--%>
                <%--</script>--%>
                <%--<script src="http://qzonestyle.gtimg.cn/qzone/app/qzlike/qzopensl.js#jsdate=20111201" charset="utf-8"></script>--%>
            </article>
            <div class="article-tags">
                标签：
                <a href="#" rel="tag">id1</a><a href="#" rel="tag">id2</a><a href="#" rel="tag">id3</a><a href="#" rel="tag">id4</a>
            </div>
            <div class="relates">
                <div class="title">
                    <h3>相关推荐</h3>
                </div>
                <ul>
                    <li><a href="#" title="">主题</a></li>
                    <li><a  href="#" title="">主题</a></li>
                    <li><a href="#" title="">主题</a></li>
                    <li><a href="#" title="">主题</a></li>
                    <li><a href="#" title="">主题</a></li>
                    <li><a href="#" title="">主题</a></li>
                    <li><a href="#" title="">主题</a></li>
                    <li><a href="#" title="">主题</a></li>
                    <li><a href="#" title="">主题</a></li>
                    <li><a href="#" title="">主题</a></li>
                </ul>
            </div>
            <div class="title" id="comment">
                <h3>评论</h3>
            </div>
            <div id="respond">
                <form id="comment-form" name="comment-form" action="" method="POST">
                    <div class="comment">
                        <input name=""  class="form-control" size="22" placeholder="您的昵称（必填）"  autocomplete="off" tabindex="1" type="text" id="username">
                        <input name=""  class="form-control" size="22" placeholder="您的网址或邮箱（非必填）" autocomplete="off" tabindex="2" type="email" id="email">
                        <div class="comment-box">
                            <textarea placeholder="您的评论或留言（必填）" name="comment-textarea" id="comment-textarea" cols="100%" rows="3" tabindex="3"></textarea>
                            <div class="comment-ctrl">
                                <div class="comment-prompt" style="display: none;" id="writeIng">
                                    <span id="h" class="comment-prompt-text">正在输入中...请认真填写</span>
                                </div>
                                <div class="comment-prompt" style="display: none;" id="">
                                    <span class="comment-prompt-text">评论正在提交中...请稍后</span>
                                </div>
                                <div class="comment-success" style="display: none;" id="subSuc">
                                    <span class="comment-prompt-text">评论提交成功...</span>
                                </div>
                                <button type="submit" name="comment-submit" id="comment-submit" tabindex="4">评论</button>
                            </div>
                        </div>
                    </div>
                </form>

            </div>
            <div id="postcomments">
                <ol id="comment_list" class="commentlist">
                    <li class="comment-content"><span class="comment-f">#2</span>
                        <div class="comment-main">
                            <p>
                                <a class="address" href="#" rel="nofollow" target="_blank">用户名字</a><span class="time">(2016/10/28 11:41:03)</span><br>
                                不错的设计，看着相当舒服
                            </p>
                        </div>
                    </li>
                    <li class="comment-content"><span class="comment-f">#1</span>
                        <div class="comment-main">
                            <p>
                                <a class="address" href="#" rel="nofollow" target="_blank">用户名字</a><span class="time">(2016/10/14 21:02:39)</span><br>
                                房子很好
                            </p>
                        </div>
                    </li>
                </ol>
            </div>
        </div>
    </div>
    <aside class="sidebar">

        <div class="widget widget_hot">
            <h3>最新评论文章</h3>
            <ul>
                <li>
                    <a title="" href="#">
                        <span class="thumbnail">
                            <img class="thumb" data-original="http://localhost:8080/resources/images/shop/dongpeng_cizhuan/2.png" src="http://localhost:8080/resources/images/shop/dongpeng_cizhuan/2.png" alt="图片地址" style="display: block;">
                        </span>
                        <span class="text">标题</span>
                        <span class="muted">2016-11-01</span>
                        <span class="item article-meta-source" style="display: block;margin-top:10px;">来源：设计总监（名字）</span>
                    </a>
                </li>
                <li>
                    <a title="" href="#">
                        <span class="thumbnail">
                            <img class="thumb" data-original="http://localhost:8080/resources/images/shop/dongpeng_cizhuan/2.png" src="http://localhost:8080/resources/images/shop/dongpeng_cizhuan/2.png" alt="图片地址" style="display: block;">
                        </span>
                        <span class="text">标题</span>
                        <span class="muted">2016-11-01</span>
                        <span class="item article-meta-source" style="display: block;margin-top:10px;">来源：设计师（名字）</span>
                    </a>
                </li>
                <li>
                    <a title="" href="#">
                        <span class="thumbnail">
                            <img class="thumb" data-original="http://localhost:8080/resources/images/shop/dongpeng_cizhuan/2.png" src="http://localhost:8080/resources/images/shop/dongpeng_cizhuan/2.png" alt="图片地址" style="display: block;">
                        </span>
                        <span class="text">标题</span>
                        <span class="muted">2016-11-01</span>
                        <span class="item article-meta-source" style="display: block;margin-top:10px;">来源：设计师（名字）</span>
                    </a>
                </li>
                <li>
                    <a title="" href="#">
                        <span class="thumbnail">
                            <img class="thumb" data-original="http://localhost:8080/resources/images/shop/dongpeng_cizhuan/2.png" src="http://localhost:8080/resources/images/shop/dongpeng_cizhuan/2.png" alt="图片地址" style="display: block;">
                        </span>
                        <span class="text">标题</span>
                        <span class="muted">2016-11-01</span>
                        <span class="item article-meta-source" style="display: block;margin-top:10px;">来源：设计师（名字）</span>
                    </a>
                </li>
                <li>
                    <a title="" href="#">
                        <span class="thumbnail">
                            <img class="thumb" data-original="http://localhost:8080/resources/images/shop/dongpeng_cizhuan/2.png" src="http://localhost:8080/resources/images/shop/dongpeng_cizhuan/2.png" alt="图片地址" style="display: block;">
                        </span>
                        <span class="text">标题</span>
                        <span class="muted">2016-11-01</span>
                        <span class="item article-meta-source" style="display: block;margin-top:10px;">来源：设计师（名字）</span>
                    </a>
                </li>

            </ul>
        </div>

    </aside></section>
</div>
<%@include file="../common/footer.jsp"%>

</body>
<script type="text/javascript">
    window.onload=function(){
        var userNmae = document.getElementById('username'),
            oEmail = document.getElementById("email"),
            conTextarea = document.getElementById("comment-textarea"),
            oSubmit = document.getElementById('comment-submit'),
            subSuc = document.getElementById('subSuc');
        var time = null;
        oSubmit.onclick =function(){
            this.style.background = '#2a7da7';
            if( userNmae.value == "" || conTextarea.value == "" ){
                userNmae.placeholder = "请填写正确名称";
                oEmail.placeholder = "请填写正确的邮箱";
                conTextarea.placeholder = "请输入您的评论内容";
            }
            return false;
        }
        userNmae.onfocus = function(){
            writeIng.style.display = "inline-block";
            h.innerHTML = "正在填写用户名中....";
        }
        oEmail.onfocus = function(){
            writeIng.style.display = "inline-block";
            h.innerHTML = "正在填写邮箱中....";
        }
        conTextarea.onfocus = function(){
            writeIng.style.display = "inline-block";
            h.innerHTML = "正在填写内容中...."
        }
    }
</script>
</html>