var baidu = {
    detail: {
        init: function () {
            var _hmt = _hmt || [];
            (function () {
                var hm = document.createElement("script");
                hm.src = "https://hm.baidu.com/hm.js?0781ff9501fe47ae6427674866472543";
                var s = document.getElementsByTagName("script")[0];
                s.parentNode.insertBefore(hm, s);
            })();
        }
    }
};
var navbar = {
    detail: {
        init: function () {
            var $navLogin = $("#nav-login");
            var $cookie = $.cookie("uid");
            var $headImg = $.cookie("headimg");
            if($cookie !== undefined && $cookie.length > 5){
                $cookie = $cookie.substring(0,5) + "...";
            }
            if ($cookie !== undefined) {
                $navLogin.html(
                    "<li>" +
                    "<a href='/my-account/center' style='padding-top: 7px;padding-bottom: 7px;'>" +
                    "<img src='" + $headImg + "' class='img-circle' /> " + $cookie + "</a>" +
                    "</li>" +
                    "<li>" +
                    "<a href='/account/exit'>注销</a>" +
                    "</li> ");
            } else {
                //$navLogin.append("<li><a href='/account/signin'>登录</a> </li>");
                $navLogin.append("<li>\n" +
                    "\t\t\t\t\t<a class=\"\" href=\"/account/signup\">免费注册</a>\n" +
                    "\t\t\t\t</li>\n" +
                    "\t\t\t\t<li>\n" +
                    "\t\t\t\t\t<a class=\"\" href=\"/account/signin\">用户登录</a>\n" +
                    "\t\t\t\t</li>\n" +
                    "\t\t\t\t<li>\n" +
                    "\t\t\t\t\t<a class=\"\" href=\"/account/signin\">工人登录</a>\n" +
                    "\t\t\t\t</li>\n" +
                    "\t\t\t\t<li>\n" +
                    "\t\t\t\t\t<a target=\"\" href=\"\">施工队入驻</a>\n" +
                    "\t\t\t\t</li>\n" +
                    "\t\t\t\t<li>\n" +
                    "\t\t\t\t\t<a target=\"\" href=\"/account/signin\">商家登录</a>\n" +
                    "\t\t\t\t</li>\n" +
                    "\t\t\t\t<li class=\"erweima\">\n" +
                    "\t\t\t\t\t<a target=\"\" href=\"/customer-service\" >公众号&nbsp;&nbsp;&nbsp;<em class=\"down_down\"></em></a>\n" +
                    "\t\t\t\t\t<img src=\"http://zxbangban.oss-cn-beijing.aliyuncs.com/header/QR_2.jpg\" alt=\"\" />\n" +
                    "\t\t\t\t</li>");
            }
        },
        animate: function () {
            var $navNar = $(".navbar-nav");
            $navNar.find("li").mouseover(function () {
                $(this).css("box-shadow", "0px 2px 0px #dadada inset");
            });
            $navNar.find("li").mouseleave(function () {
                $(this).css("box-shadow", "none");
            });
        }

    }
};

var homepagestate = {
    detail: {
        state: function () {
        },
        a: function (param) {
            var $age = $("#age");
            var $pageView = $("#pageview");
            var $eva = $(".glyphicon-star");
            var $eye = $(".glyphicon-eye-open");

            if (param.length > 0) {
                $.ajax({
                    url: "/w/profile/finder",
                    data: {
                        "id": param
                    },
                    type: "get",
                    success: function (data) {
                        var $count = 0;
                        if (data.length > 2) {
                            var result = JSON.parse(data);
                            var star = result.starEvaluated;
                            var y = result.age;
                            var r = result.deposit;
                            if (y === 0) {
                                y = "--";
                            }
                            if (r === 0) {
                                r = "--";
                            }
                            var a = $($eva).toArray();
                            $(a.slice(0, star)).css("color", "yellow");
                            $age.removeClass("loading").text(y + "年");

                            var $c = $.cookie("pv");
                            $count = result.homePV;
                            if ($c === undefined || $c !== param) {
                                $count += 1;
                                $pageView.removeClass("loading").text($count);
                            }
                        } else {
                            $count += 1;
                            $age.removeClass("loading").text("--年");
                        }
                        $pageView.removeClass("loading").text($count);
                        $.ajax({
                            url: "/w/updateview",
                            data: {
                                "wid": param,
                                "count": $count
                            },
                            type: "get",
                            success: function () {
                                $eye.css("color", "#6bbcea");
                                $.cookie("pv", param);
                            }, error: function (xhr) {
                                alert(xhr.status + " " + xhr.statusText);
                            }
                        });
                    },
                    error: function (xhr) {
                        alert(xhr.status + " " + xhr.statusText);
                    }
                });
            }
        },
        c: function (param) {
            //var $orders = $("#project");
            var $orderImg = $("#projectimg");
            if (param.length > 0) {
                $.ajax({
                    url: "/w/orderdetail/finder",
                    data: {
                        "id": param
                    },
                    type: "get",
                    success: function (data) {
                        var $temp = "";
                        if (data.length > 0) {
                            var result = data.split(";");
                            for (var i = 0; i < result.length; i++) {
                                if (result[i].length ===0) {
                                    continue;
                                }
                                $temp += "<div class='col-md-4 column'><img src='" + result[i] + "' class='img-responsive'/> </div>";
                            }
                            var $text = "<div class='row clearfix'>" + $temp + "</div>";
                           // $orders.html("<h1>data.projectDes</h1>");
                            $orderImg.html($text);
                        } else {
                            //$orders.html("<h1>暂无数据。</h1>");
                            $orderImg.html("<h1>暂无数据</h1>");
                        }
                    },
                    error: function (xhr) {
                        alert(xhr.status + " " + xhr.statusText);
                    }
                });
            }
        }
    }
};

