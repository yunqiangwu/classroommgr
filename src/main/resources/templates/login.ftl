<#--${enableCaptcha}-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>湖南农业大学教育学院毕业设计课堂管理系统用户登录</title>
    <link href="${request.contextPath}/static/css/login.css" rel="stylesheet" rev="stylesheet" type="text/css"
          media="all"/>
    <script type="text/javascript" src="${request.contextPath}/static/js/jQuery1.7.js"></script>
    <script type="text/javascript" src="${request.contextPath}/static/js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="${request.contextPath}/static/js/jquery1.42.min.js"></script>
    <script type="text/javascript" src="${request.contextPath}/static/js/jquery.SuperSlide.js"></script>
    <script type="text/javascript" src="${request.contextPath}/static/js/Validform_v5.3.2_min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var $tab_li = $('#tab ul li');


            var t;
            $tab_li.mouseenter(function () {
                var _this = this;
                t = setTimeout(function () {
                    $(_this).addClass('selected').siblings().removeClass('selected');
                    var index = $tab_li.index(_this);
                    $('div.tab_box > div').eq(index).show().siblings().hide();
                }, 500);
            }).mouseleave(function () {
                clearTimeout(t);
            });


            $tab_li.click(function () {
                $(this).addClass('selected').siblings().removeClass('selected');
                var index = $tab_li.index(this);
                $('div.tab_box > div').eq(index).show().siblings().hide();
            });


            /*
			$tab_li.click(function(){
				$(this).addClass('selected').siblings().removeClass('selected');
				var index = $tab_li.index(this);
				$('div.tab_box > div').eq(index).show().siblings().hide();
			});
			*/
        });
    </script>
    <script type="text/javascript">
        $(function () {

<#if enableCaptcha == "true">
            $('.captcha').click(function () {
<#--//${request.contextPath}-->
                $(this).attr('src', '${request.contextPath}/captcha/getcaptcha?t=' + new Date().getTime());
            });
</#if>
            /*学生登录信息验证*/
            $("#stu_username_hide").focus(function () {
                var username = $(this).val();
                if (username == '输入学号') {
                    $(this).val('');
                }
            });
            $("#stu_username_hide").focusout(function () {
                var username = $(this).val();
                if (username == '') {
                    $(this).val('输入学号');
                }
            });
            $("#stu_password_hide").focus(function () {
                var username = $(this).val();
                if (username == '输入密码') {
                    $(this).val('');
                }
            });
            $("#stu_password_hide").focusout(function () {
                var username = $(this).val();
                if (username == '') {
                    $(this).val('输入密码');
                }
            });
<#if enableCaptcha == "true">
            $("#stu_code_hide").focus(function () {
                var username = $(this).val();
                if (username == '输入验证码') {
                    $(this).val('');
                }
            }).focusout(function () {
                var username = $(this).val();
                if (username == '') {
                    $(this).val('输入验证码');
                }
            });
            </#if>
            $(".stu_login_error").Validform({
                tiptype: function (msg, o, cssctl) {
                    var objtip = $(".stu_error_box");
                    cssctl(objtip, o.type);
                    objtip.text(msg);
                },
                ajaxPost: true,
                callback: function (data) {
                    //返回数据data是json对象，{"info":"demo info","status":"y"}
                    //info: 输出提示信息;
                    //status: 返回提交数据的状态,是否提交成功。如可以用"y"表示提交成功，"n"表示提交失败，在ajax_post.php文件返回数据里自定字符，主要用在callback函数里根据该值执行相应的回调操作;
                    //你也可以在ajax_post.php文件返回更多信息在这里获取，进行相应操作；
                    //ajax遇到服务端错误时也会执行回调，这时的data是{ status:**, statusText:**, readyState:**, responseText:** }；

                    //这里执行回调操作;
                    //注意：如果不是ajax方式提交表单，传入callback，这时data参数是当前表单对象，回调函数会在表单验证全部通过后执行，然后判断是否提交表单，如果callback里明确return false，则表单不会提交，如果return true或没有return，则会提交表单。
                    var objtip = $(".stu_error_box");
                    if (data.success) {
                        objtip.text(data.message + "\n两秒后跳转到登录前的页面！");
                        setTimeout(function () {
                            location.href = $('#returnUrl').val();
                        }, 2000);
                    } else {
                        objtip.text(data.message || '信息验证错误' + "\n请重新登录！");
                        objtip.next('form').find('.captcha').click();
                    }
                }
            });
            /*导师登录信息验证*/
            $("#tea_username_hide").focus(function () {
                var username = $(this).val();
                if (username == '输入教工号') {
                    $(this).val('');
                }
            });
            $("#tea_username_hide").focusout(function () {
                var username = $(this).val();
                if (username == '') {
                    $(this).val('输入教工号');
                }
            });
            $("#tea_password_hide").focus(function () {
                var username = $(this).val();
                if (username == '输入密码') {
                    $(this).val('');
                }
            });
            $("#tea_password_hide").focusout(function () {
                var username = $(this).val();
                if (username == '') {
                    $(this).val('输入密码');
                }
            });

<#if enableCaptcha == "true">
            $("#tea_code_hide").focus(function () {
                var username = $(this).val();
                if (username == '输入验证码') {
                    $(this).val('');
                }
            }).focusout(function () {
                var username = $(this).val();
                if (username == '') {
                    $(this).val('输入验证码');
                }
            });
            </#if>
            $(".tea_login_error").Validform({
                tiptype: function (msg, o, cssctl) {
                    var objtip = $(".tea_error_box");
                    cssctl(objtip, o.type);
                    objtip.text(msg);
                },
                ajaxPost: true,
                callback: function (data) {
                    //返回数据data是json对象，{"info":"demo info","status":"y"}
                    //info: 输出提示信息;
                    //status: 返回提交数据的状态,是否提交成功。如可以用"y"表示提交成功，"n"表示提交失败，在ajax_post.php文件返回数据里自定字符，主要用在callback函数里根据该值执行相应的回调操作;
                    //你也可以在ajax_post.php文件返回更多信息在这里获取，进行相应操作；
                    //ajax遇到服务端错误时也会执行回调，这时的data是{ status:**, statusText:**, readyState:**, responseText:** }；

                    //这里执行回调操作;
                    //注意：如果不是ajax方式提交表单，传入callback，这时data参数是当前表单对象，回调函数会在表单验证全部通过后执行，然后判断是否提交表单，如果callback里明确return false，则表单不会提交，如果return true或没有return，则会提交表单。
                    var objtip = $(".tea_error_box");
                    if (data.success) {
                        objtip.text(data.message + "\n两秒后跳转到登录前的页面！");
                        setTimeout(function () {
                            location.href = $('#returnUrl').val();
                        }, 2000);
                    } else {
                        objtip.text(data.message || '信息验证错误' + "\n请重新登录！");
                        objtip.next('form').find('.captcha').click();
                    }
                }
            });
            /*教务登录信息验证*/
            $("#sec_username_hide").focus(function () {
                var username = $(this).val();
                if (username == '输入教务号') {
                    $(this).val('');
                }
            });
            $("#sec_username_hide").focusout(function () {
                var username = $(this).val();
                if (username == '') {
                    $(this).val('输入教务号');
                }
            });
            $("#sec_password_hide").focus(function () {
                var username = $(this).val();
                if (username == '输入密码') {
                    $(this).val('');
                }
            });
            $("#sec_password_hide").focusout(function () {
                var username = $(this).val();
                if (username == '') {
                    $(this).val('输入密码');
                }
            });
<#if enableCaptcha == "true">
    $("#sec_code_hide").focus(function () {
        var username = $(this).val();
        if (username == '输入验证码') {
            $(this).val('');
        }
    }).focusout(function () {
        var username = $(this).val();
        if (username == '') {
            $(this).val('输入验证码');
        }
    });
</#if>

            $(".sec_login_error").Validform({
                tiptype: function (msg, o, cssctl) {
                    var objtip = $(".sec_error_box");
                    cssctl(objtip, o.type);
                    objtip.text(msg);
                },
                ajaxPost: true,
                callback: function (data) {
                    //返回数据data是json对象，{"info":"demo info","status":"y"}
                    //info: 输出提示信息;
                    //status: 返回提交数据的状态,是否提交成功。如可以用"y"表示提交成功，"n"表示提交失败，在ajax_post.php文件返回数据里自定字符，主要用在callback函数里根据该值执行相应的回调操作;
                    //你也可以在ajax_post.php文件返回更多信息在这里获取，进行相应操作；
                    //ajax遇到服务端错误时也会执行回调，这时的data是{ status:**, statusText:**, readyState:**, responseText:** }；

                    //这里执行回调操作;
                    //注意：如果不是ajax方式提交表单，传入callback，这时data参数是当前表单对象，回调函数会在表单验证全部通过后执行，然后判断是否提交表单，如果callback里明确return false，则表单不会提交，如果return true或没有return，则会提交表单。
                    var objtip = $(".sec_error_box");
                    if (data.success) {
                        objtip.text(data.message + "\n两秒后跳转到登录前的页面！");
                        setTimeout(function () {
                            location.href = $('#returnUrl').val();
                        }, 2000);
                    } else {
                        objtip.text(data.message || '信息验证错误' + "\n请重新登录！");
                        objtip.next('form').find('.captcha').click();

                    }
                }
            });
        });
    </script>
    <script type="text/javascript">
        $(function () {
            $(".screenbg ul li").each(function () {
                $(this).css("opacity", "0");
            });
            $(".screenbg ul li:first").css("opacity", "1");
            var index = 0;
            var t;
            var li = $(".screenbg ul li");
            var number = li.size();

            function change(index) {
                li.css("visibility", "visible");
                li.eq(index).siblings().animate({opacity: 0}, 3000);
                li.eq(index).animate({opacity: 1}, 3000);
            }

            function show() {
                index = index + 1;
                if (index <= number - 1) {
                    change(index);
                } else {
                    index = 0;
                    change(index);
                }
            }

            t = setInterval(show, 8000);
            //根据窗口宽度生成图片宽度
            var width = $(window).width();
            $(".screenbg ul img").css("width", width + "px");
        });
    </script>
