<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
        <div class="panel-heading">学生个人成绩分析</div>
        <div class="panel-body">
            <div class="form-inline" >
                <div class="form-group">
                    <label ><span class="glyphicon glyphicon-th" aria-hidden="true"></span></label>
                </div>
                	<a class="btn btn-primary" onclick="dayTest()">日测成绩分析</a>
                	<a class="btn btn-primary" onclick="dayRankTest()">日排名分析</a>
                	<a class="btn btn-success" onclick="weekTest()">周测成绩分析</a>
                	<a class="btn btn-success" onclick="weekRankTest()">周排名分析</a>
                	<a class="btn btn-info" onclick="monthTest()">月测成绩分析(包含期中，期末)</a>
                	<a class="btn btn-info" onclick="monthRankTest()">月排名分析</a>
            </div>
            <br/>
            <div class="form-inline">
            	<div class="form-group">
                    <label><span class="glyphicon glyphicon-user" aria-hidden="true"></span></label>
                    <label>${student.name }</label>
                </div>
	            <a class="btn btn-info" onclick="queryTR()">查询/刷新</a>        
            </div>
        </div>
    </div>
    <div class="container">
		<row class="row"> <!-- 列表行 -->
		<div class="col-sm-offset-0">
			<table class="table table-hover ">
				<!--                <caption>学生信息表</caption>-->
				<thead>
					<th></th>
					<th>成绩单名</th>
					<th>上传时间</th>
					<th></th>
				</thead>
				<c:if test="${!empty param.index}">
					<c:set var="TRIndex" value="${param.index}" scope="request" />
					<c:set var="TRPages" value="${param.pages}" scope="request" />
					<c:set var="TRLength" value="${param.length}" scope="request" />
				</c:if>
				<c:if test="${requestScope.TRLength >= 0 }">
					<tbody>
						<c:forEach begin="${requestScope.TRIndex*10 }"
							end="${requestScope.TRLength>requestScope.TRIndex*10+9?requestScope.TRIndex*10+9:requestScope.TRLength}"
							varStatus="sta">
							<p hidden>${transcriptRecord=sessionScope.transcriptRecords[sta.index]}</p>
							<form>
								<tr>
									<td><input form="delete" type="checkbox"
										value="${transcriptRecord.uploadDate}" name="uploadDates"></td>
									<td><input type="text" class="putinText" value="${transcriptRecord.transcriptName }"
										name="transcriptName" readonly></td>
									<td><input type="text" class="putinText"
										value="<fmt:formatDate value="${transcriptRecord.uploadDate}" pattern="yyyy-MM-dd hh:mm:ss"/>"
										name="uploadDate" readonly></td>	
									<td><a class="btn btn-primary"
										href="parentController/openMyTranscript/${transcriptRecord.transcriptName}">打开</a></td>
								</tr>
							</form>
						</c:forEach>
					</tbody>
				</c:if>
			</table>
		</div>
		</row>
		<row class="row"> <nav class="col-sm-offset-4 col-xs-offset-3"
			aria-label="Page navigation"> <c:if
			test="${requestScope.TRLength >= 0 }">
			<ul class="pagination">
				<li><a
					href="../teacherframe/admin-transcript.jsp?index=${TRIndex-1>0?TRIndex-1:0}&pages=${TRPages}&length=${TRLength}"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
				</a></li>
				<c:forEach begin="1" end="${requestScope.TRPages}" step="1"
					varStatus="sta">
					<li><a
						href="../teacherframe/admin-transcript.jsp?index=${sta.index-1}&pages=${TRPages}&length=${TRLength}">${sta.index }
					</a></li>
				</c:forEach>

				<li><a
					href="../teacherframe/admin-transcript.jsp?index=${TRIndex<TRPages-1?TRIndex+1:TRPages-1}&pages=${TRPages}&length=${TRLength}"
					aria-label="Next"> <span aria-hidden="true">&raquo;</span>
				</a></li>
			</ul>
		</c:if> </nav> </row>
	</div>
    
    
    
    
    
    
    
    
    
</body>

<input hidden id="stuNo" value="${student.stuNo }">
<input hidden id="err" value="${requestScope.err }">


<script type="text/javascript">
	function dayTest(){
		window.location.href="parentController/analyzeTest/"+document.getElementById("stuNo").value+"/day";
	}
	function dayRankTest(){
		window.location.href="parentController/analyzeRankTest/"+document.getElementById("stuNo").value+"/day";
	}
	function weekTest(){
		window.location.href="parentController/analyzeTest/"+document.getElementById("stuNo").value+"/week";
	}
	function weekRankTest(){
		window.location.href="parentController/analyzeRankTest/"+document.getElementById("stuNo").value+"/week";
	}
	function monthTest(){
		window.location.href="parentController/analyzeTest/"+document.getElementById("stuNo").value+"/month";
	}
	function monthRankTest(){
		window.location.href="parentController/analyzeRankTest/"+document.getElementById("stuNo").value+"/month";
	}
	function queryTR(){
		window.location.href="parentController/queryTR";
	}
 	
 	
 	if(document.getElementById("err").value == "theLess"){
		alert("数据过少,无法进行有效分析。相同类型成绩单至少三个");
		<% session.removeAttribute("err"); %>
	}
 	
 	</script >
</html>