var workerlist = {
    detail: {
        init: function (params) {
            var length = params['length'];
            if (length.length > 0) {
                var $workerModal = $("#modal-container-workers");
                $workerModal.modal({
                    show: true
                });
            }
        },
        showworkers: function () {
            $(".bbb ul li").click(function () {
                var location=$("#city").html();
                var $id = $(this).val();
                var $workerModal = $("#modal-container-workers");
                var $info = "";
                $.ajax(
                    {
                        url: 'jobid=' + $id + '/finder',
                        datatype: 'jsonp',
                        type: 'post',
                        data:{
                          'location':location
                        },
                        success: function (data) {
                            var result = eval('(' + data + ')');
                            var $text = "";
                            if (result.length > 0) {
                                for (var i = 0, l = result.length; i < l; i++) {
                                    var authenticated = result[i].authenticated;
                                    var certificated = result[i].certificated;
                                    var state = result[i].state;
                                    var pr = result[i].pr;
                                    var location = result[i].location;
                                    var overAllRating = result[i].overAllRating;
                                    var $authenticated;
                                    var $authval;
                                    var $PR;
                                    var $prval;
                                    var $certificated;
                                    var $cerval;
                                    var $state = "<span class='label label-success'>可预约</span>";
                                    var $located;
                                    var $rating;
                                    if (location === null) {
                                        $located = "长治市";
                                    } else {
                                        $located = location;
                                    }
                                    if (overAllRating === 0) {
                                        $rating = "--";
                                    } else {
                                        $rating = overAllRating;
                                    }
                                    if(authenticated){
                                        $authenticated = "Worker_Authenticated.png";
                                        $authval="已实名认证";
                                    }else {
                                        $authenticated = "Worker_UnAuthenticated.png";
                                        $authval="未实名认证";
                                    }
                                    if(pr){
                                        $PR = "Worker_Process_Review.png";
                                        $prval="工地已考察";
                                    }else {
                                        $PR = "Worker_Process_UnReview.png";
                                        $prval="工地未考察";
                                    }
                                    if (certificated === true) {
                                        $certificated = "Worker_Certificated.png";
                                        $cerval="平台已认证";
                                    }else {
                                        $certificated = "Worker_UnCertificated.png";
                                        $cerval="平台未认证";
                                    }

                                    if (state === true) {
                                        $state = "<span class='label label-danger'>施工中</span>";
                                    }
                                    $text =
                                        "<div class='col-md-4 col-md-6 col-sm-12 col-xs-12 column'>" +
                                        "<div class='panel panel-default'>" +
                                        "<div class='panel-body'>" +
                                        "<div class='workerCard' style='box-shadow: 0 1px 1px 1px #b8dcf0'>" +
                                        "<a href='/w/find/workerid=" + result[i].workerId + "/home/i="+i+"'>" +
                                        "<ul class='workerCard-header' style='background-color:#6bbcea'>" +
                                        "<li>" +
                                        "<img class=' img-circle worker-head-img-tiny' src='" + result[i].headImgUrl + "'/>" +
                                        "</li>" +
                                        "<li>" +
                                        "<span class='workerCard-header-name'>" + result[i].name + "</span>" +
                                        "</li>" +
                                        "<li class='infocard-header-authen'>" +
                                        "<img class='worker-badge-tiny' src='https://zxbangban.oss-cn-beijing.aliyuncs.com/worker/" + $authenticated + "' title='"+$authval+"' />" +
                                        "<img class=\"worker-badge-tiny\" src='https://zxbangban.oss-cn-beijing.aliyuncs.com/worker/" + $certificated + "' title='"+$cerval+"' />" +
                                        "<img class='worker-badge-tiny' src='https://zxbangban.oss-cn-beijing.aliyuncs.com/worker/" + $PR + "' title='"+$prval+"'/>" +
                                        "</li>" +
                                        "</ul>" +
                                        "</a>" +
                                        "<ul class='workerCard-body'>" +
                                        "<li>" +
                                        "<span>现所在地:</span>" +
                                        "</li>" +
                                        "<li>" +
                                        "<span class=''>" + $located + "</span>" +
                                        "</li>" +
                                        "<li>" + $state +

                                        "</li>" +
                                        "</ul>" +
                                        "<ul class='workerCard-footer'>" +
                                        "<li>" +
                                        "<span>综合评分:</span>" +
                                        "</li>" +
                                        "<li>" +
                                        "<span class=''>" + $rating + "</span>" +
                                        "</li>" +
                                        "<li> " +
                                        "<a href='/c/appoint/workerid=" + result[i].workerId + "/free' class='btn btn-default'>预约</a> " +
                                        "</li>" +
                                        "</ul>" +
                                        "</div>" +
                                        "</div>" +
                                        "</div>" +
                                        "</div>";
                                    $info += $text;
                                }
                            } else {
                                $text = "<div class='col-md-4 col-md-6 col-sm-12 col-xs-12 column workerinfo'>" +
                                    "<div class='panel panel-default'>" +
                                    "<div class='panel-body'>" +
                                    "<div class='jumbotron text-center'>" +
                                    "<h2>当前时间没有可预约工人！</h2>" +
                                    "</div>" +
                                    "</div>" +
                                    "</div>" +
                                    "</div>";
                                $info = $text;
                            }

                            $workerModal.find("#showpanel").html($info);
                            $workerModal.modal(
                                {
                                    show: true
                                }
                            );

                        }
                    }
                );
                return false;
            });
        }
    }
};

//对于微信工人修改状态

var workerstate = {
    detail: {
        validata: function () {
            $("form").submit(function () {
                if (valiTel() === false) {
                    return false;
                }
                if (valiTelCode() === false) {
                    return false;
                }
            });


            var $tel = $("input[name=tel]");
            $tel.blur(function () {
                valiTel()
            });
            var $telCode = $("input[name=telcode]");
            $telCode.blur(function () {
                valiTelCode();
            });
            var $telChChe = "";
            var $telCodeTemp = "";

            var $flag = 0;
            $("#codebtn").click(function () {
                if ($telChChe.length > 0 && $flag === 0) {
                    $.ajax({
                        beforeSend: function () {
                            valiTel();
                        },
                        url: "/valitel/aliyunMNSValidate",
                        data: {
                            "tel": $telChChe
                        },
                        type: "get",
                        success: function (data) {
                            $telCodeTemp = data;
                            checkbtn();
                        },
                        error: function (xhr) {
                            alert(xhr.status + " " + xhr.statusText);
                        }
                    });
                }
            });

            function valiTel() {
                var $temp = $tel.val();
                var $telRegular = /^0?(13[0-9]|15[012356789]|17[013678]|18[0-9]|14[57])[0-9]{8}$/;
                if ($temp.length === 0) {
                    $tel.val("");
                    $tel.attr("placeholder", errorInfo.THE_CELL_PHONE_NUMBER_CANNOT_BE_EMPTY);
                    return false;
                } else if (!($telRegular.test($temp))) {
                    $tel.val("");
                    $tel.attr("placeholder", errorInfo.THE_CELL_PHONE_NUMBER_IS_INCORRECT);
                    return false;
                } else {
                    $telChChe = $temp;
                    return true;
                }


            }

            function checkbtn() {
                $flag = 1;
                var count = 60;
                var $codeBtn = $("#codebtn");
                $codeBtn.addClass("disabled");
                var timer = setInterval(function () {
                    count = count - 1;
                    $codeBtn.text(count + "秒后重发");
                    if (count <= 0) {
                        $codeBtn.text("验证码");
                        $codeBtn.removeClass("disabled");
                        clearInterval(timer);
                        $flag = 0;
                        $telCodeTemp = "";
                    }

                }, 1000)

            }

            function valiTelCode() {
                valiTel();
                if ($telCode.val() !== "" && $telCodeTemp !== "") {
                    if ($telCode.val() === $telCodeTemp) {
                        return true;
                    } else {
                        $telCode.val("");
                        $telCode.attr("placeholder", errorInfo.THE_VERIFICATION_CODE_IS_INCORRECT);
                        return false;
                    }
                } else {
                    $telCode.val("");
                    $telCode.attr("placeholder", errorInfo.NO_VERIFICATION_CODE);
                    return false;
                }
            }

            var errorInfo = {
                THE_CELL_PHONE_NUMBER_CANNOT_BE_EMPTY: "您没有输入手机号！",
                THE_CELL_PHONE_NUMBER_IS_INCORRECT: "手机号码输入不正确！",
                NO_VERIFICATION_CODE: "请填写6位的手机验证码！",
                THE_VERIFICATION_CODE_IS_INCORRECT: "手机验证码不正确！"
            };
        }
    }
};


