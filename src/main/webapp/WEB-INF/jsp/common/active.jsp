<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/16/016
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style type="text/css">
    .activity{
        position: fixed;
        top: 30px;
        right: 10px;
        transition: all 2s;
        opacity: 0;
        z-index: 9999;
        display: none;
    }
    .activity>.active_title{

    }
    .active_content{
        width: 100%;
        height:250px;
        background: url(../../../resources/images/common/quanyika.png) no-repeat;
        background-size:contain;
        padding-top:30px;
        padding-left: 20px;
        color: #fff;

    }
    .active_content>ul{
        width: 100%;
        position: relative;

    }
    .active_content>ul>li{
        line-height: 25px;
        letter-spacing:1px;
    }
    .active_qr{
        width: 100%;
        height:200px;
        background: url(../../../resources/images/common/qyCodeQr.gif) no-repeat;
        background-size:100% 100%;
    }
    .active_content h3{
        margin-bottom:0;
        text-align: left;padding-left: 70px;padding-top: 0px;
    }
    .active_title>h1{
        /*background: #e48632;*/
        padding: 0;
        margin: 0;
    }
    .closed{
        display: inline-block;
        font-style: normal;
        font-size:30px;
        border: 1px solid #ccc;
        border-radius: 50%;
        width:3rem;
        height:3rem;
        text-align: center;
        line-height: 2.5rem;
        cursor: pointer;
    }
    .hi{
        display: inline-block;
        transition:  ease 2s;
        position: fixed;
        right:0;
        top:20rem;
        background: #f9dd33;
        line-height: 2rem;
        font-size:1rem;
        width:6rem;
        height:4rem;
        text-align: center;
    }
    @media screen and (max-width: 600px) {
        .active{
            position: relative;
        }
        .active_content{
            width: 100%;
            height:250px;
            background: url(../../../resources/images/common/quanyika_small.png) no-repeat;
            background-size:100% 100%;
            padding-left:0.3rem;
        }
        .active_content>ul>li{
            letter-spacing:0;
        }
        .activity{
            position: fixed;
            top: 0;
            left:0px;
            width:100vw;
            height: 100vh;
            background: rgba(100,100,100,.9);
        }
        .closed{
            display: inline-block;
            font-style: normal;
            font-size:30px;
            border: 1px solid #ccc;
            border-radius: 50%;
            width:3rem;
            height:3rem;
            text-align: center;
            line-height: 2.5rem;
            cursor: pointer;
        }
        .hi{
            transition:  ease 2s;
            position: fixed;
            right:0;
            top:20rem;
            background: #f9dd33;
            line-height: 2rem;
            font-size:1rem;
            width:6rem;
            height:4rem;
            text-align: center;
        }
        .active_qr{
            height:160px;
        }

    }
    @media screen and (max-width: 800px){
        .closed{
            display: inline-block;
            font-style: normal;
            font-size:30px;
            border: 1px solid #ccc;
            border-radius: 50%;
            width:3rem;
            height:3rem;
            text-align: center;
            line-height: 2.5rem;
            cursor: pointer;
        }
        .hi{
            transition: ease 2s;
            position: fixed;
            right:0;
            top:20rem;
            background: #f9dd33;
            line-height: 2rem;
            font-size:1rem;
            width:6rem;
            height:4rem;
            text-align: center;
        }
        .active_title >h1{
            color: #fff;
        }
    }
</style>
<div class="activity" id="hidden">
    <i class="closed" id="closed">x</i>
    <div class="active_title">
        <h1 style="font-size:20px;text-align: center;">扫一扫领取业主联盟权益卡</h1>
    </div>
    <div class="active_qr"></div>

    <div class="active_content">
        <ul>
            <h3>特权说明：</h3>
            <li>
                <span>1、享受1000元-5000元的装修补贴；</span>
            </li>
            <li>
                <span>2、免费提供家装方面的咨询及装修指导；</span>
            </li>
            <li>
                <span>3、免费在平台预约基础装修各项工人；</span>
            </li>
            <li>
                <span>4、预约平台工人，可享受平台保障、先行赔付；</span>
            </li>
            <li>
                <span>5、基础装修享受5年的超长保修；</span>
            </li>
        </ul>
        <p style="text-indent: 0;padding-bottom: 10px;margin-bottom:10px;">备注：享受以上权益需加入“装修帮办-业主联盟”保障计划。</p>
    </div>
</div>
<div class="hi" id="hi">
    点击领取
    <br>
    装修补贴
</div>
<script type="text/javascript">
    var oClosed = document.getElementById("closed"),
        oHi = document.getElementById("hidden");
    oClosed.onclick =function(){
        oHi.style.right="-150%";
        oHi.style.opacity=0;
        oHi.style.display="none";
        hi.style.display="block";
    }
    hi.onclick=function(){
        oHi.style.right="0";
        oHi.style.opacity=1;
        oHi.style.display="block";
        hi.style.display="none";
    }
</script>
