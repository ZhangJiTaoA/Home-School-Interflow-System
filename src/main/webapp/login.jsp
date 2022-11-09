<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html  PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
    <link href="${pageContext.request.contextPath}/css/mycss.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/zh_CN.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrapValidator.min.js"></script>
    <link href="${pageContext.request.contextPath}/css/bootstrapValidator.min.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
    <title>Home-School--Login</title>
</head>
<body>
	<!--  设置导航栏  -->
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigator</span>  <!--sr-only 是出来屏幕阅读器外无影响，用于帮助残障人士-->
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">家校系统</a>
        </div>
        <div class="navbar-collapse collapse" role="navigation">
            <ul class="nav navbar-nav">
                <li><a href="#">登录</a></li>
                <!-- <li><a href="#" class="dropdown-toggle" data-toggle="dropdown">link
                    <b class="caret"></b>
                </a>
                    <ul class="dropdown-menu" id="drop-down-list">
                        <li><a href="#">Link1</a></li>
                        <li><a href="#">Link2</a></li>
                    </ul>
                </li>
                <li><a href="#">link</a></li> -->
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">关于</a></li>
            </ul>
        </div>

    </div>
</nav>
<!--  巨幕  -->
<div class="jumbotron">
    <br/>
    <br/>
    <div class="container">
        <h1 class="row col-lg-6 col-lg-offset-4 col-sm-offset-3 col-xs-offset-3"><span class="label">家校互通系统</span></h1>
        <p class="row col-lg-6 col-md-8 col-sm-10 col-lg-offset-3 col-md-offset-2 col-sm-offset-1">please input account and password</p>
    </div>
</div>
<!--登录标签-->
<div class="container">
    <br/>
    <div class="col-lg-4 col-lg-offset-4 col-md-6 col-md-offset-3 col-sm-7 col-sm-offset-3 col-xs-10 col-xs-offset-2">
        <ul id="myTab" class="nav nav-tabs">
            <li role="presentation" class=""><a data-toggle="tab" href="#parent-login">家长登录</a></li>
            <li role="presentation" class=""><a data-toggle="tab" href="#teacher-login">教师登录</a></li>
            <li role="presentation" class=""><a data-toggle="tab" href="#admin-login">管理员登录</a></li>
        </ul>
        <div id="MyTabContent" class="tab-content">
            <div class="tab-pane" id="parent-login">
                <br/>
                <form action="parentController/parentLogin" method="post">
                    <div class="form-group">
                        <label for="input-parent-phone">Parent phone number</label>
                        <input type="text" class="form-control" id="input-parent-phone" placeholder="Phone number" name="phone">
                    </div>
                    <div class="form-group">
                        <label for="input-parent-password">Password</label>
                        <input type="password" class="form-control" id="input-parent-password" placeholder="Password" name="password">
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="grade">年级:  </label>
                        <select id="grade" class="form-control" name="grade">
                            <c:forEach begin="1" end="12" step="1" varStatus="status">
								<option value="${status.index}" >${status.index}年级</option>
							</c:forEach>
                        </select>
                    </div>
                    <div class="form-group">
                    	<label class="control-label  " for="class">班级:  </label>
                        <select id="class" class="form-control " name="myclass">
                            <c:forEach begin="1" end="40" step="1" varStatus="status">
								<option value="${status.index}">${status.index}班</option>
							</c:forEach>
                        </select>
                    </div>
 
                    <button type="submit" class="btn btn-primary">登录</button>
                </form>
            </div>
            <div class="tab-pane" id="teacher-login">
                <br/>
                <form action="teacherController/teacherLogin" method="post">
                    <div class="form-group">
                        <label for="input-teacher-phone">Teacher phone number</label>
                        <input name="phone" type="text" class="form-control" id="input-teacher-phone" placeholder="Phone number">
                    </div>
                    <div class="form-group">
                        <label for="input-teacher-password">Password</label>
                        <input name="password" type="password" class="form-control" id="input-teacher-password" placeholder="Password">
                    </div>
                    
                    <button type="submit" class="btn btn-primary">登录</button>
                </form>
            </div>
            <div class="tab-pane" id="admin-login">
                <br/>
                <form action="adminController/adminLogin" method="post">
                    <div class="form-group">
                        <label for="input-admin-phone">Admin Phone number</label>
                        <input name="phone" type="text" class="form-control" id="input-admin-phone" placeholder="Phone number">
                    </div>
                    <div class="form-group">
                        <label for="input-admin-password">Password</label>
                        <input name="password" type="password" class="form-control" id="input-admin-password" placeholder="Password">
                    </div>
                    <button type="submit" class="btn btn-primary">登录</button>
                </form>
            </div>
        </div>
    </div>
</div>
<input hidden id="isValid" value="${requestScope.valid }">
<input hidden id="parValid" value="${requestScope.parValid }">

<script type="text/javascript">
	if(document.getElementById("isValid").value == "false"){
		alert("账号或密码错误！")
		window.window.location.href="${pageContext.request.contextPath}/login.jsp"
	}
	if(document.getElementById("parValid").value == "false"){
		alert("账号或密码错误！\n,班级或年级输入错误！")
		window.window.location.href="${pageContext.request.contextPath}/login.jsp"
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
                phone: {
                    message: '用户名验证失败',
                    validators: {
                        notEmpty: {
                            message: '电话不能为空'
                        },
                        phone: {
                            country: "CN",
                            message: '电话号码格式错误'
                        }
                    }
                },
                password: {
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
                grade:{
                	regexp: {
                        regexp: /^[0-9]/,
                        message: '用户名只能包含大写、小写、数字和下划线'
                    }
                },
                myclass:{
                	regexp: {
                        regexp: /^[0-9]/,
                        message: '用户名只能包含大写、小写、数字和下划线'
                    }
                }
            }
        });
    });
</script>
</body>
</html>