var appointment = {
    detail: {
        validata: function () {
            $("form").submit(function () {
                if (valiName() === false) {
                    return false;
                }
                if (valiTel() === false) {
                    return false;
                }
                if (valiTelCode() === false) {
                    return false;
                }
            });


            var $name = $("input[name=name]");
            $name.blur(function () {
                valiName();
            });
            var $tel = $("input[name=tel]");
            $tel.blur(function () {
                valiTel()
            });
            var $telCode = $("input[name=telcode]");
            $telCode.blur(function () {
                valiTelCode();
            });
            var $telChChe = "";
            var $telCodeTemp = "";

            var $flag = 0;
            $("#codebtn").click(function () {
                if ($telChChe.length > 0 && $flag === 0) {
                    $.ajax({
                        beforeSend: function () {
                            valiTel();
                        },
                        url: "/valitel/aliyunMNSValidate",
                        data: {
                            "tel": $telChChe
                        },
                        type: "get",
                        success: function (data) {
                            $telCodeTemp = data;
                            checkbtn();
                        },
                        error: function (xhr) {
                            alert(xhr.status + " " + xhr.statusText);
                        }
                    });
                }
            });

            function valiName() {
                var $temp = $name.val();
                var $nameRegular = /^[\u4e00-\u9fa5\\w]+$/;
                if ($temp.length === 0) {
                    $name.attr("placeholder", errorInfo.THE_NAME_CANNOT_BE_EMPTY);
                    return false;
                } else if ($temp.length < 2) {
                    $name.val("");
                    $name.attr("placeholder", errorInfo.THE_NAME_IS_TOO_SHORT);
                    return false;
                } else if ($temp.length > 5) {
                    $name.val("");
                    $name.attr("placeholder", errorInfo.THE_NAME_IS_TOO_LONG);
                    return false;
                } else if (!($nameRegular.test($temp))) {
                    $name.val("");
                    $name.attr("placeholder", errorInfo.NAMES_CAN_ONLY_BE_CHINESE_CHARACTERS);
                    return false;
                } else {
                    return true;
                }
            }

            function valiTel() {
                var $temp = $tel.val();
                var $telRegular = /^0?(13[0-9]|15[012356789]|17[013678]|18[0-9]|14[57])[0-9]{8}$/;
                if ($temp.length === 0) {
                    $tel.val("");
                    $tel.attr("placeholder", errorInfo.THE_CELL_PHONE_NUMBER_CANNOT_BE_EMPTY);
                    return false;
                } else if (!($telRegular.test($temp))) {
                    $tel.val("");
                    $tel.attr("placeholder", errorInfo.THE_CELL_PHONE_NUMBER_IS_INCORRECT);
                    return false;
                } else {
                    $telChChe = $temp;
                    return true;
                }


            }

            function checkbtn() {
                $flag = 1;
                var count = 60;
                var $codeBtn = $("#codebtn");
                $codeBtn.addClass("disabled");
                var timer = setInterval(function () {
                    count = count - 1;
                    $codeBtn.text(count + "秒后重发");
                    if (count <= 0) {
                        $codeBtn.text("验证码");
                        $codeBtn.removeClass("disabled");
                        clearInterval(timer);
                        $flag = 0;
                        $telCodeTemp = "";
                    }

                }, 1000)

            }

            function valiTelCode() {
                valiTel();
                if ($telCode.val() !== "" && $telCodeTemp !== "") {
                    if ($telCode.val() === $telCodeTemp) {
                        return true;
                    } else {
                        $telCode.val("");
                        $telCode.attr("placeholder", errorInfo.THE_VERIFICATION_CODE_IS_INCORRECT);
                        return false;
                    }
                } else {
                    $telCode.val("");
                    $telCode.attr("placeholder", errorInfo.NO_VERIFICATION_CODE);
                    return false;
                }
            }

            var errorInfo = {
                THE_NAME_CANNOT_BE_EMPTY: "名字不能为空！",
                THE_NAME_IS_TOO_SHORT: "名字不能少于2个字！",
                THE_NAME_IS_TOO_LONG: "名字不能多于5个字！",
                NAMES_CAN_ONLY_BE_CHINESE_CHARACTERS: "名字只可以是汉字哦！",
                THE_CELL_PHONE_NUMBER_CANNOT_BE_EMPTY: "您没有输入手机号！",
                THE_CELL_PHONE_NUMBER_IS_INCORRECT: "手机号码输入不正确！",
                NO_VERIFICATION_CODE: "请填写6位的手机验证码！",
                THE_VERIFICATION_CODE_IS_INCORRECT: "手机验证码不正确！"
            };
        }
    }
};

