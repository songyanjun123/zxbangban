<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/6/006
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>装修效果图</title>
    <%@include file="../common/head.jsp"%>
    <link rel="stylesheet" href="../../../resources/css/main.css">
    <link rel="stylesheet" href="../../../resources/css/details.css">

</head>
<body>
<%@include file="../common/header.jsp" %>
<div class="page-wrapper">
    <div class="bigBg">
        <div class="container">
            <div>
                <div class="banner row" >
                    <div id="wrapper"  class="col-md-12 col-xs-12 col-sm-12 ">
                        <!--滚动看图-->
                        <div id="picSlideWrap" class="clearfix  col-xs-12 col-md-8 col-sm-12" >
                            <h2 style="font-size:24px;">美式风格精致大户型室内设计装修效果图赏析 <span id="imgLength"></span></h2>
                            <div class="imgnav" id="imgnav">
                                <div id="img">
                                    <img src="http://img1.imgtn.bdimg.com/it/u=264209224,524478315&fm=27&gp=0.jpg">
                                    <div id="front" title="上一张"><a href="javaScript:void(0)" class="pngFix"></a></div>
                                    <div id="next" title="下一张"><a href="javaScript:void(0)" class="pngFix"></a></div>
                                </div>
                            </div>
                        </div><!--end滚动看图-->
                        <div class="col-md-3 col-xs-12 col-sm-12 showtime "  >
                            <form class="form-horizontal" role="form"
                                  action="${pageContext.request.contextPath}/quoted/free"
                                  method="post">
                                <div class="col-md-12 col-xs-11 col-sm-6 column" style="margin-left: 12px;margin-top: 20px">
                                    <div >
                                        <div class="form-group">
                                            <div class="col-sm-11 col-xs-11">
                                                <input type="number" class="form-control" id="area" name="area"  placeholder="建筑面积(㎡)">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12  col-xs-11 col-sm-6 column" style="margin-left: 12px;margin-top:15px;">
                                    <div >
                                        <div class="form-group">
                                            <div class="col-sm-11 col-xs-11">
                                                <input type="text" class="form-control" id="adds"
                                                       name="adds"
                                                       placeholder="请输入您的称呼">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12  col-xs-11 col-sm-6 column" style="margin-left: 12px;margin-top:15px;">
                                    <div >
                                        <div class="form-group">
                                            <div class="col-sm-11 col-xs-11">
                                                <input type="number" class="form-control" id="tel"
                                                       name="tel"
                                                       placeholder="请输入您的手机号">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12  col-xs-11 col-sm-6 column" style="margin-top:10px;">
                                    <div class="form-group">
                                        <div class="col-sm-offset-3 col-xs-offset-3 col-sm-6 col-xs-6">
                                            <button type="submit" class="btn btn-success btn-block"
                                                    style="background-color:#ffdd54;color: black;">开始计算
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <div class="col-md-12  col-xs-12 col-sm-6 column row priceResult" style="">
                                <div class="form-group">
                                    <div class="col-md-12  col-xs-12 col-sm-12  ">
                                        <div class="result">
                                            <p><span>物料费 <span>1100元</span></span></p>
                                            <p><span>人工费 <span>1100元</span></span></p>
                                            <p><span>设计费 <del>1100元</del></span></p>
                                            <p><span>服务费 <span>0</span></span></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="cbtn">
                <!--<i class="picSildeLeft"><img src="../../../resources/images/details/picSlideLeft.gif"></i>-->
                <!--<i class="picSildeRight"><img src="../../../resources/images/details/picSlideRight.gif"></i>-->
                <i class="picSildeLeft"></i>
                <i class="picSildeRight"></i>
                <div id="cSlideUl">
                    <ul>
                        <li><img src="http://img1.imgtn.bdimg.com/it/u=264209224,524478315&fm=27&gp=0.jpg"><tt></tt></li>
                        <li><img src="http://img3.imgtn.bdimg.com/it/u=2788893481,2910348456&fm=27&gp=0.jpg"><tt></tt></li>
                        <li><img src="http://img5.imgtn.bdimg.com/it/u=1603927198,2974630061&fm=200&gp=0.jpg" /><tt></tt></li>
                        <li><img src="http://img4.imgtn.bdimg.com/it/u=2053617064,3325416724&fm=27&gp=0.jpg"><tt></tt></li>
                        <li><img src="http://img3.imgtn.bdimg.com/it/u=2495390225,3184689482&fm=27&gp=0.jpg"><tt></tt></li>
                        <li><img src="http://img4.imgtn.bdimg.com/it/u=1844129212,3380757808&fm=27&gp=0.jpg"><tt></tt></li>
                        <li><img src="http://img1.imgtn.bdimg.com/it/u=264209224,524478315&fm=27&gp=0.jpg"><tt></tt></li>
                        <li><img src="http://img3.imgtn.bdimg.com/it/u=2788893481,2910348456&fm=27&gp=0.jpg"><tt></tt></li>
                        <li><img src="http://img5.imgtn.bdimg.com/it/u=1603927198,2974630061&fm=200&gp=0.jpg" /><tt></tt></li>
                        <li><img src="http://img4.imgtn.bdimg.com/it/u=2053617064,3325416724&fm=27&gp=0.jpg"><tt></tt></li>
                        <li><img src="http://img3.imgtn.bdimg.com/it/u=2495390225,3184689482&fm=27&gp=0.jpg"><tt></tt></li>
                        <li><img src="http://img4.imgtn.bdimg.com/it/u=1844129212,3380757808&fm=27&gp=0.jpg"><tt></tt></li>
                    </ul>
                </div>
            </div>
            <div class="reco_wrap">
                <h3 class="sidebarRmt ">套图推荐</h3>
                <div class="reco_content clear">
                    <a href="">
                        <img src="http://image.bao315.com/upload/image/201711/14/67302ef8-d6c5-4416-80b9-61de57a384ed.jpg?x-oss-process=image/watermark,image_aW1hZ2VzLzIwMTcxMS8xNy9hNDMxYTQ5OC1kZjc2LTQzMTItOTE0OS02NGU1NjVkMmZmNjkucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMjA=,t_90,g_se,x_10,y_10" alt="精美厨房装修"></a>
                    <a href="">
                        <img src="http://image.bao315.com/upload/image/201711/14/8d3eca2c-d26b-47f8-b21e-06bdc2704c15.jpg?x-oss-process=image/watermark,image_aW1hZ2VzLzIwMTcxMS8xNy9hNDMxYTQ5OC1kZjc2LTQzMTItOTE0OS02NGU1NjVkMmZmNjkucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMjA=,t_90,g_se,x_10,y_10" alt="清新素雅的76平北欧风格小户型"></a>
                    <a href="" >
                        <img src="http://image.bao315.com/UploadFiles/Case/8764782.jpg?x-oss-process=image/watermark,image_aW1hZ2VzLzIwMTcxMS8xNy9hNDMxYTQ5OC1kZjc2LTQzMTItOTE0OS02NGU1NjVkMmZmNjkucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMjA=,t_90,g_se,x_10,y_10" alt="温暖原木小屋 97平日式MUJI清新2居"></a>
                    <a href="">
                        <img src="http://image.bao315.com/UploadFiles/Case/8567176.jpg?x-oss-process=image/watermark,image_aW1hZ2VzLzIwMTcxMS8xNy9hNDMxYTQ5OC1kZjc2LTQzMTItOTE0OS02NGU1NjVkMmZmNjkucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMjA=,t_90,g_se,x_10,y_10" alt="中海翡翠别墅 经典优雅软装搭配"></a>
                </div>
            </div>
        </div>

    </div>