</head>

<body>
<div id="tab">
    <ul class="tab_menu">
        <li class="selected">学生登录</li>
        <li>导师登录</li>
        <li>教务登录</li>
    </ul>
    <div class="tab_box">
        <!-- 学生登录开始 -->
        <div>
            <div class="stu_error_box"></div>
            <form action="/login" method="post" class="stu_login_error">
                <div >
                    <label>学&nbsp;&nbsp;&nbsp;号：</label>
                    <input type="text" id="stu_username_hide" name="username" value="test1" nullmsg="学号不能为空！"
                           datatype="s3-18" errormsg="学号范围在3~18个字符之间！" sucmsg="学号验证通过！"/>
                    <!--ajaxurl="demo/valid.jsp"-->
                </div>
                <div >
                    <label>密&nbsp;&nbsp;&nbsp;码：</label>
                    <input type="password" id="stu_password_hide" name="password" value="12345678" nullmsg="密码不能为空！"
                           datatype="*3-16" errormsg="密码范围在3~16位之间！" sucmsg="密码验证通过！"/>
                </div>
<#if enableCaptcha == "true">
                <div >
                    <label>验证码：</label>
                    <input type="text" id="stu_code_hide" name="code" value="xxxx" nullmsg="验证码不能为空！" datatype="*4-4"
                           errormsg="验证码有4位数！" sucmsg="验证码验证通过！"/>
                    <img src="${request.contextPath}/captcha/getcaptcha" class="captcha" title="点击更换" alt="验证码占位图"/>
                </div>