var usersignup = {
    detail: {
        check: function () {
            $("form").submit(function () {
                if (valiName() === false || valiName() === undefined) {
                    return false;
                }
                if (checkpassword() === false || checkpassword() === undefined) {
                    return false;
                }
                if (valiTelCode() === false || valiTelCode() === undefined) {
                    return false;
                }
                if (checkPrivacy() === false || checkPrivacy() === undefined) {
                    return false
                }
            });

            var $name = $("input[name=name]");
            $name.blur(function () {
                valiName();
            });

            var $password = $("input[name=password]");
            $password.blur(function () {
                valipassword();
            });

            var $repassword = $("input[name=repassword]");
            $repassword.blur(function () {
                valirepassword();
                checkpassword();
            });

            var $tel = $("input[name=tel]");
            $tel.blur(function () {
                valiTel()
            });

            var $telCode = $("input[name=telcode]");
            $telCode.blur(function () {
                valiTelCode();
            });

            var $privacy = $("input[name=privacy]");

            var $telChChe = "";
            var $telcodetemp = "";
            var $flag = 0;
            $("#codebtn").click(function () {
                if ($telChChe.length > 0 && $flag === 0) {
                    $.ajax({
                        beforeSend: function () {
                            valiTel();
                        },
                        url: "/valitel/aliyunMNSValidate",
                        data: {
                            "tel": $telChChe
                        },
                        type: "get",
                        success: function (data) {
                            $telcodetemp = data;
                            checkbtn();
                        },
                        error: function (xhr) {
                            alert(xhr.status + " " + xhr.statusText);
                        }
                    });
                }
            });

            function valiName() {
                var $temp = $name.val();
                var $userNameRegular1 = /^[0-9a-zA-Z]*$/g;
                var $userNameRegular2 = /[A-Z]/;
                var $userNameRegular3 = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

                if ($temp.length === 0) {
                    $name.val("");
                    $name.attr("placeholder", errorInfo.USER_NAME_IS_EMPTY);
                    return false;
                }
                if ($temp.length < 6) {
                    $name.val("");
                    $name.attr("placeholder", errorInfo.USER_NAME_IS_TOO_SHORT);
                    return false;
                }
                if ($temp.length > 40) {
                    $name.val("");
                    $name.attr("placeholder", errorInfo.USERNAME_TOO_LONG);
                    return false;
                }
                if ($temp.indexOf("@") < 0 && $temp.indexOf(".") < 0) {
                    if (!($userNameRegular1.test($temp))) {
                        $name.val("");
                        $name.attr("placeholder", errorInfo.USER_NAME_HAS_SPECIAL_SYMBOLS);
                        return false;
                    }
                    if ($userNameRegular2.test($temp)) {
                        $name.val("");
                        $name.attr("placeholder", errorInfo.DON_T_HAVE_UPPERCASE_LETTERS);
                        return false;
                    }
                }
                if ($userNameRegular3.test($temp)) {
                    $name.val("");
                    $name.attr("placeholder", errorInfo.MAILBOX_ERROR);
                    return false;
                }
                return true;

            }

            function valipassword() {
                var $temp = $password.val();
                var $passwordRegular1 = /^\s*$/g;
                var $passwordRegular2 = /[A-Za-z].*[0-9]|[0-9].*[A-Za-z]/;
                if ($temp.length === 0) {
                    $password.val("");
                    $password.attr("placeholder", errorInfo.PASSWORD_TOO_EMPTY);
                    return false;
                }
                if ($temp.length < 6) {
                    $password.val("");
                    $password.attr("placeholder", errorInfo.PASSWORD_PAIR_SHORT);
                    return false;
                }
                if ($temp.length > 16) {
                    $password.val("");
                    $password.attr("placeholder", errorInfo.PASSWORD_TOO_LONG);
                    return false;
                }
                if ($passwordRegular1.test($temp)) {
                    $password.val("");
                    $password.attr("placeholder", errorInfo.PASSWORD_CANNOT_BE_BLANK);
                    return false;
                }
                if (!($passwordRegular2.test($temp))) {
                    $password.val("");
                    $password.attr("placeholder", errorInfo.THE_PASSWORD_HAS_NO_LETTERS);
                    return false;
                }
                return true;

            }

            function valirepassword() {
                var $temp = $repassword.val();
                var $rePasswordRegular1 = /^\s*$/g;
                var $rePasswordRegular2 = /[A-Za-z].*[0-9]|[0-9].*[A-Za-z]/;
                if ($temp.length === 0) {
                    $repassword.val("");
                    $repassword.attr("placeholder", errorInfo.PASSWORD_TOO_EMPTY);
                    return false;
                }
                if ($temp.length < 6) {
                    $repassword.val("");
                    $repassword.attr("placeholder", errorInfo.PASSWORD_PAIR_SHORT);
                    return false;
                }
                if ($temp.length > 16) {
                    $repassword.val("");
                    $repassword.attr("placeholder", errorInfo.PASSWORD_TOO_LONG);
                    return false;
                }
                if ($rePasswordRegular1.test($temp)) {
                    $repassword.val("");
                    $repassword.attr("placeholder", errorInfo.PASSWORD_CANNOT_BE_BLANK);
                    return false;
                }
                if (!($rePasswordRegular2.test($temp))) {
                    $repassword.val("");
                    $repassword.attr("placeholder", errorInfo.THE_PASSWORD_HAS_NO_LETTERS);
                    return false;
                }
                return true;

            }

            function checkpassword() {
                var $temp1 = $password.val();
                var $temp2 = $repassword.val();
                valipassword();
                valirepassword();
                if ($temp1 !== $temp2) {
                    $repassword.val("");
                    $repassword.attr("placeholder", errorInfo.THE_PASSWORD_FOR_THE_TWO_TIME_IS_INCONSISTENT);
                    return false;
                }
                if ($temp1 === $name.val()) {
                    $password.val("");
                    $password.attr("placeholder", errorInfo.PASSWORD_CANNOT_BE_EQUAL_TO_USERNAME);
                    return false;
                }
                return true;
            }

            function valiTel() {
                var $temp = $tel.val();
                var $telRegular = /^0?(13[0-9]|15[012356789]|17[013678]|18[0-9]|14[57])[0-9]{8}$/;
                if ($temp.length === 0) {
                    $tel.val("");
                    $tel.attr("placeholder", errorInfo.THE_CELL_PHONE_NUMBER_CANNOT_BE_EMPTY);
                    return false;
                }
                if (!($telRegular.test($temp))) {
                    $tel.val("");
                    $tel.attr("placeholder", errorInfo.THE_CELL_PHONE_NUMBER_IS_INCORRECT);
                    return false;
                } else {
                    $telChChe = $temp;
                    return true;
                }
            }

            function valiTelCode() {
                valiTel();
                if ($telCode.val() !== "" && $telcodetemp !== "") {
                    if ($telCode.val() === $telcodetemp) {
                        return true;
                    } else {
                        $telCode.val("");
                        $telCode.attr("placeholder", errorInfo.THE_VERIFICATION_CODE_IS_INCORRECT);
                        return false;
                    }
                } else {
                    $telCode.val("");
                    $telCode.attr("placeholder", errorInfo.THE_VERIFICATION_CODE_IS_INCORRECT);
                    return false;
                }
            }

            function checkbtn() {
                $flag = 1;
                var count = 60;
                var $codeBtn = $("#codebtn");
                $codeBtn.addClass("disabled");
                var timer = setInterval(function () {
                    count = count - 1;
                    $codeBtn.text(count + "秒后重发");
                    if (count <= 0) {
                        $codeBtn.text("验证码");
                        $codeBtn.removeClass("disabled");
                        clearInterval(timer);
                        $flag = 0;
                        $telcodetemp = "";
                    }

                }, 1000)

            }

            function checkPrivacy() {
                return $privacy.prop('checked');

            }

            var errorInfo = {
                USER_NAME_IS_TOO_SHORT: "用户名过短！(6-40位)",
                USERNAME_TOO_LONG: "用户名过长！(6-40位)",
                USER_NAME_IS_EMPTY: "用户名不能为空！",
                USER_NAME_HAS_SPECIAL_SYMBOLS: "用户名只能由英文，数字组成",
                DON_T_HAVE_UPPERCASE_LETTERS: "用户名不能有大写字母！",
                PASSWORD_PAIR_SHORT: "密码不能小于6位！",
                PASSWORD_TOO_LONG: "密码不能大于16位！",
                PASSWORD_TOO_EMPTY: "密码不能为空！",
                THE_PASSWORD_HAS_NO_LETTERS: "密码中必须同时有字母和数字！",
                PASSWORD_CANNOT_BE_BLANK: "密码中不能有空格！",
                THE_PASSWORD_FOR_THE_TWO_TIME_IS_INCONSISTENT: "两次输入密码不一致！",
                PASSWORD_CANNOT_BE_EQUAL_TO_USERNAME: "密码不能和用户名一样哦！",
                THE_CELL_PHONE_NUMBER_CANNOT_BE_EMPTY: "手机号码不能为空！",
                THE_CELL_PHONE_NUMBER_IS_INCORRECT: "手机号码不正确！",
                MAILBOX_ERROR: "您在用邮箱作为用户名时，我们发现邮箱是不正确的！",
                NO_VERIFICATION_CODE: "请填写6位的手机验证码！",
                THE_VERIFICATION_CODE_IS_INCORRECT: "手机验证码不正确！"
            };
        }
    }
};

