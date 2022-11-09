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
    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <script src="../../bootstrap/js/bootstrap.min.js"></script>
    <link href="../../css/mycss.css" rel="stylesheet">
    <script src="../../js/zh_CN.min.js"></script>
    <script src="../../js/bootstrapValidator.min.js"></script>
    <link href="../../css/bootstrapValidator.min.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
    <title>arrange-work-iframe</title>
</head>
<body>
<div class="container">
    <br/>
    <div class="col-lg-4 col-lg-offset-4 col-md-6 col-md-offset-3 col-sm-7 col-sm-offset-3 col-xs-10 col-xs-offset-2">
        <form action="teacherController/addMessage" method="post">
        	<input type="text" value="0" name="messageStuNo" hidden />
            <div class="form-group">
                <label for="recipient-name" class="control-label">标题:</label>
                <input type="text" class="form-control" id="recipient-name" name="title">
            </div>
            <div class="form-group">
                <label for="message-text" class="control-label">内容:</label>
                <textarea name="content" class="form-control" id="message-text" rows="5" cols="20"></textarea>
            </div>
            <button type="reset" class="btn btn-default" >重置</button>
            <button type="submit" class="btn btn-primary">提交</button>
        </form>
    </div>
</div>
<script type="text/javascript">
	$(function () {
        $('form').bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                title: {
                    message: '用户名验证失败',
                    validators: {
                        notEmpty: {
                            message: '标题不能为空'
                        }, 
                    }
                },
                content: {
                    validators: {
                        notEmpty: {
                            message: '内容不能为空'
                        },
                        stringLength: {
                            min: 10,
                            max: 150,
                            message: '内容长度必须在10到150之间'
                        },
                    }
                },
            }
        });
    });
</script>
</body>
</html>