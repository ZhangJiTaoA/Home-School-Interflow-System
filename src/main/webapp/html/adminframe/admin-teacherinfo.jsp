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
<!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
<title>admin-teacherinfo-iframe</title>
<script type="text/javascript">
$(function () {
	  $('[data-toggle="popover"]').popover()
	})
</script>
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
				action="${pageContext.request.contextPath}/adminController/queryTeacher" method="post">
				<a class="btn btn-success"
						data-toggle="popover" title="提示"
						data-content="查询班级:  查询格式为   年级-班级, 如3年级5班则输入 3-5-----------------------------查询班主任:默认查询班主任,若输入框不为空则查询非班主任">提示</a>
		
				<div class="form-group">
					<select name="point" class="form-control">
						<option value="allInfo">全部信息</option>
						<option value="teaNo">教师号</option>
						<option value="teaName">姓名</option>
						<option value="teaPhone">手机号</option>
						<option value="course">科目</option>
						<option value="gradeAndClass">班级</option>
						<option value="charge">班主任</option>
					</select>
				</div>
				<div class="form-group">
					<input name="searchContent" type="text" class="form-control"
						placeholder="Search">
					</div>
				<button type="submit" class="btn btn-default">查找</button>
			</form>
			<a class="btn btn-primary navbar-btn" target="_blank"
				href="${pageContext.request.contextPath}/html/adminframe/admin-teacherinfo.jsp"> 最大化管理 </a>
			<form id="delete" class="navbar-form navbar-right"
				action="${pageContext.request.contextPath}/adminController/deleteTeachers" method="post">
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
					<th>教师号</th>
					<th>姓名</th>
					<th>性别</th>
					<th>手机号</th>
					<th>密码</th>
					<th>科目</th>
					<th>年级1</th>
					<th>班级1</th>
					<th>年级2</th>
					<th>班级2</th>
					<th>y/n</th>
				</thead>
				<c:if test="${!empty param.index}">
					<c:set var="index" value="${param.index}" scope="request" />
					<c:set var="pages" value="${param.pages}" scope="request" />
					<c:set var="length" value="${param.length}" scope="request" />
				</c:if>
				<c:if test="${requestScope.length>=0}">
					<tbody>
						<!-- El表达式 -->
						<c:forEach begin="${requestScope.index*10 }"
							end="${requestScope.length>requestScope.index*10+9?requestScope.index*10+9:requestScope.length}"
							varStatus="sta">
							<p hidden>${tea=sessionScope.teachers[sta.index]}</p>
							<form action="${pageContext.request.contextPath}/adminController/updateTeacher"
								method="post">
								<tr>
									<td><input name="deleteNo" form="delete" type="checkbox"
										class="" value="${tea.teaNo}"></td>
									<!-- 教师号 -->
									<td><input name="teaNo" type="text" class="putinText"
										value="${tea.teaNo}" readonly></td>
									<!-- 姓名 -->
									<td><input name="name" type="text" class="putinName"
										value="${tea.name}" readonly></td>
									<!-- 性别 -->
									<td><select name="sex">
											<optgroup label="--------"></optgroup>
											<option value="1" ${tea.sex==1?'selected':''}>男</option>
											<option value="0" ${tea.sex==0?'selected':''}>女</option>
									</select></td>
									<!-- 电话 -->
									<td><input name="phoneNo" type="text" class="putinText"
										value="${tea.phoneNo }"></td>
									<!-- 密码 -->
									<td><input name="password" type="text" class="putinText"
										value="${tea.password }"></td>
									<!-- 科目 -->
									<td><select name="course">
											<optgroup label="--------"></optgroup>
											<option value="语文" ${tea.course eq '语文'?'selected':''}>语文</option>
											<option value="数学" ${tea.course eq '数学'?'selected':''}>数学</option>
											<option value="英语" ${tea.course eq '英语'?'selected':''}>英语</option>
											<option value="物理" ${tea.course eq '物理'?'selected':''}>物理</option>
											<option value="化学" ${tea.course eq '化学'?'selected':''}>化学</option>
											<option value="生物" ${tea.course eq '生物'?'selected':''}>生物</option>
											<option value="历史" ${tea.course eq '历史'?'selected':''}>历史</option>
											<option value="地理" ${tea.course eq '地理'?'selected':''}>地理</option>
											<option value="政治" ${tea.course eq '政治'?'selected':''}>政治</option>
											<option value="体育" ${tea.course eq '体育'?'selected':''}>体育</option>
											<option value="其他" ${tea.course eq '其他'?'selected':''}>其他</option>
									</select></td>
									<!-- 年级1 -->
									<td><select name="grade1">
											<c:forEach begin="1" end="12" step="1" varStatus="status">
												<option value="${status.index}"
													${tea.grade1==status.index?'selected':''}>${status.index}年级</option>
											</c:forEach>
									</select></td>
									<!-- 班级1 -->
									<td><select name="class1">

											<c:forEach begin="1" end="40" step="1" varStatus="status">
												<option value="${status.index}"
													${tea.class1==status.index?'selected':''}>${status.index}班</option>
											</c:forEach>
									</select></td>
									<!-- 年级2 -->
									<td><select name="grade2">
											<option hidden selected value="-1">无</option>
											<c:forEach begin="1" end="12" step="1" varStatus="status">
												<option value="${status.index}"
													${tea.grade2==status.index?'selected':''}>${status.index}年级</option>
											</c:forEach>
									</select></td>
									<!-- 班级2 -->
									<td><select name="class2">
											<option hidden selected value="-1">无</option>
											<c:forEach begin="1" end="40" step="1" varStatus="status">
												<option value="${status.index}"
													${tea.class2==status.index?'selected':''}>${status.index}班</option>
											</c:forEach>
									</select></td>
									<td><input name="isCharge" type="checkbox" class=""
										value="1" ${tea.isCharge==1?'checked':''}></td>

									<td><input type="submit" class="btn btn-default"
										value="修改"></td>
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
			test="${!empty requestScope.index }">
			<ul class="pagination">
				<li><a
					href="${pageContext.request.contextPath}/html/adminframe/admin-teacherinfo.jsp?index=${index-1>0?index-1:0}&pages=${pages}&length=${length}"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
				</a></li>
				<c:forEach begin="1" end="${requestScope.pages}" step="1"
					varStatus="sta">
					<li><a
						href="${pageContext.request.contextPath}/html/adminframe/admin-teacherinfo.jsp?index=${sta.index-1}&pages=${pages}&length=${length}">${sta.index }
					</a></li>
				</c:forEach>

				<li><a
					href="${pageContext.request.contextPath}/html/adminframe/admin-teacherinfo.jsp?index=${index<pages-1?index+1:pages-1}&pages=${pages}&length=${length}"
					aria-label="Next"> <span aria-hidden="true">&raquo;</span>
				</a></li>
			</ul>
		</c:if> </nav> </row>
	</div>
</body>
<input hidden id="err" value="${requestScope.err }">

<script type="text/javascript">
	if(document.getElementById("err").value == "onSelect"){
		alert("未选择：请选中教师后再删除。");
		<% request.setAttribute("err", ""); %>
	}
</script>

</html>