//微信会员注册
var wxsignup = {
    detail: {
        check: function () {
            $("form").submit(function () {
                if (valiName() === false || valiName() === undefined) {
                    return false;
                }
                if (checkpassword() === false || checkpassword() === undefined) {
                    return false;
                }
                if (checkPrivacy() === false || checkPrivacy() === undefined) {
                    return false
                }
            });

            var $name = $("input[name=name]");
            $name.blur(function () {
                valiName();
            });

            var $password = $("input[name=password]");
            $password.blur(function () {
                valipassword();
            });

            var $privacy = $("input[name=privacy]");

            function valipassword() {
                var $temp = $password.val();
                var $passwordRegular1 = /^\s*$/g;
                var $passwordRegular2 = /[A-Za-z].*[0-9]|[0-9].*[A-Za-z]/;
                if ($temp.length === 0) {
                    $password.val("");
                    $password.attr("placeholder", errorInfo.PASSWORD_TOO_EMPTY);
                    return false;
                }
                if ($temp.length < 6) {
                    $password.val("");
                    $password.attr("placeholder", errorInfo.PASSWORD_PAIR_SHORT);
                    return false;
                }
                if ($temp.length > 16) {
                    $password.val("");
                    $password.attr("placeholder", errorInfo.PASSWORD_TOO_LONG);
                    return false;
                }
                if ($passwordRegular1.test($temp)) {
                    $password.val("");
                    $password.attr("placeholder", errorInfo.PASSWORD_CANNOT_BE_BLANK);
                    return false;
                }
                if (!($passwordRegular2.test($temp))) {
                    $password.val("");
                    $password.attr("placeholder", errorInfo.THE_PASSWORD_HAS_NO_LETTERS);
                    return false;
                }
                return true;

            }

            function checkPrivacy() {
                return $privacy.prop('checked');

            }

            var errorInfo = {
                USER_NAME_IS_TOO_SHORT: "用户名过短！(6-40位)",
                USERNAME_TOO_LONG: "用户名过长！(6-40位)",
                USER_NAME_IS_EMPTY: "用户名不能为空！",
                USER_NAME_HAS_SPECIAL_SYMBOLS: "用户名只能由英文，数字组成",
                DON_T_HAVE_UPPERCASE_LETTERS: "用户名不能有大写字母！",
                PASSWORD_PAIR_SHORT: "密码不能小于6位！",
                PASSWORD_TOO_LONG: "密码不能大于16位！",
                PASSWORD_TOO_EMPTY: "密码不能为空！",
                THE_PASSWORD_HAS_NO_LETTERS: "密码中必须同时有字母和数字！",
                PASSWORD_CANNOT_BE_BLANK: "密码中不能有空格！"
            };
        }
    }
};

//微信手机绑定
var telbinding = {
    detail: {
        check: function () {
            $("form").submit(function () {
                if (valiTel() === false || valiTel() === undefined) {
                    return false;
                }
            });

            var $tel = $("input[name=tel]");
            $tel.blur(function () {
                valiTel()
            });

            var $telChChe = "";

            function valiTel() {
                var $temp = $tel.val();
                var $telRegular = /^0?(13[0-9]|15[012356789]|17[013678]|18[0-9]|14[57])[0-9]{8}$/;
                if ($temp.length === 0) {
                    $tel.val("");
                    $tel.attr("placeholder", errorInfo.THE_CELL_PHONE_NUMBER_CANNOT_BE_EMPTY);
                    return false;
                }
                if (!($telRegular.test($temp))) {
                    $tel.val("");
                    $tel.attr("placeholder", errorInfo.THE_CELL_PHONE_NUMBER_IS_INCORRECT);
                    return false;
                } else {
                    $telChChe = $temp;
                    return true;
                }
            }

            var errorInfo = {
                THE_CELL_PHONE_NUMBER_CANNOT_BE_EMPTY: "手机号码不能为空！",
                THE_CELL_PHONE_NUMBER_IS_INCORRECT: "手机号码不正确！",
            };
        }
    }
};


//个人中心首页
var accounthomepage = {
    detail: {
        init: function () {

        },
        a: function (param1, param2) {
            var $appoint = $(".appoint");
            if (param1.length > 0 && param2.length > 0) {
                $.ajax({
                    url: "/my-account/getappoint",
                    data: {
                        "uid": param1,
                        "roleid": param2
                    },
                    type: "get",
                    success: function (data) {
                        if (data !== null && data.length > 2) {
                            var result = JSON.parse(data);
                            var $temp = "";

                            for (var i = 0, l = result.length; i < l; i++) {
                                var time = new Date(result[i].createTime);
                                var address = result[i].programAddress;
                                var a = "";
                                if (address !== null) {

                                    a = address;
                                } else {
                                    a = "暂无";
                                }
                                var notes = result[i].notes;
                                var b = "";
                                if (notes !== null) {
                                    var w = notes.split(";");
                                    b = w[0];
                                } else {
                                    b = "暂无";
                                }
                                $temp += "<tr>" +
                                    "<th>" + result[i].name + "</th>" +
                                    "<th>" + time.getFullYear() + "-" + (time.getMonth() + 1) + "-" + time.getDate() + " " + time.getHours() + ":" + time.getMinutes() + ":" + time.getSeconds() + "</th>" +
                                    "<th>" + a + "</th>" +
                                    "<th>" + b + "</th>" +
                                    "</tr>";
                            }
                            var $cache = "<div class='table-responsive'>" +
                                "<table class='table'>" +
                                "<thead><tr><th>预约姓名</th><th>预约日期</th><th>工程地址</th><th>备注</th></tr></thead><tbody>" + $temp + "</tbody>" +
                                "</table>" +
                                "</div>";
                            $appoint.find("h5").removeClass("loading").html($cache);
                        } else {
                            $appoint.find("h5").removeClass("loading").text("好像未从你的帐户进行任何购买。");
                        }
                    },
                    error: function (xhr) {
                    }
                });
            }
        },
        b: function (param1, param2) {
            var $p = $(".program");
            if (param1.length > 0 && param2.length > 0) {
                $.ajax({
                    url: "",
                    data: {
                        "uid": param1,
                        "roleid": param2
                    },
                    type: "get",
                    success: function (data) {
                        if (data === null) {
                            $p.find("h5").removeClass("loading").html("<span >好像你的账号最近没有工程订单</span><span class='program-state'><a href='/helpcenter'>没有订单？</a></span>");
                        } else {
                            $p.find("h5").removeClass("loading").html("<span >好像你的账号最近没有工程订单</span><span class='program-state'><a href='/helpcenter'>没有订单？</a></span>");
                        }
                    }, error: function (xhr) {
                    }
                });
            }
        },
        c: function (param1, param2) {
            var $p = $(".bill");
            if (param1.length > 0 && param2.length > 0) {
                $.ajax({
                    url: "",
                    data: {
                        "uid": param1,
                        "roleid": param2
                    },
                    type: "get",
                    success: function (data) {
                        if (data === null) {
                            $p.find("h5").removeClass("loading").html("<span >好像你的账号最近没有购买账单</span><span class='program-state'><a href='/invest'>去消费</a></span>");
                        } else {
                            $p.find("h5").removeClass("loading").html("<span >好像你的账号最近没有购买账单</span><span class='program-state'><a href='/invest'>去消费</a></span>");
                        }
                    }, error: function (xhr) {
                    }
                });
            }
        }
    }
};

