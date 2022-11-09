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
    <!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
    <title>Home-School--TeacherPage</title>
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
                <li><a href="./login.jsp">登录</a></li>
                <li><a href="#" class="dropdown-toggle" data-toggle="dropdown">个人信息
                    <b class="caret"></b>
                </a>
                    <ul class="dropdown-menu" id="drop-down-list">
                        <li><a href="#">学生学号:${account.stuNo }</a></li>
                        <li><a href="#">电话号码:${account.phoneNo }</a></li>
                        <li><a href="#">家庭住址:${account.address }</a></li>
                        <li><a href="#">工作单位:${account.workunit }</a></li>
                    </ul>
                </li>
                <li><a target="_blank" href="./changePassword.jsp?type=parent&phoneno=${account.phoneNo}&pTN=${sessionScope.pTableName}">修改密码</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">关于</a></li>
                <li><a href="./index.jsp">退出</a></li>
            </ul>
        </div>

    </div>
</nav>
<!--  巨幕  -->
<div class="jumbotron">
    <div class="container">
        <br>
        <h4 class="col-xs-2"><span class="label label-default" >${student.name }的家长：${account.name }</span></h4>
        <h1 class="col-xs-6 col-xs-offset-2"><span class="label">家校互通系统</span></h1>
    </div>
</div>
<!--导航条-->
<div class="container">
    <div class="row">
        <header class="col-md-2">
            <div class="logo hidden-sm hidden-xs"><a href="#"><img id="logo" src="./images/logo.png" alt=""></a></div>
            <div id="my-nav">
                <ul id="function-Tab" class="nav nav-tabs nav-stacked">
                    <li role="presentation" class=""><a data-toggle="tab" href="#query-taskinfo">查看任务</a></li>
                    <li role="presentation" class=""><a data-toggle="tab" href="#leave-message">留言</a></li>
                    <li role="presentation" class=""><a data-toggle="tab" href="#get-transcript">查看分析成绩</a></li>
                </ul>
            </div>
        </header>
        <article class="col-md-10">
            <div id="MyTabContent" class="tab-content">
                <div class="tab-pane" id="query-taskinfo">
                    <div class="embed-responsive embed-responsive-16by9">
                        <iframe class="embed-responsive-item" src="./html/parentframe/query-taskinfo.jsp"></iframe>
                    </div>
                </div>
                <div class="tab-pane" id="leave-message">
                    <div class="embed-responsive embed-responsive-4by3">
                        <iframe class="embed-responsive-item" src="./html/parentframe/leave-message.jsp"></iframe>
                    </div>
                </div>
                <div class="tab-pane" id="get-transcript">
                    <div class="embed-responsive embed-responsive-16by9">
                        <iframe class="embed-responsive-item" src="./html/parentframe/get-transcript.jsp"></iframe>
                    </div>
                </div>
            </div>
        </article>
    </div><!--row-->
</div>
</body>