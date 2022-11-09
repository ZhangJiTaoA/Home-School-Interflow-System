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
<link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="../../bootstrap/js/bootstrap.min.js"></script>
<link href="../../css/mycss.css" rel="stylesheet">
<script src="../../js/zh_CN.js"></script>
<script src="../../js/bootstrapValidator.min.js"></script>
<link href="../../css/bootstrapValidator.min.css" rel="stylesheet">
<!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
<title>input-teacherinfo-iframe</title>
</head>
<body>
	<div class="container">
		<row class="row">
		<form class="form-horizontal" action="adminController/addTeacher" method="post">
			<span class="label label-warning col-sm-offset-10 col-xs-offset-9">标有<span
				class="glyphicon glyphicon-heart-empty"></span>的为必填项
			</span>
			<div class="form-group">
				<label for="teacherNo" class="col-sm-2 control-label"><span
					class="glyphicon glyphicon-heart-empty"></span> 教师号</label>
				<div class="col-sm-9">
					<input name="teaNo" type="text" class="form-control" id="teacherNo"
						placeholder="teacherNo">
				</div>
			</div>
			<div class="form-group">
				<label for="name" class="col-sm-2 control-label"><span
					class="glyphicon glyphicon-heart-empty"></span> 姓名</label>
				<div class="col-sm-9">
					<input name="name" type="text" class="form-control" id="name"
						placeholder="name">
				</div>
			</div>
			<div class="form-group">
				<label for="sex" class="col-sm-2 hidden-xs control-label"><span
					class="glyphicon glyphicon-heart-empty"></span> 性别</label>
				<div class="col-sm-4 col-xs-5 radio-inline" id="sex">
					<label class="radio form-control"> <input type="radio"
						name="sex" value="1" />男
					</label>
				</div>
				<div class="col-sm-4 col-xs-5 radio-inline">
					<label class="radio form-control"> <input type="radio"
						name="sex" value="0" />女
					</label>
				</div>
			</div>
			<div class="form-group">
				<label for="phoneNo" class="col-sm-2 control-label"><span
					class="glyphicon glyphicon-heart-empty"></span> 联系电话</label>
				<div class="col-sm-9">
					<input name="phoneNo" type="text" class="form-control" id="phoneNo"
						placeholder="phone number">
				</div>
			</div>
			<div class="form-group">
				<label for="password" class="col-sm-2 control-label"><span
					class="glyphicon glyphicon-heart-empty"></span>登录密码</label>
				<div class="col-sm-9">
					<input name="password" type="password" class="form-control"
						id="password" placeholder="password">
				</div>
			</div>
			<div class="form-group">

					<label for="course" class="col-sm-2 control-label"><span
					class="glyphicon glyphicon-heart-empty"></span>教授科目</label>
				<div class="col-sm-9">
					<select name="course" class="form-control">
						<optgroup label="--------"></optgroup>
						<option value="语文">语文</option>
						<option value="数学">数学</option>
						<option value="英语">英语</option>
						<option value="物理">物理</option>
						<option value="化学">化学</option>
						<option value="生物">生物</option>
						<option value="历史">历史</option>
						<option value="地理">地理</option>
						<option value="政治">政治</option>
						<option value="体育">体育</option>
						<option value="其他">其他</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">任课班级</label>
				<div class="col-sm-2">
					<select name="grade1" class="form-control">
						<optgroup label="年级1"></optgroup>
					<c:forEach begin="1" end="12" step="1" varStatus="status">
						<option value="${status.index}">${status.index}年级</option>
					</c:forEach>
					
					</select>
				</div>
				<div class="col-sm-2">
					<select name="class1" class="form-control">
						<optgroup label="班级1"></optgroup>
					<c:forEach begin="1" end="40" step="1" varStatus="status">
						<option value="${status.index}">${status.index}班</option>
					</c:forEach>
					</select>
				</div>
				<div class="btn-group col-sm-2" role="group" aria-label="...">
					<button type="button" class="btn btn-success">
						<span class="glyphicon glyphicon-heart-empty"></span>
					</button>
					<button type="button" class="btn btn-default">可选</button>
				</div>

				<div class="col-sm-2">
					<select name="grade2" class="form-control">
						<optgroup label="年级2"></optgroup>
					<c:forEach begin="1" end="12" step="1" varStatus="status">
							<option value="${status.index}">${status.index}年级</option>
					</c:forEach>
						<option value="" selected></option>
					</select>
				</div>
				<div class="col-sm-2">
					<select name="class2" class="form-control">
						<optgroup label="班级2"></optgroup>
					<c:forEach begin="1" end="40" step="1" varStatus="status">
							<option value="${status.index}">${status.index}班</option>
					</c:forEach>
						<option value="" selected></option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label"></label>
				<div class="col-sm-9 checkbox">
					<label class="form-control"> <input name="isCharge"
						type="checkbox" value="1"> 是否为班主任
					</label>
				</div>
			</div>
			<button type="submit"
				class="btn btn-default col-xs-offset-5 col-sm-offset-6">Submit</button>
		</form>
		</row>
	</div>
</body>
<input hidden id="valid" value="${requestScope.valid }">
<input hidden id="teaname" value="${requestScope.tea.name}">
<input hidden id="teano" value="${requestScope.tea.teaNo}">
<script type="text/javascript">
	if(document.getElementById("valid").value == "true"){
		alert("上传成功");
	}else if(document.getElementById("valid").value == "false"){
		var str="name:"+document.getElementById("teaname").value+"  teaNo:"+document.getElementById("teano").value
		alert("上传失败:\n"+str+"\n信息已存在");
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
            	teaNo:{
            		message: '教师号填写,必须为11位纯数字',
                    validators: {
                        notEmpty: {
                            message: '教师号不能为空'
                        },
                        phone: {
                            country: "CN",
                            message: '教师号格式错误,必须为11位纯数字'
                        }
                    }
            	},
            	name:{
                    validators: {
                        notEmpty: {
                            message: '姓名不能为空'
                        }
                    }
            	},
            	sex:{
                    validators: {
                        notEmpty: {
                            message: '请选择性别'
                        }
                    }
            	},
                phoneNo: {
                    message: '电话',
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
                course: {
                    message: '课程',
                    validators: {
                        notEmpty: {
                            message: '课程不能为空'
                        },
                    }
                },
                grade1:{
                	validators: {
                        notEmpty: {
                            message: '课程不能为空'
                        },
                    }
                },
                class1:{
                	validators: {
                        notEmpty: {
                            message: '课程不能为空'
                        },
                    }
                },
                grade2:{
                },
                class2:{
                	
                }
            }
        });
    });
</script>
</html>