</#if>
                <div >
                    <input type="checkbox" name="remember">
                    <label>记住密码</label>
                </div>
                <div id="login">
                    <button type="submit">登录</button>
                </div>
            </form>
        </div>
        <!-- 学生登录结束-->
        <!-- 导师登录开始-->
        <div class="hide">
            <div class="tea_error_box"></div>
            <form action="/login" method="post" class="tea_login_error">
                <div >
                    <label>教工号：</label>
                    <input type="text" id="tea_username_hide" name="username" value="test1" nullmsg="教工号不能为空！"
                           datatype="s3-18" errormsg="教工号范围在3~18个字符之间！" sucmsg="教工号验证通过！"/>
                    <!--ajaxurl="demo/valid.jsp"-->
                </div>
                <div >
                    <label>密&nbsp;&nbsp;&nbsp;码：</label>
                    <input type="password" id="tea_password_hide" name="password" value="12345678" nullmsg="密码不能为空！"
                           datatype="*3-16" errormsg="密码范围在3~16位之间！" sucmsg="密码验证通过！"/>
                </div>
            <#if enableCaptcha == "true">

                <div >
                    <label>验证码：</label>
                    <input type="text" id="tea_code_hide" name="code" value="输入验证码" nullmsg="验证码不能为空！" datatype="*4-4"
                           errormsg="验证码有4位数！" sucmsg="验证码验证通过！"/>
                    <img src="${request.contextPath}/captcha/getcaptcha" class="captcha" title="点击更换" alt="验证码占位图"/>
                </div>