</div>
<%@include file="../common/footer.jsp" %>
</body>
<%@include file="../common/script.jsp"%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"  type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function(){
        var index=0;
        var length=$("#cSlideUl li").length;
        //console.log(length)
        var i=1;
        $("#imgLength").html("("+i+"/"+length+")");
        //关键函数：通过控制i ，来显示图片
        function showImg(i){
            $("#img img")
                .eq(i).stop(true,true).fadeIn(800)
                .siblings("img").hide();
            $("#cbtn li")
                .eq(i).addClass("hov")
                .siblings().removeClass("hov");
            var attrImg = $("#cSlideUl ul li img")[i].src;
            $("#img img").attr("src",attrImg)
            //console.log(attrImg)
            $("#imgLength").html("("+i+"/"+length+")");
        }

        function slideNext(){
            if(index >= 0 && index < length-1) {
                ++index;
                showImg(index);
            }else{
                if(confirm("已经是最后一张,点击确定重新浏览！")){
                    showImg(0);
                    index=0;
                    aniPx=(length-5)*142+'px'; //所有图片数 - 可见图片数 * 每张的距离 = 最后一张滚动到第一张的距离
                    $("#cSlideUl ul").animate({ "left": "+="+aniPx },200);
                    i=1;
                }
                return false;
            }
            if(i<0 || i>length-5) {return false;}
            $("#cSlideUl ul").animate({ "left": "-=142px" },200)
            i++;
        }

        function slideFront(){
            if(index >= 1 ) {
                --index;
                showImg(index);
            }
            if(i<2 || i>length+5) {return false;}
            $("#cSlideUl ul").animate({ "left": "+=142px" },200)
            i--;
        }
        $("#img img").eq(0).show();
        $("#cbtn li").eq(0).addClass("hov");
        $("#cbtn tt").each(function(e){
            var str=(e+1)+""+length;
            $(this).html(str)
        })

        $(".picSildeRight,#next").click(function(){
            slideNext();
        })
        $(".picSildeLeft,#front").click(function(){
            slideFront();
        })
        $("#cbtn li").click(function(){
            index  =  $("#cbtn li").index(this);
            showImg(index);
        });
        $("#next,#front").hover(function(){
            $(this).children("a").fadeIn();
        },function(){
            $(this).children("a").fadeOut();
        })
    })

</script>
</html>
