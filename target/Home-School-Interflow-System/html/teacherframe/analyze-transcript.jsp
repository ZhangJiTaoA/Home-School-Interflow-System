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
    <!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
    <title>analyze-transcript</title>
</head>
<body>
    <div class="panel panel-success">
        <div class="panel-heading">学生个人成绩分析<a class="btn btn-info btn-xs" onclick="refresh()">刷新</a></div>
        <div class="panel-body">
            <div class="form-inline" >
                <div class="form-group">
                    <label for="select">Name</label>
                    <select id="select" class="form-control">
                        <optgroup label="--------"></optgroup>
                        <c:forEach begin="0" end="${sessionScope.stusLength }" step="1" varStatus="sta">
	                        <option value="${sessionScope.stus[sta.index].stuNo}">${sessionScope.stus[sta.index].name}</option>
                        </c:forEach>
                        <option value="--------" hidden selected></option>
                    </select>
                </div>
                	<a class="btn btn-primary" onclick="dayTest()">日测成绩分析</a>
                	<a class="btn btn-primary" onclick="dayRankTest()">日排名分析</a>
                	<a class="btn btn-success" onclick="weekTest()">周测成绩分析</a>
                	<a class="btn btn-success" onclick="weekRankTest()">周排名分析</a>
                	<a class="btn btn-info" onclick="monthTest()">月测成绩分析(包含期中，期末)</a>
                	<a class="btn btn-info" onclick="monthRankTest()">月排名分析</a>         	
            </div>
        </div>
    </div>
    <div class="panel panel-info">
        <div class="panel-heading">班级整体成绩分析</div>
        <div class="panel-body">
            <div class="form-inline" >
                <div class="form-group">
                    <label for="select2">哪次成绩</label>
                    <select id="select2" class="form-control">
                        <optgroup label="--------"></optgroup>
                        <c:forEach begin="0" end="${sessionScope.recordsLength }" step="1" varStatus="sta">
	                        <option value="${sessionScope.records[sta.index].transcriptName}">${sessionScope.records[sta.index].transcriptName}</option>
                        </c:forEach>
                        <option value="--------" hidden selected></option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="select3">科目</label>
                    <select id="select3" class="form-control">
                        <optgroup label="--------"></optgroup>
                        <option value="chinese">语文</option>
						<option value="math">数学</option>
						<option value="english">英语</option>
						<option value="physical">物理</option>
						<option value="chemical">化学</option>
						<option value="biological">生物</option>
						<option value="history">历史</option>
						<option value="geographic">地理</option>
						<option value="political">政治</option>
						<option value="sport">体育</option>
						<option value="average">平均成绩</option>
                        <option value="--------" hidden selected></option>
                    </select>
                </div>
                	<a class="btn btn-primary" onclick="classCompare()">各班单次成绩对比</a>
                	<a class="btn btn-success" onclick="classEveryCompare()">本班历次成绩对比</a>
            </div>
        </div>
    </div>
</body>
<input hidden id="err" value="${requestScope.err }">
<script type="text/javascript">
	function dayTest(){
		if(checkSelect())
		window.location.href="teacherController/analyzeTest/"+document.getElementById("select").value+"/day";
	}
	function dayRankTest(){
		if(checkSelect())
		window.location.href="teacherController/analyzeRankTest/"+document.getElementById("select").value+"/day";
	}
	function weekTest(){
		if(checkSelect())
		window.location.href="teacherController/analyzeTest/"+document.getElementById("select").value+"/week";
	}
	function weekRankTest(){
		if(checkSelect())
		window.location.href="teacherController/analyzeRankTest/"+document.getElementById("select").value+"/week";
	}
	function monthTest(){
		if(checkSelect())
		window.location.href="teacherController/analyzeTest/"+document.getElementById("select").value+"/month";
	}
	function monthRankTest(){
		if(checkSelect())
		window.location.href="teacherController/analyzeRankTest/"+document.getElementById("select").value+"/month";
	}
	function classCompare(){
		if(checkSelect2())
		window.location.href="teacherController/classCompare/"+document.getElementById("select2").value+"/"+document.getElementById("select3").value;
	}
	function classEveryCompare(){
		if(checkSelect2())
		window.location.href="teacherController/classEveryCompare/"+document.getElementById("select2").value+"/"+document.getElementById("select3").value;
	}
	function refresh(){
		window.location.href="teacherController/queryStudentsAndRecords";
	}
 	if(document.getElementById("select").childElementCount<=1){
        window.onload = function() {
            window.location.href="teacherController/queryStudentsAndRecords";
        }
    }	
 	function checkSelect(){
        if(document.getElementById("select").value=="--------"){
            document.getElementById("select").style.borderColor="red";
            return false;
        }
        return true;
    }
 	function checkSelect2(){
        if(document.getElementById("select2").value=="--------"||document.getElementById("select3").value=="--------"){
            document.getElementById("select2").style.borderColor="red";
            document.getElementById("select3").style.borderColor="red";
            return false;
        }
        return true;
    }		
 	if(document.getElementById("err").value == "theLess"){
		alert("数据过少,无法进行有效分析。相同类型成绩单至少三个");
		<% session.removeAttribute("err"); %>
	}
 	</script >
</html>
 