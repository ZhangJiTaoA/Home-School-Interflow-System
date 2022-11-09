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
<script
	src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="../../bootstrap/js/bootstrap.min.js"></script>
<link href="../../css/mycss.css" rel="stylesheet">
<!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
<title>admin-parentinfo-iframe</title>
<style type="text/css">
.putinText {
	border-style: none;
	padding-top: 5px;
	width: 90px;
}

.putinName {
	border-style: none;
	padding-top: 5px;
	width: 60px;
}
</style>
</head>
<body>
	<div class="container">
		<nav class="navbar navbar-default">
		<div class="navbar-collapse">
			<form class="navbar-form navbar-left"
				action="teacherController/queryParentInfo" method="post">
				<div class="form-group">
					<select name="point" class="form-control">
						<option value="allInfo">全部信息</option>
						<option value="stuNo">学号</option>
						<option value="name">姓名</option>
						<option value="phoneno">手机号</option>
					</select>
				</div>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search"
						name="searchContent">
				</div>
				<button type="submit" class="btn btn-default">查找</button>
			</form>
			<a class="btn btn-primary navbar-btn" target="_blank"
				href="./admin-parentinfo.jsp"> 最大化管理 </a>
			<form id="delete" class="navbar-form navbar-right" action="teacherController/deleteParent" method="post">
				<button type="submit" class="btn btn-warning">删除所选项</button>
			</form>
		</div>
		</nav>
		<row class="row"> <!-- 列表行 -->
		<div class="col-sm-offset-0">
			<table class="table table-hover ">
				<!--                <caption>教师信息表</caption>-->
				<thead>
					<th></th>
					<th>学号</th>
					<th>姓名</th>
					<th>手机号</th>
					<th>密码</th>
					<th>关系</th>
					<th>地址</th>
					<th>工作单位</th>
				</thead>
				<c:if test="${!empty param.index}">
					<c:set var="index" value="${param.index}" scope="request" />
					<c:set var="pages" value="${param.pages}" scope="request" />
					<c:set var="length" value="${param.length}" scope="request" />
				</c:if>
				<c:if test="${requestScope.length>=0 }">
					<tbody>
						<c:forEach begin="${requestScope.index*10 }"
							end="${requestScope.length>requestScope.index*10+9?requestScope.index*10+9:requestScope.length}"
							varStatus="sta">
							<p hidden>${par=sessionScope.parents[sta.index]}</p>
							<form action="teacherController/updateParent" method="post">
								<tr>
									<td><input form="delete" type="checkbox" class="" value="${par.stuNo}" name="deletestuNo"></td>
									<!-- 学号 -->
									<td><input type="text" class="putinText"
										value="${par.stuNo}" name="stuNo" readonly></td>
									<!-- 姓名 -->
									<td><input type="text" class="putinName"
										value="${par.name}" name="name" readonly></td>
									<!-- 电话 -->
									<td><input type="text" class="putinText"
										value="${par.phoneNo}" name="phoneNo"></td>
									<!-- 密码 -->
									<td><input type="text" class="putinText"
										value="${par.password}" name="password"></td>
									<!-- 关系 -->
									<td><input type="text" class="putinText"
										value="${par.relation}" name="relation"></td>
									<!-- 地址 -->
									<td><input type="text" class="putinText"
										value="${par.address}" name="address"></td>
									<!-- 工作单位 -->
									<td><select name="workunit">
											<option value="">无</option>
											<option value="务农" ${par.workunit eq '务农'?'selected':''}>务农</option>
											<option value="工人" ${par.workunit eq '工人'?'selected':''}>工人</option>
											<option value="事业单位" ${par.workunit eq '事业单位'?'selected':''}>事业单位</option>
											<option value="民营企业" ${par.workunit eq '民营企业'?'selected':''}>民营企业</option>
											<option value="国营企业" ${par.workunit eq '国营企业'?'selected':''}>国营企业</option>
											<option value="教育事业" ${par.workunit eq '教育事业'?'selected':''}>教育事业</option>
											<option value="其他" ${par.workunit eq '其他'?'selected':''}>其他</option>
									</select></td>
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
				<li><a href="./admin-parentinfo.jsp?index=${index-1>0?index-1:0}&pages=${pages}&length=${length}" aria-label="Previous"> <span
						aria-hidden="true">&laquo;</span>
				</a></li>
				<c:forEach begin="1" end="${requestScope.pages}" step="1" varStatus="sta">
					<li><a href="./admin-parentinfo.jsp?index=${sta.index-1}&pages=${pages}&length=${length}">${sta.index } </a></li>
				</c:forEach>
				
				<li><a href="./admin-parentinfo.jsp?index=${index<pages-1?index+1:pages-1}&pages=${pages}&length=${length}" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
				</a></li>
			</ul>
		</c:if>
		</nav> </row>
	</div>
</body>
<input hidden id="err" value="${requestScope.err }">

<script type="text/javascript">
	if(document.getElementById("err").value == "onSelect"){
		alert("未选择：请选中家长后再删除。");
		<% session.removeAttribute("err"); %>
	}
</script>
</html>