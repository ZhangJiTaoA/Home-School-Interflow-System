<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
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
    <title>Home-School--HomePage</title>
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
                    <li><a href="login.jsp">登录</a></li>
                    <!-- <li><a href="#" class="dropdown-toggle" data-toggle="dropdown">link
                        <b class="caret"></b>
                    </a>
                        <ul class="dropdown-menu" id="drop-down-list">
                            <li><a href="adminController/adminLogin" method="post">Link1</a></li>
                            <li><a href="#">Link2</a></li>
                        </ul>
                    </li>
                    <li><a href="jsp/index.html">link-index</a></li> -->
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
            <p class="col-lg-6 col-md-8 col-sm-10 col-lg-offset-3 col-md-offset-2 col-sm-offset-1">This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
        </div>
    </div>
</body>
</html>









