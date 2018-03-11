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
                        <h1>UI设计师</h1>
                        <h2 class="slide__text-heading">岗位职责：</h2>
                        <p class="slide__text-desc">1、负责公司网站的设计、改版、更新；</p>
                        <p class="slide__text-desc">2、负责公司产品的界面进行设计、编辑、美化等工作；</p>
                        <p class="slide__text-desc">3、对公司的宣传产品进行美工设计；</p>
                        <p class="slide__text-desc">4、负责客户及系统内的广告和专题的设计；</p>
                        <p class="slide__text-desc">5、负责与开发人员配合完成所辖网站等前台页面设计和编辑；</p>
                        <p class="slide__text-desc">6、其他与美术设计相关的工作。</p>
                        <h2 class="slide__text-heading">岗位需求：</h2>
                        <p class="slide__text-desc">1、美术、平面设计相关专业，专科及以上学历，有一定的文案基础；</p>
                        <p class="slide__text-desc">2、可接受实习。</p>
                        <p class="slide__text-desc">3、有扎实的美术功底、良好的创意思维和理解能力，能及时把握客户需求；</p>
                        <p class="slide__text-desc">4、精通ps、ai，对图片渲染和视觉效果有较好认识；</p>
                        <p class="slide__text-desc">5、善于与人沟通，良好的团队合作精神和高度的责任感，能够承受压力，有创新精神，保证工作质量；</p>
                        <p class="slide__text-desc">6、应聘时最好携带个人作品。</p>
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
                        <h1>平面广告设计</h1>
                        <h2 class="slide__text-heading">岗位职责：</h2>
                        <p class="slide__text-desc">1、全程负责广告策划、文案表达、推广执行等工作，能独立撰写或设计广告推广样稿；</p>
                        <p class="slide__text-desc">2、为公司提供全方位的创意、策划及文案支持；</p>
                        <p class="slide__text-desc">3、对设计人员的工作进度与质量进行全面控制与管理；</p>
                        <p class="slide__text-desc">4、及时关注行业发展潮流，根据公司具体情况进行不断吸收与优化。</p>
                        <h2 class="slide__text-heading">岗位需求：</h2>
                        <p class="slide__text-desc">1、新闻传播学、广告学等专业本科以上学历；</p>
                        <p class="slide__text-desc">2、1年以上相关工作经验；</p>
                        <p class="slide__text-desc">3、具备一定广告营销知识，及一定的对广告的审美观及评判能力；</p>
                        <p class="slide__text-desc">4、良好语言表达和沟通能力，具备团队思维；</p>
                        <p class="slide__text-desc">5、有较好的沟通、协调能力和分析能力；细致、负责的工作态度；</p>
                        <p class="slide__text-desc">6、掌握一定的美术设计、制作技能。</p>
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
                        <h1>客户经理/主管</h1>
                        <h2 class="slide__text-heading">岗位职责：</h2>
                        <p class="slide__text-desc">1、维系客户，掌握团队工作进度已和方向，策划组织实施各类促销及公关事件及执行方案；</p>
                        <p class="slide__text-desc">2、制定年、季度度传播策略方案，审核、撰写相关稿件，项目总结报告等；</p>
                        <p class="slide__text-desc">3、品牌策略及新品发行计划、品牌及产品广告传播策略；</p>
                        <p class="slide__text-desc">4、广告表现及媒介投放分析；</p>
                        <p class="slide__text-desc">5、监控实施质量，与目前所服务部分客户对接，沟通日常工作内容，及时根据客户要求和情况变化，提出解决方案，向客户提供专业化的解决方案；</p>
                        <p class="slide__text-desc">6、协调各部门关系，协调上级完成团队的管理、培训及新业务的拓展。</p>
                        <h2 class="slide__text-heading">岗位需求：</h2>
                        <p class="slide__text-desc">1、两年以上专业公关咨询公司或者相关市场传播工作经验，服务过基金客户为佳；</p>
                        <p class="slide__text-desc">2、本科以上学历，学校正规，所学为金融、经济、数学等专业优先；</p>
                        <p class="slide__text-desc">3、杰出的领导和管理能力，丰富的客户服务经验；</p>
                        <p class="slide__text-desc">4、具有诚信、负责人的品格，对公关行业有强烈的事业心；</p>
                        <p class="slide__text-desc">5、能承担工作的挑战和压力，积极进取，注重绩效；</p>
                        <p class="slide__text-desc">6、优秀的撰稿能力、提案制作和陈述能力；</p>
                        <p class="slide__text-desc">7、具有良好的沟通能力，较强的组织、协调能力，灵活、机智的处事能力；</p>
                        <p class="slide__text-desc">8、有强烈的工作责任心和团队合作精神，能承担较大的工作压力。</p>
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
