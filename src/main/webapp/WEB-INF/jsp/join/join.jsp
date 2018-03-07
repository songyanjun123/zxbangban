<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/7/007
  Time: 9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>招贤纳士</title>
    <style type="text/css">
          *, *:before, *:after {
              box-sizing: border-box;
              margin: 0;
              padding: 0;
          }
        html, body {
            font-size: 62.5%;
            height: 100%;
            overflow: hidden;
        }
        body {
            background: #000;
        }
        svg {
            display: block;
            overflow: visible;
        }
        .slide {
            position: absolute;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: hidden;
        }
    </style>
    <%@include file="../common/head.jsp" %>
</head>
<body>
<%@include file="../common/header.jsp" %>
<div class="page-wrapper">
    <div class="slider-container">
        <div class="slider-control left inactive"></div>
        <div class="slider-control right"></div>
        <ul class="slider-pagi" id="sliderPagi"></ul>
        <div class="slider">
            <div class="slide slide-0 active">
                <div class="slide__bg"></div>
                <div class="slide__content">
                    <svg class="slide__overlay" viewBox="0 0 720 405" preserveAspectRatio="xMaxYMax slice">
                        <path class="slide__overlay-path" d="M0,0 150,0 500,405 0,405" />
                    </svg>

                    <div class="slide__text">
                        <h1>岗位描述</h1>
                        <h2 class="slide__text-heading">岗位职责：</h2>
                        <p class="slide__text-desc">111111111111111111111111111111</p>
                        <p class="slide__text-desc">111111111111111111111111111111</p>
                        <p class="slide__text-desc">111111111111111111111111111111</p>
                        <p class="slide__text-desc">111111111111111111111111111111</p>
                        <p class="slide__text-desc">111111111111111111111111111111</p>
                        <h2 class="slide__text-heading">岗位需求：</h2>
                        <p class="slide__text-desc">2222222222222222222222222222</p>
                        <p class="slide__text-desc">2222222222222222222222222222</p>
                        <p class="slide__text-desc">2222222222222222222222222222</p>
                        <p class="slide__text-desc">2222222222222222222222222222</p>
                        <p class="slide__text-desc">2222222222222222222222222222</p>
                        <p class="slide__text-desc">2222222222222222222222222222</p>
                        <p class="slide__text-desc">2222222222222222222222222222</p>
                        <p class="slide__text-desc">2222222222222222222222222222</p>
                    </div>
                </div>
            </div>
            <div class="slide slide-1 ">
                <div class="slide__bg"></div>
                <div class="slide__content">
                    <svg class="slide__overlay" viewBox="0 0 720 405" preserveAspectRatio="xMaxYMax slice">
                        <path class="slide__overlay-path" d="M0,0 150,0 500,405 0,405" />
                    </svg>
                    <div class="slide__text">
                        <h1>岗位描述</h1>
                        <h2 class="slide__text-heading">岗位职责：</h2>
                        <p class="slide__text-desc">111111111111111111111111111111</p>
                        <p class="slide__text-desc">111111111111111111111111111111</p>
                        <p class="slide__text-desc">111111111111111111111111111111</p>
                        <p class="slide__text-desc">111111111111111111111111111111</p>
                        <p class="slide__text-desc">111111111111111111111111111111</p>
                        <h2 class="slide__text-heading">岗位需求：</h2>
                        <p class="slide__text-desc">2222222222222222222222222222</p>
                        <p class="slide__text-desc">2222222222222222222222222222</p>
                        <p class="slide__text-desc">2222222222222222222222222222</p>
                        <p class="slide__text-desc">2222222222222222222222222222</p>
                        <p class="slide__text-desc">2222222222222222222222222222</p>
                        <p class="slide__text-desc">2222222222222222222222222222</p>
                        <p class="slide__text-desc">2222222222222222222222222222</p>
                        <p class="slide__text-desc">2222222222222222222222222222</p>

                    </div>
                </div>
            </div>
            <div class="slide slide-2">
                <div class="slide__bg"></div>
                <div class="slide__content">
                    <svg class="slide__overlay" viewBox="0 0 720 405" preserveAspectRatio="xMaxYMax slice">
                        <path class="slide__overlay-path" d="M0,0 150,0 500,405 0,405" />
                    </svg>
                    <div class="slide__text">
                        <h1>岗位描述</h1>
                        <h2 class="slide__text-heading">岗位职责：</h2>
                        <p class="slide__text-desc">111111111111111111111111111111</p>
                        <p class="slide__text-desc">111111111111111111111111111111</p>
                        <p class="slide__text-desc">111111111111111111111111111111</p>
                        <p class="slide__text-desc">111111111111111111111111111111</p>
                        <p class="slide__text-desc">111111111111111111111111111111</p>
                        <h2 class="slide__text-heading">岗位需求：</h2>
                        <p class="slide__text-desc">2222222222222222222222222222</p>
                        <p class="slide__text-desc">2222222222222222222222222222</p>
                        <p class="slide__text-desc">2222222222222222222222222222</p>
                        <p class="slide__text-desc">2222222222222222222222222222</p>
                        <p class="slide__text-desc">2222222222222222222222222222</p>
                        <p class="slide__text-desc">2222222222222222222222222222</p>
                        <p class="slide__text-desc">2222222222222222222222222222</p>
                        <p class="slide__text-desc">2222222222222222222222222222</p>

                    </div>
                </div>
            </div>
            <div class="slide slide-3">
                <div class="slide__bg"></div>
                <div class="slide__content">
                    <svg class="slide__overlay" viewBox="0 0 720 405" preserveAspectRatio="xMaxYMax slice">
                        <path class="slide__overlay-path" d="M0,0 150,0 500,405 0,405" />
                    </svg>
                    <div class="slide__text">
                        <h1>岗位描述</h1>
                        <h2 class="slide__text-heading">岗位职责：</h2>
                        <p class="slide__text-desc">111111111111111111111111111111</p>
                        <p class="slide__text-desc">111111111111111111111111111111</p>
                        <p class="slide__text-desc">111111111111111111111111111111</p>
                        <p class="slide__text-desc">111111111111111111111111111111</p>
                        <p class="slide__text-desc">111111111111111111111111111111</p>
                        <h2 class="slide__text-heading">岗位需求：</h2>
                        <p class="slide__text-desc">2222222222222222222222222222</p>
                        <p class="slide__text-desc">2222222222222222222222222222</p>
                        <p class="slide__text-desc">2222222222222222222222222222</p>
                        <p class="slide__text-desc">2222222222222222222222222222</p>
                        <p class="slide__text-desc">2222222222222222222222222222</p>
                        <p class="slide__text-desc">2222222222222222222222222222</p>
                        <p class="slide__text-desc">2222222222222222222222222222</p>
                        <p class="slide__text-desc">2222222222222222222222222222</p>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="../common/footer.jsp" %>
