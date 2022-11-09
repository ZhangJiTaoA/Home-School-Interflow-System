<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap -->
    <link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <script src="./bootstrap/js/bootstrap.min.js"></script>
    <link href="./css/mycss.css" rel="stylesheet">
    <script src="./js/zh_CN.js"></script>
    <script src="./js/bootstrapValidator.min.js"></script>
    <link href="./css/bootstrapValidator.min.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
    <title>change_password</title>
</head>
<body>
<!--  设置导航栏  -->
<div class="row">
<nav class="navbar navbar-inverse navbar-fixed-top ">
    <div class="container">
        <div class="navbar-header">
            <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigator</span>  <!--sr-only 是出来屏幕阅读器外无影响，用于帮助残障人士-->
            </button>
            <a class="navbar-brand" href="#">家校系统：修改密码</a>
        </div>

        <div class="navbar-collapse collapse" role="navigation">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">关于</a></li>
            </ul>
        </div>
    </div>
</nav>
</div>
<br>
<br>
<br>
<br>
<div class="row">
<form action="adminController/changePassword" method="post" class="form-horizontal col-lg-4 col-lg-offset-4 col-md-6 col-md-offset-3 col-sm-7 col-sm-offset-3 col-xs-10 col-xs-offset-2">
    <input name="type" value="${param.type}" hidden>
    <input name="phoneno" value="${param.phoneno}" hidden>
    <input name="pTableName" value="${param.pTN}" hidden>
    <div class="form-group">
        <label for="input-original-password">原密码：</label>
        <input name="originalPassword" type="password" class="form-control" id="input-original-password" placeholder="Password">
    </div>
    <div class="form-group">
        <label for="input-changed-password">修改后密码：</label>
        <input name="changedPassword" type="password" class="form-control" id="input-changed-password" placeholder="Password">
    </div>
    <button type="reset" class="btn btn-primary">重置</button>
    <button type="submit" class="btn btn-success">提交</button>
</form>
</div>
</body>
<input id="flagg" value="${sessionScope.flagg }" hidden>
<input id="err" value="${sessionScope.err }" hidden>
<script type="text/javascript">
	if(document.getElementById("err").value=="no"){
		alert("修改成功");
	}else if(document.getElementById("err").value=="1"){
		alert("原密码错误");
	}else if(document.getElementById("err").value=="2"){
		alert("请重新登录");
	}
	<% session.removeAttribute("err"); %>
	if(document.getElementById("flagg").value=="1"){
		<% session.removeAttribute("flagg"); %>
		window.close();
	}
	$(function () {
        $('form').bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
            	originalPassword: {
                    message: '用户名验证失败',
                    validators: {
                    	notEmpty: {
                            message: '密码不能为空'
                        },
                        /* stringLength: {
                            min: 6,
                            max: 18,
                            message: '用户名长度必须在6到18位之间'
                        }, */
                        regexp: {
                            regexp: /^[a-zA-Z0-9_]+$/,
                            message: '用户名只能包含大写、小写、数字和下划线'
                        }
                    }
                },
                changedPassword: {
                    validators: {
                        notEmpty: {
                            message: '新密码不能为空'
                        },
                        stringLength: {
                            min: 6,
                            max: 18,
                            message: '用户名长度必须在6到18位之间'
                        }, 
                        regexp: {
                            regexp: /^[a-zA-Z0-9_]+$/,
                            message: '用户名只能包含大写、小写、数字和下划线'
                        }
                    }
                },
            }
        });
    });
</script>
</html>