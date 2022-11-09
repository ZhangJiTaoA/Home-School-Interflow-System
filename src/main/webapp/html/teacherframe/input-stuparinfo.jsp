<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <title>input-stuparinfo-iframe</title>
</head>
<body>
<div class="container">
    <br/>
    <div class="">
        <ul id="myTab" class="nav nav-tabs">
            <li role="presentation" class=""><a data-toggle="tab" href="#parent-upload">家长信息添加</a></li>
            <li role="presentation" class=""><a data-toggle="tab" href="#student-upload">学生信息添加</a></li>
        </ul>
        <div id="MyTabContent" class="tab-content">
            <div class="tab-pane" id="parent-upload">

                <div class="container">
                    <row class="row">
                        <form class="form-horizontal" action="${pageContext.request.contextPath}/teacherController/addParent" method="post">
                            <span class="label label-warning col-sm-offset-10 col-xs-offset-9">标有<span class="glyphicon glyphicon-heart-empty"></span>的为必填项</span>
                            <div class="form-group">
                                <label for="name" class="col-sm-2 control-label"><span class="glyphicon glyphicon-heart-empty"></span> 姓名</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="name" placeholder="name" name="name">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="phoneNo" class="col-sm-2 control-label"><span class="glyphicon glyphicon-heart-empty"></span> 联系电话</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="phoneNo" placeholder="phone number" name="phoneNo">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="password" class="col-sm-2 control-label"><span class="glyphicon glyphicon-heart-empty"></span> 登录密码</label>
                                <div class="col-sm-9">
                                    <input type="password" class="form-control" id="password" placeholder="password" name="password">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="stuNo" class="col-sm-2 control-label"><span class="glyphicon glyphicon-heart-empty"></span>孩子学号</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="stuNo" placeholder="student number" name="stuNo">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="relation" class="col-sm-2 control-label">与学生关系</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="relation" placeholder="relation" name="relation">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="address" class="col-sm-2 control-label">家庭住址</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="address" placeholder="address" name="address">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">工作单位</label>
                                <div class="col-sm-4">
                                    <select class="form-control" name="workunit">
                                        <option value="务农">务农</option>
                                        <option value="工人">工人</option>
                                        <option value="事业单位">事业单位</option>
                                        <option value="民营企业">民营企业</option>
                                        <option value="国营企业">国营企业</option>
                                        <option value="教育事业">教育事业</option>
                                        <option value="" selected>其他</option>
                                    </select>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-default col-xs-offset-5 col-sm-offset-6">Submit</button>
                        </form>
                    </row>
                </div>
            </div>
            <div class="tab-pane" id="student-upload">
                <row class="row">
                    <form class="form-horizontal" action="${pageContext.request.contextPath}/teacherController/addStudent" method="post">
                        <span class="label label-warning col-sm-offset-10 col-xs-offset-9">标有<span class="glyphicon glyphicon-heart-empty"></span>的为必填项</span>
                        <div class="form-group">
                            <label for="stuNo" class="col-sm-2 control-label"><span class="glyphicon glyphicon-heart-empty"></span> 学号</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="stuNo" placeholder="studentNo" name="stuNo">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="name" class="col-sm-2 control-label"><span class="glyphicon glyphicon-heart-empty"></span> 姓名</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="name" placeholder="name" name="name">
                            </div>
                        </div>
                        <div class="form-group" >
                            <label for="sex" class="col-sm-2 hidden-xs control-label"><span class="glyphicon glyphicon-heart-empty"></span> 性别</label>
                            <div class="col-sm-4 col-xs-5 radio-inline" id="sex">
                                <label class="radio form-control">
                                    <input type="radio" name="sex" value="1"/>男
                                </label>
                            </div>
                            <div class="col-sm-4 col-xs-5 radio-inline">
                                <label class="radio form-control">
                                    <input type="radio" name="sex" value="0"/>女
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="borndate" class="col-sm-2 hidden-xs control-label"><span class="glyphicon glyphicon-heart-empty"></span> 出生日期</label>
                            <div class="col-sm-9">
                                <input type="date" class="form-control" id="borndate" placeholder="borndate" name="bornDate">
                            </div>
                        </div>
                        <button type="submit" class="btn btn-default col-xs-offset-5 col-sm-offset-6">Submit</button>
                    </form>
                </row>
        </div>
    </div>
</div>
<input hidden id="valid" value="${requestScope.valid }">
<input hidden id="pername" value="${requestScope.per.name }">
<input hidden id="perstuNo" value="${requestScope.per.stuNo }">
<script type="text/javascript">
	if(document.getElementById("valid").value == "true"){
		alert("上传成功");
	}else if(document.getElementById("valid").value == "false"){
		var str="name:"+document.getElementById("pername").value+"  stuNo:"+document.getElementById("perstuNo").value
		alert("上传失败\n"+str+"\n信息已存在");
	}else if(document.getElementById("valid").value == "noStuTable"){
		alert("还没有生成依赖表:即对应的学生表");
	}else if(document.getElementById("valid").value == "noStuNo"){
		alert("添加失敗:没有学生学号的依赖");
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
            	stuNo:{
            		message: '学号填写,必须为11位纯数字',
                    validators: {
                        notEmpty: {
                            message: '学号不能为空'
                        },
                        phone: {
                            country: "CN",
                            message: '学号格式错误,必须为11位纯数字'
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
                sex:{
                    validators: {
                        notEmpty: {
                            message: '请选择性别'
                        }
                    }
            	},
                bornDate: {
                    message: '出生日期',
                    validators: {
                        notEmpty: {
                            message: '出生日期不能为空'
                        },
                    }
                },
            }
        });
    });
</script>
</body>
</html>