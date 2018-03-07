<%--
  Created by IntelliJ IDEA.
  User: zxbangban
  Date: 2017/11/16
  Time: 17:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="container-fluid" id="abc" style="background-color: rgba(0,0,0,0.5);width: 100%;color: #ffdd54;position: fixed;z-index: 2;bottom: 0;">
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <button type="button" class="close" id="a" >
                    <img src="${pageContext.request.contextPath}/resources/images/activity/closebtn.png" class="close_img"
                         alt="close">
                </button>
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-md-3 column">
                <div class="" style="background: transparent;text-align: center;color: white">
                    <h2 class="ads_h2">金牌工人<span style="color: #ffdd54;font-size: 1.1em">3秒</span>报价</h2>
                </div>
            </div>
            <div class="col-md-9 column">
                <div class="row">
                    <div class="">
                        <form class="form-horizontal" role="form"
                              action="${pageContext.request.contextPath}/c/quoted"
                              method="post">
                            <div class="col-md-6 column">
                                <div class="row">
                                    <div class="form-group">
                                        <label for="area"
                                               class="col-sm-4 col-xs-4 control-label">建筑面积</label>
                                        <div class="col-sm-8 col-xs-8">
                                            <input type="number" class="form-control" id="area"
                                                   name="area"
                                                   placeholder="建筑面积(㎡)">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 column">
                                <div class="row">
                                    <div class="form-group">
                                        <label for="tel"
                                               class="col-sm-4 col-xs-4 control-label">手机号码</label>
                                        <div class="col-sm-8 col-xs-8">
                                            <input type="number" class="form-control" id="tel"
                                                   name="tel"
                                                   placeholder="请输入您的手机号手机号">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6 column">
                                <div class="row">
                                    <div class="form-group">
                                        <label for="adds"
                                               class="col-sm-4 col-xs-4 control-label">您的称呼</label>
                                        <div class="col-sm-8 col-xs-8">
                                            <input type="text" class="form-control" id="adds"
                                                   name="adds"
                                                   placeholder="请输入您的称呼">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6 column">
                                <div class="row">
                                    <div class="form-group">
                                        <label class="col-sm-4 col-xs-4 control-label">房屋户型</label>
                                        <div class="col-sm-8 col-xs-8">
                                            <label>
                                                <select name="type" class="form-control">
                                                    <option value="三室二厅一厨二卫">三室二厅二卫一厨</option>
                                                    <option value="三室一厅一厨二卫">三室一厅二卫一厨</option>
                                                    <option value="三室一厅一厨一卫">三室一厅一卫一厨</option>
                                                    <option value="二室一厅一厨">二室一厅一厨</option>
                                                    <option value="一室一厅一厨">一室一厅一厨</option>
                                                    <option value="其他">其他</option>
                                                </select>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-12 column">
                                <div class="form-group">
                                    <div class="col-sm-offset-6 col-xs-offset-6 col-sm-6 col-xs-6">
                                        <button type="submit" class="btn btn-success"
                                                style="background-color:#ffdd54;color: black">马上报价
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="quoted" style="width: 60px;position: fixed;z-index: 1;bottom: 20%;right: 0">
    <a id="b">
        <img src="${pageContext.request.contextPath}/resources/images/activity/quoted_img.png" style="width: 100%;height: auto">
    </a>
</div>
<style type="text/css">
    .form-horizontal label{
        text-align: right;
    }
    .close img:hover{
       	transform: scale(1);
    }
</style>
<script type="text/javascript">
//    a.onclick = function(){
//        abc.style.display="none";
//    }
</script>