//客服中心首页
var servicehomepage = {
    detail: {
        init: {},
        a: function (param1, param2) {
            var $appoint = $(".appoint");
            if (param1.length > 0 && param2.length > 0) {
                $.ajax({
                    url: "/my-account/appoint",
                    data: {
                        "uid": param1,
                        "roleid": param2
                    },
                    type: "get",
                    success: function (data) {
                        if (data !== null) {
                            var result = JSON.parse(data);
                            var $temp = "";

                            for (var i = 0, l = 3; i < l; i++) {
                                var time = new Date(result[i].createTime);
                                var address = result[i].programAddress;
                                var a = "";
                                if (address !== null) {
                                    a = address;
                                } else {
                                    a = "暂无";
                                }
                                var notes = result[i].notes;
                                var b = "";
                                if (notes !== null) {
                                    var w = notes.split(";");
                                    b = w[0];
                                } else {
                                    b = "暂无";
                                }
                                $temp += "<tr>" +
                                    "<th>" + result[i].name + "</th>" +
                                    "<th>" + time.getFullYear() + "-" + (time.getMonth() + 1) + "-" + time.getDate() + " " + time.getHours() + ":" + time.getMinutes() + ":" + time.getSeconds() + "</th>" +
                                    "<th>" + a + "</th>" +
                                    "<th>" + b + "</th>" +
                                    "</tr>";
                            }
                            var $cache = "<div class='table-responsive'>" +
                                "<table class='table'>" +
                                "<thead><tr><th>姓名</th><th>预约日期</th><th>地址</th><th>备注</th></tr></thead><tbody>" + $temp + "</tbody>" +
                                "</table>" +
                                "</div>";
                            $appoint.find("h5").removeClass("loading").html($cache);
                        } else {
                            $appoint.find("h5").removeClass("loading").text("好像未从你的帐户进行任何购买。");
                        }
                    },
                    error: function (xhr) {
                    }
                });
            }
        },
        b: function (param1, param2) {
            var $p = $(".program");
            if (param1.length > 0 && param2.length > 0) {
                $.ajax({
                    url: "/my-account/program",
                    data: {
                        "uid": param1,
                        "roleid": param2
                    },
                    type: "get",
                    success: function (data) {
                        if (data === null) {
                            $p.find("h5").removeClass("loading").html("<span >好像你的账号最近没有工程订单</span><span class='program-state'><a href='#'>没有订单？</a></span>");
                        } else {
                            $p.find("h5").removeClass("loading").html("<span >好像你的账号最近没有工程订单</span><span class='program-state'><a href='#'>没有订单？</a></span>");
                        }
                    }, error: function (xhr) {
                    }
                });
            }
        },
        c: function (param1, param2) {
            var $p = $(".workerinfo");
            if (param1.length > 0 && param2.length > 0) {
                $.ajax({
                    url: "/my-account/worker",
                    data: {
                        "uid": param1,
                        "roleid": param2
                    },
                    type: "get",
                    success: function (data) {
                        if (data !== null) {
                            var result = JSON.parse(data);
                            var $temp = "";
                            for (var i = 0, l = result.length; i < l; i++) {
                                var time = new Date(result[i].createTime);
                                $temp += "<tr>" +
                                    "<th>" + result[i].workerId + "</th>" +
                                    "<th>" + result[i].name + "</th>" +
                                    "<th>" + time.getFullYear() + "-" + (time.getMonth() + 1) + "-" + time.getDate() + " " + time.getHours() + ":" + time.getMinutes() + ":" + time.getSeconds() + "</th>" +
                                    "<th>" + result[i].jobId + "</th>" +
                                    "<th>" + result[i].pr + "</th>" +
                                    "<th>" + result[i].certificated + "</th>" +
                                    "</tr>";
                            }
                            var $cache = "<div class='table-responsive'>" +
                                "<table class='table'>" +
                                "<thead><tr><th>工人编号</th><th>姓名</th><th>入驻日期</th><th>工种</th><th>工程考察</th><th>认证状态</th></tr></thead><tbody>" + $temp + "</tbody>" +
                                "</table>" +
                                "</div>";
                            $p.find("h5").removeClass("loading").html($cache);
                        }

                    }, error: function (xhr) {
                    }
                });
            }
        }
    }
};

//工人入驻
var workerregister = {
    detail: {
        init: function () {
            $("form").submit(function () {
                if (valiName() === false || valiName() === undefined) {
                    return false;
                }
                if (valiTel() === false || valiTel() === undefined) {
                    return false;
                }
                if (valiTelCode() === false || valiTelCode() === undefined) {
                    return false;
                }
            });


            var $name = $("input[name=name]");
            $name.blur(function () {
                valiName();
            });
            var $tel = $("input[name=tel]");
            $tel.blur(function () {
                valiTel()
            });
            var $telCode = $("input[name=telcode]");
            $telCode.blur(function () {
                valiTelCode();
            });
            var $telChChe = "";
            var $telCodeTemp = "";
            var $flag = 0;
            $("#codebtn").click(function () {
                if ($telChChe.length > 0 && $flag === 0) {
                    $.ajax({
                        beforeSend: function () {
                            valiTel();
                        },
                        url: "/valitel/aliyunMNSValidate",
                        data: {
                            "tel": $telChChe
                        },
                        type: "get",
                        success: function (data) {
                            $telCodeTemp = data;
                            checkbtn();
                        },
                        error: function (xhr) {
                            alert(xhr.status + " " + xhr.statusText);
                        }
                    });
                }
            });

            function valiName() {
                var $temp = $name.val();
                var $nameRegular = /^[\u4e00-\u9fa5\\w]+$/;
                if ($temp.length === 0) {
                    $name.attr("placeholder", errorInfo.THE_NAME_CANNOT_BE_EMPTY);
                    return false;
                }
                if ($temp.length < 2) {
                    $name.val("");
                    $name.attr("placeholder", errorInfo.THE_NAME_IS_TOO_SHORT);
                    return false;
                }
                if ($temp.length > 5) {
                    $name.val("");
                    $name.attr("placeholder", errorInfo.THE_NAME_IS_TOO_LONG);
                    return false;
                }
                if (!($nameRegular.test($temp))) {
                    $name.val("");
                    $name.attr("placeholder", errorInfo.NAMES_CAN_ONLY_BE_CHINESE_CHARACTERS);
                    return false;
                }

                return true;
            }

            function valiTel() {
                var $temp = $tel.val();
                var $telRegular = /^0?(13[0-9]|15[012356789]|17[013678]|18[0-9]|14[57])[0-9]{8}$/;
                if ($temp.length === 0) {
                    $tel.val("");
                    $tel.attr("placeholder", errorInfo.THE_CELL_PHONE_NUMBER_CANNOT_BE_EMPTY);
                    return false;
                } else if (!($telRegular.test($temp))) {
                    $tel.val("");
                    $tel.attr("placeholder", errorInfo.THE_CELL_PHONE_NUMBER_IS_INCORRECT);
                    return false;
                } else {
                    $telChChe = $temp;
                    return true;
                }


            }

            function valiTelCode() {
                valiTel();
                if ($telCode.val() !== "" && $telCodeTemp !== "") {
                    if ($telCode.val() === $telCodeTemp) {
                        return true;
                    } else {
                        $telCode.val("");
                        $telCode.attr("placeholder", errorInfo.THE_VERIFICATION_CODE_IS_INCORRECT);
                        return false;
                    }
                } else {
                    $telCode.val("");
                    $telCode.attr("placeholder", errorInfo.NO_VERIFICATION_CODE);
                    return false;
                }
            }

            function checkbtn() {
                $flag = 1;
                var count = 60;
                var $codeBtn = $("#codebtn");
                $codeBtn.addClass("disabled");
                var timer = setInterval(function () {
                    count = count - 1;
                    $codeBtn.text(count + "秒后重发");
                    if (count <= 0) {
                        $codeBtn.text("验证码");
                        $codeBtn.removeClass("disabled");
                        clearInterval(timer);
                        $flag = 0;
                        $telCodeTemp = "";
                    }

                }, 1000)

            }

            var errorInfo = {
                THE_NAME_CANNOT_BE_EMPTY: "名字不能为空！",
                THE_NAME_IS_TOO_SHORT: "名字不能少于2个字！",
                THE_NAME_IS_TOO_LONG: "名字不能多于5个字！",
                NAMES_CAN_ONLY_BE_CHINESE_CHARACTERS: "名字只可以是汉字哦！",
                THE_CELL_PHONE_NUMBER_CANNOT_BE_EMPTY: "您没有输入手机号！",
                THE_CELL_PHONE_NUMBER_IS_INCORRECT: "手机号码输入不正确！",
                NO_VERIFICATION_CODE: "请填写6位的手机验证码！",
                THE_VERIFICATION_CODE_IS_INCORRECT: "手机验证码不正确！"
            };
        }
    }
};

