<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/8/1
  Time: 9:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common/tag.jsp" %>
<html>
<head>
    <title>装修帮办账号|预约客服中心|主页</title>
    <%@include file="../common/head.jsp" %>
</head>
<body>
<%@include file="../common/header.jsp" %>
<div class="page-wrapper">
    <div class="row clearfix">
        <div class="container">

            <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">点击添加客户</button>
            <!-- 模态框（Modal） -->
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title" id="myModalLabel">请添加客户详情信息</h4>
                        </div>
                        <div class="modal-body">
                            <div class="form-horizontal">
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
                                                    <select name="type" id="type" class="form-control">
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
                                <button  name="sumbit" class="btn btn-primary" id="sumbitInfo" >添加</button>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12 column">
            <h1>${msg}</h1>
            <c:set var="customer" scope="page" value="${customers}"/>
            <c:if test="${customer.size() > 0}">
            <div class="table-responsive">
                <table class="table table-condensed table-hover">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>姓名</th>
                        <th>手机号</th>
                        <th>工程地址</th>
                        <th>预约时间</th>
                        <th>备注信息</th>
                        <th>管理</th>
                        <th>其他</th>
                    </tr>
                    </thead>
                    <tbody>
                    </c:if>
                    <c:forEach var="c" items="${customers}">
                        <tr>
                            <th>${c.id}</th>
                            <th>${c.name}</th>
                            <th>${c.telphone}</th>
                            <th>${c.programAddress}</th>
                            <th><fmt:formatDate value="${c.createTime}" type="both"/></th>
                            <th>${c.notes}</th>
                            <th>
                                <button type="button" name="notification" class="btn btn-default btn-manager"
                                        value="${c.id}">操作
                                </button>
                            </th>
                            <th>
                                <button type="button" name="notification" class="btn btn-info btn-detail"
                                        value="${c.id}">
                                    详情
                                </button>
                            </th>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="modal fade" id="modal-container-manager" role="dialog" aria-labelledby="myModalLabel"
             aria-hidden="true">
            <div class="container">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span
                                class="glyphicon glyphicon-remove"></span></button>
                    </div>
                    <div class="modal-body">
                        <div class="well well-lg">
                            <div class="row">
                                <div class="col-md-4 column">
                                    <button type="button" class="btn btn-success btn-lg btn-block" value=""
                                            onclick='a()'>生成工程订单
                                    </button>
                                </div>
                                <div class="col-md-4 column">
                                    <button type="button" class="btn btn-info btn-lg btn-block" value="" onclick='b()'>
                                        提高优先级
                                    </button>
                                </div>
                                <div class="col-md-4 column">
                                    <button type="button" class="btn btn-danger btn-lg btn-block" value=""
                                            onclick='c()'>删除
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
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
    var $i;
    $(function () {
        $(".btn-manager").click(function () {
            $i = $(this).val();
            var $mcc = $("#modal-container-manager");

            $mcc.find("button").attr("value", $i);
            $mcc.modal({
                show: true
            });
        });
        $(".btn-detail").click(function () {
            $i = $(this).val();

        });

    });


    function c() {
        $.ajax({
            url: "/appoint-console/delete",
            data: {
                "id": $i
            },
            type: "get",
            success: function (data) {
                if (data === "1") {
                    location.reload();
                }
            },
            error: function (xhr) {
                alert(xhr.state() + " " + xhr.statusText);
            }
        });
    }
    /* 添加客户 */
    $("#sumbitInfo").click(function(){
        var area = $("input[name='area']").val(),
            tel = $("input[name='tel']").val(),
            adds = $("input[name='adds']").val(),
            type = $("#type option:selected").html();
        $.ajax({
            url: "${pageContext.request.contextPath}/c/quoted",
            data: {
                area: area,
                tel:tel,
                adds:adds,
                type:type
            },
            type: "post",
            success: function (data) {
                location.reload();
            },
            error: function () {
                alert("请刷新页面之后重新填写");
            }
        });
    })

</script>
</html>
