<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap -->
<link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<link href="${pageContext.request.contextPath}/css/mycss.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/zh_CN.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrapValidator.min.js"></script>
<link href="${pageContext.request.contextPath}/css/bootstrapValidator.min.css" rel="stylesheet">
<!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
<title>upload-teacherinfo-iframe</title>
</head>
<body>
	<div class="container">
		<row class="row">
		<form class="col-xs-offset-4" action="${pageContext.request.contextPath}/adminController/upload" method="post" enctype="multipart/form-data">
			<div class="form-group">
				<label for="upload-excel">File input</label> <input name="teacherFile" type="file"
					id="upload-excel">
				<p class="help-block">请点击上传教师信息的excel文件</p>
			</div>
			<button type="submit" class="btn btn-default">Submit</button>
		</form>
		</row>
	</div>
</body>
<input id="err" value="${requestScope.err }" hidden>
<input id="length" value="${requestScope.repeatLength }" hidden>
<div hidden>
	<c:forEach begin="0" end="${requestScope.repeatLength }" step="1" varStatus="sta">
		<input id="teaname${sta.index }" value="${requestScope.repeatTeachers[sta.index].name }" ><input id="teano${sta.index }" value="${requestScope.repeatTeachers[sta.index].teaNo }" >
	</c:forEach>
</div>
<script type="text/javascript">
	if(document.getElementById("err").value == "formErr"){
		alert("excel格式错误,上传失败！");
	}else if(document.getElementById("err").value == "repeatErr"){
		var str=""
		for(var i=0;i<document.getElementById("length").value;i++ ){
			str = str+"name:"+document.getElementById("teaname"+i.toString()).value+"  "+"teaNo:"+document.getElementById("teano"+i.toString()).value+"\n";
		}
		alert(str+"以上信息已存在！");
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
            	teacherFile:{
            		message: '文件不为空',
                    validators: {
                        notEmpty: {
                            message: '教师文件不能为空'
                        },
                    }
            	},
            	
            }
        });
    });
</script>
</html>