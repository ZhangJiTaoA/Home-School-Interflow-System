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
                        <li><a href="#">教师号:${sessionScope.account.teaNo}</a></li>
                        <li><a href="#">授课班级:${account.grade1}年级${account.class1}班,${account.grade2}年级${account.class2}班</a></li>
                        <li><a href="#">电话:${sessionScope.account.phoneNo}</a></li>
                        <li><a href="#">课程:${sessionScope.account.course}</a></li>
                    </ul>
                </li>
                <li><a href="" data-toggle="modal" data-target="#message2Modal">查看留言</a></li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <li><a target="_blank" href="./changePassword.jsp?type=teacher&phoneno=${account.phoneNo}">修改密码</a></li>
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
        <h4 class="col-xs-2"><span class="label label-default" >${sessionScope.account.isCharge==1?'班主任':'教师'} : ${sessionScope.account.name}</span></h4>
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
                    <li role="presentation" class=""><a data-toggle="tab" href="#upload-stuparinfo">学生/家长信息上传</a></li>
                    <li role="presentation" class=""><a data-toggle="tab" href="#input-stuparinfo">添加学生/家长信息</a></li>
                    <li role="presentation" class=""><a data-toggle="tab" href="#arrange-work">布置任务</a></li>
                    <li role="presentation" class=""><a data-toggle="tab" href="#admin-studentinfo">管理学生信息</a></li>
                    <li role="presentation" class=""><a data-toggle="tab" href="#admin-parentinfo">管理家长信息</a></li>
                     <li role="presentation" class=""><a data-toggle="tab" href="#admin-work">管理任务</a></li>
                    <li role="presentation" class=""><a data-toggle="tab" href="#admin-transcript">管理成绩</a></li>
                    <li role="presentation" class=""><a data-toggle="tab" href="#analyze-transcript">分析成绩</a></li>
                </ul>
            </div>
        </header>
        <article class="col-md-10">
            <div id="MyTabContent" class="tab-content">
                <div class="tab-pane" id="upload-stuparinfo">
                    <div class="embed-responsive embed-responsive-16by9">
                        <iframe class="embed-responsive-item" src="./html/teacherframe/upload-stuparinfo.jsp"></iframe>
                    </div>
                </div>
                <div class="tab-pane" id="input-stuparinfo">
                    <div class="embed-responsive embed-responsive-4by3">
                        <iframe class="embed-responsive-item" src="./html/teacherframe/input-stuparinfo.jsp"></iframe>
                    </div>
                </div>
                <div class="tab-pane" id="admin-studentinfo">
                    <div class="embed-responsive embed-responsive-16by9">
                        <iframe class="embed-responsive-item" src="./html/teacherframe/admin-studentinfo.jsp"></iframe>
                    </div>
                </div>
                <div class="tab-pane" id="admin-parentinfo">
                    <div class="embed-responsive embed-responsive-16by9">
                        <iframe class="embed-responsive-item" src="./html/teacherframe/admin-parentinfo.jsp"></iframe>
                    </div>
                </div>
                <div class="tab-pane" id="admin-transcript">
                    <div class="embed-responsive embed-responsive-16by9">
                        <iframe class="embed-responsive-item" src="./html/teacherframe/admin-transcript.jsp"></iframe>
                    </div>
                </div>
                <div class="tab-pane" id="analyze-transcript">
                    <div class="embed-responsive embed-responsive-16by9">
                        <iframe class="embed-responsive-item" src="./html/teacherframe/analyze-transcript.jsp"></iframe>
                    </div>
                </div>
                <div class="tab-pane" id="arrange-work">
                    <div class="embed-responsive embed-responsive-16by9">
                        <iframe class="embed-responsive-item" src="./html/teacherframe/arrange-work.jsp"></iframe>
                    </div>
                </div>
                <div class="tab-pane" id="admin-work">
                    <div class="embed-responsive embed-responsive-16by9">
                        <iframe class="embed-responsive-item" src="./html/teacherframe/admin-work.jsp"></iframe>
                    </div>
                </div>
            </div>
        </article>
    </div><!--row-->
</div>
<div class="modal fade" id="message2Modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					家长留言信息
				</h4>
			</div>
			<div class="modal-body">
				<c:forEach begin="1" end="${requestScope.message2sLength}" varStatus="sta">
					<h5>${message2s[sta.index-1].personInfo}:  ${message2s[sta.index-1].title }, ${message2s[sta.index-1].content} <a class="btn btn-info btn-xs" href="./teacherController/deleteMessage2/${message2s[sta.index-1].messageDate}">删除</a></h5>
					<br>
				</c:forEach>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="submit" form="transcriptUpload" class="btn btn-primary">
					提交
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
</body>
</html>