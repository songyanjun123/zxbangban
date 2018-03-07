<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/12/20
  Time: 17:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common/tag.jsp" %>
<html>
<head>
    <title>恢复你的账号</title>
    <%@include file="../common/head.jsp"%>
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0">
    <style type="text/css">
        .jumbotron{
            color: white;
            margin-top: 200px;
        }
        .radio label input{
            width: 20px;
            height: 20px;
        }
        .radio label span{
            margin-left: 5px;
        }
        #inputs{
            width: 100%;
            height: 40px;
            border: 1px solid cornflowerblue;
            color: cornflowerblue;
            border-radius: 20px;
            position: relative;
            text-align: center;
            line-height: 40px;
            overflow: hidden;
            font-size: 16px;
        }
        #inputs input{
            width: 114%;
            height: 40px;
            opacity: 0;
            cursor: pointer;
            position: absolute;
            top: 0;
            left: -14%;
        }
        #dd{
            position: relative;
        }
        #dd img{

            width:100%;

            /*position: absolute;*/
        }

            /*#dd img:after{*/
            /*display: block;*/
            /*content: '×';*/
            /*position: absolute;*/
            /*top:0;*/
            /*right:0;*/
            /*font-size:20px;*/
            /*color: #000;*/
        /*}*/
        .ddd{
            margin-top:20px;
            margin-bottom:200px;
        }
        .ddd span{
            display: inline-block;
            width:48%;
            margin:2px;
            position: relative;

        }
        .ddd span .remove{
            position: absolute;
            top:0;
            left:0;
            font-size:20px;
            display: inline-block;
            width:100%;
            height:30px;
            line-height: 30px;
            text-align: center;
            background: rgba(0,0,0,.5);
            cursor: pointer;

        }
        @media screen and (max-width: 768px) {
            .jumbotron{
                margin-top: 20px;
                height:auto;
            }
            .form{
                width:100%;
            }
            #dd img{
                margin:2px;
                width:98%;
            }
        }
    </style>
</head>
<body>
<%@include file="../common/header.jsp"%>

<div class="page-wrapper">
    <div class="container">
        <div class="jumbotron">
            <form class='form' enctype='multipart/form-data' action='/worker-console/wid=${wid}/upload-programimg' method='post'>
                <h2 style="color: #000;text-align: center;width: 100%;">请上传您的工程效果图</h2>
                <div class='input-group'>

                        <div id="inputs">
                            <input type="file" id="input" title="请选择图片" name="files"  id="file" multiple accept="image/png,image/jpg,image/gif,image/JPEG"/>点击选择图片

                        </div>
                        <span class='input-group-btn'><button type='submit' class='btn btn-default'>保存</button></span>


                </div>
                <div>
                    <div id='dd' class='ddd' ></div>
                </div>
            </form>
        </div>
    </div>

</div>
<%@include file="../common/footer.jsp"%>
</body>
<%@include file="../common/script.jsp"%>
<script>
    $(document).ready(function () {
        $("#inputs input").change(function () {
            var fil = this.files;
            for (var i = 0; i < fil.length; i++) {
                reads(fil[i]);
            }
        });
    });
    function reads(fil){
        var reader = new FileReader();
        reader.readAsDataURL(fil);
        reader.onload = function()
        {
            document.getElementById("dd").innerHTML += "<span><em class='remove'>删除图片</em><img src='"+reader.result+"'></span>";
            $('.remove').click(function(){
                $(this).parent().remove();
            })

        };

    }

</script>
</html>