</body>
<%@include file="../common/script.jsp" %>
<script type="text/javascript">
    $(document).ready(function() {
        var $slider = $(".slider"),
            $slideBGs = $(".slide__bg"),
            diff = 0,
            curSlide = 0,
            numOfSlides = $(".slide").length-1,
            animating = false,
            animTime = 500,
            autoSlideTimeout,
            autoSlideDelay = 6000,
            $pagination = $(".slider-pagi");
        var jobArray=["a","b","c","d"];
        var aLi = document.getElementById('sliderPagi').getElementsByTagName('li');
        console.log(aLi.length)
        for(var i=0;i<aLi.length;i++){
            console.log(jobArray[i])
            aLi[i].innerHTML=jobArray[i];
        }
        function createBullets() {
            for (var i = 0; i < numOfSlides+1; i++) {
                var $li = $("<li class='slider-pagi__elem'></li>");
                $li.addClass("slider-pagi__elem-"+i).data("page", i);
                if (!i) $li.addClass("active");
                $pagination.append($li);
            }
        };

        createBullets();

        function manageControls() {
            $(".slider-control").removeClass("inactive");
            if (!curSlide) $(".slider-control.left").addClass("inactive");
            if (curSlide === numOfSlides) $(".slider-control.right").addClass("inactive");
        };

        function autoSlide() {
            autoSlideTimeout = setTimeout(function() {
                curSlide++;
                if (curSlide > numOfSlides) curSlide = 0;
                changeSlides();
            }, autoSlideDelay);
        };

        autoSlide();

        function changeSlides(instant) {
            if (!instant) {
                animating = true;
                manageControls();
                $slider.addClass("animating");
                $slider.css("top");
                $(".slide").removeClass("active");
                $(".slide-"+curSlide).addClass("active");
                setTimeout(function() {
                    $slider.removeClass("animating");
                    animating = false;
                }, animTime);
            }
            window.clearTimeout(autoSlideTimeout);
            $(".slider-pagi__elem").removeClass("active");
            $(".slider-pagi__elem-"+curSlide).addClass("active");
            $slider.css("transform", "translate3d("+ -curSlide*100 +"%,0,0)");
            $slideBGs.css("transform", "translate3d("+ curSlide*50 +"%,0,0)");
            diff = 0;
            autoSlide();
        }

        function navigateLeft() {
            if (animating) return;
            if (curSlide > 0) curSlide--;
            changeSlides();
        }

        function navigateRight() {
            if (animating) return;
            if (curSlide < numOfSlides) curSlide++;
            changeSlides();
        }

        $(document).on("mousedown touchstart", ".slider", function(e) {
            if (animating) return;
            window.clearTimeout(autoSlideTimeout);
            var startX = e.pageX || e.originalEvent.touches[0].pageX,
                winW = $(window).width();
            diff = 0;

            $(document).on("mousemove touchmove", function(e) {
                var x = e.pageX || e.originalEvent.touches[0].pageX;
                diff = (startX - x) / winW * 70;
                if ((!curSlide && diff < 0) || (curSlide === numOfSlides && diff > 0)) diff /= 2;
                $slider.css("transform", "translate3d("+ (-curSlide*100 - diff) +"%,0,0)");
                $slideBGs.css("transform", "translate3d("+ (curSlide*50 + diff/2) +"%,0,0)");
            });
        });

        $(document).on("mouseup touchend", function(e) {
            $(document).off("mousemove touchmove");
            if (animating) return;
            if (!diff) {
                changeSlides(true);
                return;
            }
            if (diff > -8 && diff < 8) {
                changeSlides();
                return;
            }
            if (diff <= -8) {
                navigateLeft();
            }
            if (diff >= 8) {
                navigateRight();
            }
        });

        $(document).on("click", ".slider-control", function() {
            if ($(this).hasClass("left")) {
                navigateLeft();
            } else {
                navigateRight();
            }
        });

        $(document).on("click", ".slider-pagi__elem", function() {
            curSlide = $(this).data("page");
            changeSlides();
        });
        $(document).on("mouseover",'.slide',function(){
            window.clearTimeout(autoSlideTimeout);
        })
        $(document).on('mouseleave','.slide',function(){
            autoSlide();
        })
    });
</script>

</html>