//免费报价
var processQuoted = {
    detail:{
        init : function () {
            $("form").submit(function () {
                if (verifyArea() === false || verifyArea() === undefined) {
                    return false;
                }
                if (verifyTel() === false || verifyTel() === undefined) {
                    return false;
                }
            });
            var $area = $("input[name=area]");
            $area.blur(function () {
                verifyArea();
            });
            var $tel = $("input[name=tel]");
            $tel.blur(function () {
                verifyTel();
            });
            
            function verifyArea() {
                var $temp = $area.val();
                var $areaRegular = /^[0-9]*$/;
                if ($temp.length === 0) {
                    $area.val("");
                    $area.attr("placeholder", errorInfo.THE_AREA_IS_EMPTY);
                    return false;
                } else {
                    return true;
                }
            }
            function verifyTel() {
                var $temp = $tel.val();
                var $telRegular = /^0?(13[0-9]|15[012356789]|17[013678]|18[0-9]|14[57])[0-9]{8}$/;
                if ($temp.length === 0) {
                    $tel.val("");
                    $tel.attr("placeholder", errorInfo.THE_CELL_PHONE_NUMBER_CANNOT_BE_EMPTY);
                    return false;
                } else if (!($telRegular.test($temp))) {
                    $tel.val("");
                    $tel.attr("placeholder", errorInfo.THE_CELL_PHONE_NUMBER_IS_INCORRECT);
                    return false;
                } else {
                    return true;
                }
            }
            var errorInfo = {
                THE_AREA_IS_EMPTY : "不能为空",
                THE_CELL_PHONE_NUMBER_CANNOT_BE_EMPTY: "您没有输入手机号！",
                THE_CELL_PHONE_NUMBER_IS_INCORRECT: "手机号码输入不正确！"
            }
        },
        window : function () {
            var a = $("#a");
            var b = $("#b");
            var c = $(".container-fluid");
            b.hide();
            a.click(function () {
                c.slideUp("slow");
                b.fadeIn(1000);
            });
            b.click(function () {
                b.fadeOut(1000);
                c.slideDown("slow");
            });
        }
    }
};

