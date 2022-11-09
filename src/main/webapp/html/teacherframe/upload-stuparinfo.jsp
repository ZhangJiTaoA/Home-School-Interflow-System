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
    <title>upload-stuparinfo-iframe</title>
</head>
<body>
<div class="container">
    <br/>
    <div class="col-lg-4 col-lg-offset-4 col-md-6 col-md-offset-3 col-sm-7 col-sm-offset-3 col-xs-10 col-xs-offset-2">
        <ul id="myTab" class="nav nav-tabs">
            <li role="presentation" class=""><a data-toggle="tab" href="#parent-upload">家长信息上传</a></li>
            <li role="presentation" class=""><a data-toggle="tab" href="#student-upload">学生信息上传</a></li>
        </ul>
        <div id="MyTabContent" class="tab-content">
            <div class="tab-pane" id="parent-upload">

                <div class="container">
                    <row class="row">
                        <h4 class="col-xs-2"><span class="label label-default" >家长</span></h4>
                    </row>
                    <row class="row">
                        <form class="col-xs-offset-0" action="${pageContext.request.contextPath}/teacherController/upload" method="post" enctype="multipart/form-data">
                            <div class="form-group">
                                <label for="upload-parent">File input</label>
                                <input type="hidden" name="id" value="0">
                                <input name="myfile" type="file" id="upload-parent">
                                <p class="help-block">请点击上传家长信息的excel文件</p>
                            </div>
                            <button type="submit" class="btn btn-default">Submit</button>
                        </form>
                    </row>
                </div>
            </div>
            <div class="tab-pane" id="student-upload">
                <row class="row">
                    <h4 class="col-xs-2 col-xs-offset-3"><span class="label label-default" >学生</span></h4>
                </row>
                <div class="container">
                    <row class="row">
                        <form class="col-xs-offset-1" action="${pageContext.request.contextPath}/teacherController/upload" method="post" enctype="multipart/form-data">
                            <div class="form-group">
                            	<input type="hidden" name="id" value="1">
                                <label for="upload-student">File input</label>
                                <input name="myfile" type="file" id="upload-student">
                                <p class="help-block">请点击上传学生信息的excel文件</p>
                            </div>
                            <button type="submit" class="btn btn-default">Submit</button>
                        </form>
                    </row>
                </div>
            </div>
        </div>
    </div>
</div>
<input hidden id="err" value="${requestScope.err }" >
<input hidden id="length" value="${requestScope.repeatLength }" >
<div hidden>
	<c:forEach begin="0"  end="${requestScope.repeatLength }" step="1" varStatus="sta">
		
		<input id="pername${sta.index }" value="${requestScope.repeatPersons[sta.index].name }" ><input id="stuno${sta.index }" value="${requestScope.repeatPersons[sta.index].stuNo }" >
	</c:forEach>
</div>
<script type="text/javascript">
	if(document.getElementById("err").value == "formErr"){
		alert("excel格式错误,上传失败！");
	}else if(document.getElementById("err").value == "repeatErr"){
		var str=""
		for(var i=0;i<document.getElementById("length").value;i++ ){
			str = str+"name:"+document.getElementById("pername"+i.toString()).value+"  "+"stuNo:"+document.getElementById("stuno"+i.toString()).value+"\n";
		}
		alert(str+"以上信息已存在！");
	}else if(document.getElementById("err").value == "noStuTable"){
		alert("还没有生成依赖表:即对应的学生表");
	}else if(document.getElementById("err").value == "null"){
		alert("上传成功！");
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
            	myfile:{
            		message: '文件不为空',
                    validators: {
                        notEmpty: {
                            message: '上传文件不能为空'
                        },
                    }
            	},
            	
            }
        });
    });
</script>
</body>
</html>