</#if>
                <div >
                    <input type="checkbox" name="remember">
                    <label>记住密码</label>
                </div>
                <div id="login">
                    <button type="submit">登录</button>
                </div>
            </form>
        </div>
        <!-- 导师登录结束-->
        <!-- 教务登录开始-->
        <div class="hide">
            <div class="sec_error_box"></div>
            <form action="/login" method="post" class="sec_login_error">
                <div >
                    <label>教务号：</label>
                    <input type="text" id="sec_username_hide" name="username" value="输入教务号" nullmsg="教务号不能为空！"
                           datatype="s3-18" errormsg="教务号范围在3~18个字符之间！" sucmsg="教务号验证通过！"/>
                    <!--ajaxurl="demo/valid.jsp"-->
                </div>
                <div >
                    <label>密&nbsp;&nbsp;&nbsp;码：</label>
                    <input type="password" id="sec_password_hide" name="password" value="123456" nullmsg="密码不能为空！"
                           datatype="*3-16" errormsg="密码范围在3~16位之间！" sucmsg="密码验证通过！"/>
                </div>
            <#if enableCaptcha == "true">
                <div >
                    <label>验证码：</label>
                    <input type="text" id="sec_code_hide" name="code" value="输入验证码" nullmsg="验证码不能为空！" datatype="*4-4"
                           errormsg="验证码有4位数！" sucmsg="验证码验证通过！"/>
                    <img src="${request.contextPath}/captcha/getcaptcha" class="captcha" title="点击更换" alt="验证码占位图"/>
                </div>
                </#if>

                <div >
                    <input type="checkbox" name="remember">
                    <label>记住密码</label>
                </div>
                <div id="login">
                    <button type="submit">登录</button>
                </div>
            </form>
        </div>
        <!-- 教务登录结束-->
    </div>
</div>
<div class="bottom">©2014 Leting <a href="javascript:;" target="_blank">关于</a> <span>京ICP证030173号</span> <a
        href="http://www.mycodes.net/" target="_blank">源码之家</a><img width="13" height="16"
                                                                    src="${request.contextPath}/static/images/copy_rignt_24.png"/>
</div>
<div class="screenbg">
    <ul>
        <li><a href="javascript:;"><img src="${request.contextPath}/static/images/0.jpg"></a></li>
        <li><a href="javascript:;"><img src="${request.contextPath}/static/images/1.jpg"></a></li>
        <li><a href="javascript:;"><img src="${request.contextPath}/static/images/2.jpg"></a></li>
    </ul>
</div>

<input type="hidden" id="returnUrl" name="returnUrl" value="${returnUrl}"/>
</body>
</html>