var workerManager = {
    detail: {
        init: function () {

        },
        notice: function (param) {
            var a;
            a = param;
            var c = $(a).parent();
            var b = confirm("确认发送短信提醒?");
            if (b === true) {
                $.ajax({
                    url: "/worker-console/notification",
                    data: {
                        "wid": a.val()
                    },
                    type: "get",
                    success: function (result) {

                        if (result !== null && result === "success") {
                            alert("短信发送成功");
                            $(c).parent().addClass("success");
                        } else {
                            alert("短信发送失败");
                            $(c).parent().addClass("warning");
                        }
                    },
                    error: function (xhr) {
                        alert(xhr.status + " " + xhr.statusText);
                    }
                });
            }
        },
        managerment: function (param) {
            var $i = param;
            var $wm = $("#modal-container-manager-detail");
            if ($i.val().length > 0) {
                $.ajax({
                    url: "/worker-console/detail",
                    data: {
                        "wid": $i.val()
                    },
                    type: "get",
                    success: function (data) {
                        var result = JSON.parse(data);
                        var $isShow = result.workerInfo.show;
                        var $show;
                        var $auth = result.workerInfo.authenticated;
                        var $authenticated;

                        var $cert = result.workerInfo.certificated;
                        var $certificated;
                        var $state = result.workerInfo.state;
                        var $stated;
                        var $pr = result.workerInfo.pr;
                        var $view;
                        var $projectImg = result.workerInfo.projectImgUrl;
                        var $images;
                        if($pr){
                            $view = "已考察";
                        }else {
                            $view = "未考察";
                        }
                        if ($projectImg === null) {
                            $images = "";
                        } else {
                            $images = $projectImg.split(";");
                        }
                        if ($isShow) {
                            $show = "白名单";
                        } else {
                            $show = "黑名单";
                        }
                        if ($auth) {
                            $authenticated = "已认证";
                        } else {
                            $authenticated = "未认证";
                        }
                        if ($state) {
                            $stated = "施工中";
                        } else {
                            $stated = "空闲中";
                        }
                        if ($cert) {
                            $certificated = "已认证";
                        } else {
                            $certificated = "未认证";
                        }
                        var $currentTime = new Date(result.workerInfo.createTime);
                        $wm.find(".workerid").text(result.workerInfo.workerId);
                        $wm.find(".name").text(result.workerInfo.name);
                        $wm.find(".deposit").text(result.workerProfile.deposit);
                        $wm.find(".himg").html("<img src='" + result.workerInfo.headImgUrl + "'>" +
                            "<button class='btn btn-link pull-right edit' type='button' value='aa' onclick='ez(this)'>编辑</button>");
                        $wm.find(".address").text(result.workerInfo.address);
                        $wm.find(".location").text(result.workerInfo.location);
                        $wm.find(".auth").text($authenticated);
                        $wm.find(".cert").text($certificated);
                        $wm.find(".pr").text($view);
                        $wm.find(".tel").text(result.workerInfo.tel);
                        $wm.find(".jobid").text(result.workerInfo.jobId);
                        $wm.find(".reftel").text(result.workerInfo.refererTel);
                        $wm.find(".show").text($show);
                        $wm.find(".time").text($currentTime.toUTCString());
                        $wm.find(".age").text(result.workerProfile.age);
                        $wm.find(".stareva").text(result.workerProfile.starEvaluated);
                        $wm.find(".state").text($stated);
                        $wm.find(".pv").text(result.workerProfile.homePV);
                        $wm.find(".oarating").text(result.workerInfo.overAllRating);
                        $wm.find(".weighted").text(result.workerProfile.weighted);
                        var $text = "";
                        if ($images.length > 0) {
                            for (var i = 0; i < $images.length; i++) {
                                if ($images[i].length === 0) {
                                    continue;
                                }
                                $text += "<div class='p_img'><img src='" + $images[i] + "' class='img-responsive'/>" +
                                    "<button class='btn btn-link pull-right edit' type='button' " +
                                    "onclick='epi(this)'>编辑" +
                                    "</button></div>";
                            }
                        }
                        $wm.find(".projectimg").html($text);
                        $(".edit").val(result.workerInfo.workerId);
                        $wm.modal({
                            show: true
                        });
                    },
                    error: function (xhr) {
                        alert(xhr.status + " " + xhr.statusText);
                    }
                });
            }
        },
        changeStateTrue : function (param) {
            var $i = param;
            if($i.val().length > 0){
                $.ajax({
                    url: "/worker-console/changeStateTrue",
                    data:{
                        "wid" : $i.val()
                    },
                    type : "get",
                    success : function (result) {
                        if (result !== null && result === "1") {
                            alert("修改成功");
                        } else {
                            alert("修改失败");
                        }
                    },error : function (xhr) {
                        alert(xhr.status + " " + xhr.statusText);
                    }
                });
            }
        },
        changeStateFalse : function (param) {
            var $i = param;
            if($i.val().length > 0){
                $.ajax({
                    url: "/worker-console/changeStateFalse",
                    data:{
                        "wid" : $i.val()
                    },
                    type : "get",
                    success : function (result) {
                        if (result !== null && result === "1") {
                            alert("修改成功");
                        } else {
                            alert("修改失败");
                        }
                    },error : function (xhr) {
                        alert(xhr.status + " " + xhr.statusText);
                    }
                });
            }
        }
    }
};
var util = {
    detil : {
        init : function () {

        },
        //选项卡封装
        tabFun : function (aBtn, aDiv) {
            for (var i = 0; i < aBtn.length; i++) {
                aBtn[i].index = i;
                aBtn[i].onclick = function () {
                    for (var i = 0; i < aBtn.length; i++) {//先清空所有的样式
                        aBtn[i].className = '';
                        aDiv[i].className = '';
                    }
                    this.className = 'on';
                    aDiv[this.index].className = 'show';
                };
            }
        },
        //封装ajax代码
        ajax : function () {
            var ajaxData = {
                type: arguments[0].type || "GET",
                url: arguments[0].url || "",
                async: arguments[0].async || "true",
                data: arguments[0].data || null,
                dataType: arguments[0].dataType || "text",
                contentType: arguments[0].contentType || "application/x-www-form-urlencoded",
                beforeSend: arguments[0].beforeSend || function () {
                },
                success: arguments[0].success || function () {
                },
                error: arguments[0].error || function () {
                }
            };
            ajaxData.beforeSend();
            var xhr = createXMLHttpRequest();
            xhr.responseType = ajaxData.dataType;
            xhr.open(ajaxData.type, ajaxData.url, ajaxData.async);
            xhr.setRequestHeader("Content-Type", ajaxData.contentType);
            xhr.send(convertData(ajaxData.data));
            xhr.onreadystatechange = function () {
                if (xhr.readyState === 4) {
                    if (xhr.status === 200) {
                        ajaxData.success(xhr.response)
                    } else {
                        ajaxData.error()
                    }
                }
            }
        },
        //封装getByClassName代码
        getByClassName : function (oParent, sClassName) {
            if (oParent.getElementsByClassName(sClassName)) {
                return oParent.getElementsByTagName('*');
            } else {
                var aRes = [];
                var aChild = oParent.getElementsByTagName('*');
                for (var i = 0; i < aChild.length; i++) {
                    var obj = aChild[i];
                    var oTmp = obj.className.split(' ');
                    for (var j = 0; j < oTmp.length; j++) {
                        if (oTmp[j] === sClassName) {
                            aRes.push(obj)
                        }
                    }
                    return aRes;
                }
            }
        },
        isPC : function () {
            var userAgentInfo = navigator.userAgent;
            var Agents = ["Android", "iPhone",
                "SymbianOS", "Windows Phone",
                "iPad", "iPod"];
            var flag = true;
            for (var v = 0; v < Agents.length; v++) {
                if (userAgentInfo.indexOf(Agents[v]) > 0) {
                    flag = false;
                    break;
                }
            }
            return flag;
        }

    }
};


function createXMLHttpRequest() {
    if (window.ActiveXObject) {
        return new ActiveXObject("Microsoft.XMLHTTP");
    } else if (window.XMLHttpRequest) {
        return new XMLHttpRequest();
    }
}

function convertData(data) {
    if (typeof data === 'object') {
        var convertResult = "";
        for (var c in data) {
            convertResult += c + "=" + data[c] + "&";
        }
        convertResult = convertResult.substring(0, convertResult.length - 1);
        return convertResult;
    } else {
        return data;
    }
}

//封装getByClassName代码
function getByClassName(oParent,sClassName){
    if(oParent.getElementsByClassName(sClassName)){
        return oParent.getElementsByTagName('*');
    }else{
        var aRes =[];
        var aChild = oParent.getElementsByTagName('*');
        for(var i=0;i<aChild.length;i++){
            var obj = aChild[i];
            var oTmp = obj.className.split(' ');
            for(var j=0;j<oTmp.length;j++){
                if(oTmp[j] == sClassName){
                    aRes.push(obj)
                }
            }
            return aRes;
        }
    }
}
var lozyLoad = (function(){
    var clock;
    function init(){
        $(window).on('scroll', function(){
            if(clock){
                clearTimeout(clock);
            }
            clock = setTimeout(function(){
                checkShow();
            },200);

        })
        checkShow();

    }
    function checkShow(){
        $('.lazyload img').each(function(){
            var $cur = $(this);
            if($cur.attr('isLoaded')){
                return
            }
            if(shouldShow($cur)){
                showImg($cur);
            }
        })
    }
    function shouldShow($node){
        var scrollH = $(window).scrollTop(),
            winH = $(window).height(),
            top = $node.offset().top;
        if(top < winH + scrollH){
            return true;
        }else{
            return false;
        }
    }
    function showImg($node){
        $node.attr('src',$node.attr('data-img'));
        $node.attr('isLoaded',true);

    }
    return {
        init:init
    }

})();




