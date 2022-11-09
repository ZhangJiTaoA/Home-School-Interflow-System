<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 时间显示问题 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
<title>admin-teacherinfo-iframe</title>
<style type="text/css">
.putinText {
	border-style: none;
	padding-top: 5px;
	width: 120px;
}
</style>
</head>
<body>
	<div class="container">
		<nav class="navbar navbar-default">
		<div class="navbar-collapse">
			<form class="navbar-form navbar-left"
				action="${pageContext.request.contextPath}/teacherController/queryStudentInfo" method="post">
				<div class="form-group">
					<select name="point" class="form-control">
						<option value="allInfo">全部信息</option>
						<option value="stuNo">学号</option>
						<option value="stuname">姓名</option>
						<option value="sex">性别</option>
						<option value="bornyear">出生年份</option>
					</select>
				</div>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search" name="searchContent">
				</div>
				<button type="submit" class="btn btn-default">查找</button>
			</form>
			<a class="btn btn-primary navbar-btn" target="_blank"
				href="${pageContext.request.contextPath}/html/teacherframe/admin-studentinfo.jsp"> 最大化管理 </a>
			<form id="delete" class="navbar-form navbar-right" action="${pageContext.request.contextPath}/teacherController/deleteStudent" method="post">
				<button type="submit" class="btn btn-warning">删除所选项</button>
			</form>
		</div>
		</nav>
		<row class="row"> <!-- 列表行 -->
		<div class="col-sm-offset-0">
			<table class="table table-hover ">
				<!--                <caption>学生信息表</caption>-->
				<thead>
					<th></th>
					<th>学号</th>
					<th>姓名</th>
					<th>性别</th>
					<th>出生日期</th>
				</thead>
				<c:if test="${!empty param.index}">
					<c:set var="index" value="${param.index}" scope="request" />
					<c:set var="pages" value="${param.pages}" scope="request" />
					<c:set var="length" value="${param.length}" scope="request" />
				</c:if>
				<c:if test="${requestScope.length>=0}">
					<tbody>
						<c:forEach begin="${requestScope.index*10 }"
							end="${requestScope.length>requestScope.index*10+9?requestScope.index*10+9:requestScope.length}"
							varStatus="sta">
							<p hidden>${stu=sessionScope.students[sta.index]}</p>
							<form action="${pageContext.request.contextPath}/teacherController/updateStudent" method="post">
								<tr>
									<td><input form="delete" type="checkbox" class="" value="${stu.stuNo }" name="deletestuNo"></td>
									<td><input type="text" class="putinText"
										value="${stu.stuNo }" name="stuNo" readonly></td>
									<td><input type="text" class="putinText"
										value="${stu.name }" name="name" readonly></td>
									<td><select class="putinText" name="sex">
											<optgroup label="--------"></optgroup>
											<option value="1" ${stu.sex eq 1?'selected':''}>男</option>
											<option value="0" ${stu.sex eq 0?'selected':''}>女</option>
									</select></td>
							
									<td><input type="date" class="putinText"
										value="<fmt:formatDate value="${stu.bornDate}" pattern="yyyy-MM-dd"/>" name="bornDate"></td>
									<td><input type="submit" name="submit"
										class="btn btn-default" value="修改"></td>
								</tr>
							</form>
						</c:forEach>
					</tbody>
				</c:if>
			</table>
		</div>
		</row>
		<row class="row"> <nav class="col-sm-offset-4 col-xs-offset-3"
			aria-label="Page navigation"> 
			<c:if test="${!empty requestScope.index }">
			<ul class="pagination">
				<li><a
					href="${pageContext.request.contextPath}/html/teacherframe/admin-studentinfo.jsp?index=${index-1>0?index-1:0}&pages=${pages}&length=${length}"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
				</a></li>
				<c:forEach begin="1" end="${requestScope.pages}" step="1"
					varStatus="sta">
					<li><a
						href="${pageContext.request.contextPath}/html/teacherframe/admin-studentinfo.jsp?index=${sta.index-1}&pages=${pages}&length=${length}">${sta.index }
					</a></li>
				</c:forEach>

				<li><a
					href="${pageContext.request.contextPath}/html/teacherframe/admin-studentinfo.jsp?index=${index<pages-1?index+1:pages-1}&pages=${pages}&length=${length}"
					aria-label="Next"> <span aria-hidden="true">&raquo;</span>
				</a></li>
			</ul>
		</c:if> </nav> </row>
	</div>
</body>

<input hidden id="err" value="${requestScope.err }">

<script type="text/javascript">
	if(document.getElementById("err").value == "onSelect"){
		alert("未选择：请选中学生后再删除。");
		<% session.removeAttribute("err"); %>
	}
</script>

</html>