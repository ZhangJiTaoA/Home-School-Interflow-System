<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 时间显示问题 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
	width: 110px;
}
.ctext {
	border-style: none;
	padding-top: 5px;
	width: 40px;
}
</style>
</head>
<body>
	<div class="container">
		<nav class="navbar navbar-default">
		<div class="navbar-collapse">
			<form class="navbar-form navbar-left"
				action="${pageContext.request.contextPath}/teacherController/openTranscript/2333333" method="post">
				<button type="submit" class="btn btn-default">刷新</button>
			</form>
			<a class="btn btn-primary navbar-btn"
				href="${pageContext.request.contextPath}/html/teacherframe/admin-transcript.jsp"> 返回 </a>
			<a class="btn btn-primary navbar-btn" target="_blank"
				href="${pageContext.request.contextPath}/html/teacherframe/transcript.jsp"> 最大化管理 </a>
			<form id="delete" class="navbar-form navbar-right"
				action="${pageContext.request.contextPath}/teacherController/deleteStudent" method="post">
				<button type="submit" class="btn btn-warning">删除所选项</button>
			</form>
		</div>
		</nav>
		<row class="row"> <!-- 列表行 -->
		<div class="col-sm-offset-0">
			<table class="table table-hover ">
				<!--                <caption>成绩信息表</caption>-->
				<thead>
					<th></th>
					<th>学号</th>
					<th>姓名</th>
					<th>语文</th>
					<th>数学</th>
					<th>英语</th>
					<th>物理</th>
					<th>化学</th>
					<th>生物</th>
					<th>历史</th>
					<th>地理</th>
					<th>政治</th>
					<th>体育</th>
					<th>平均成绩</th>
				</thead>
				<c:if test="${!empty param.index}">
					<c:set var="transcriptIndex" value="${param.index}" scope="session" />
					<c:set var="transcriptPages" value="${param.pages}" scope="session" />
					<c:set var="transcriptLength" value="${param.length}"
						scope="session" />
				</c:if>
				<c:if test="${!empty sessionScope.transcriptIndex }">
					<tbody>
						<c:forEach begin="${sessionScope.transcriptIndex*10 }"
							end="${sessionScope.transcriptLength>sessionScope.transcriptIndex*10+9?sessionScope.transcriptIndex*10+9:sessionScope.transcriptLength}"
							varStatus="sta">
							<p hidden>${transcript=sessionScope.transcripts[sta.index]}</p>
							<form action="${pageContext.request.contextPath}/teacherController/updateTranscript"
								method="post">
								<tr>
									<td><input form="delete" type="checkbox" class=""
										value="${transcript.stuNo }" name="deletestuNo"></td>
									<td><input type="text" class="putinText"
										value="${transcript.stuNo }" name="stuNo" readonly></td>
									<td><input type="text" class="putinText"
										value="${transcript.name }" name="name" readonly></td>
									<td><input type="text" class="ctext"
										value="${transcript.chinese }" name="chinese"></td>
									<td><input type="text" class="ctext"
										value="${transcript.math }" name="math"></td>
									<td><input type="text" class="ctext"
										value="${transcript.english }" name="english"></td>
									<td><input type="text" class="ctext"
										value="${transcript.physical }" name="physical"></td>
									<td><input type="text" class="ctext"
										value="${transcript.chemical }" name="chemical"></td>
									<td><input type="text" class="ctext"
										value="${transcript.biological }" name="biological"></td>
									<td><input type="text" class="ctext"
										value="${transcript.history }" name="history"></td>
									<td><input type="text" class="ctext"
										value="${transcript.geographic }" name="geographic"></td>
									<td><input type="text" class="ctext"
										value="${transcript.political }" name="political"></td>
									<td><input type="text" class="ctext"
										value="${transcript.sport }" name="sport"></td>
									<td><input type="text" class="ctext"
										value="${transcript.average }" name="average"></td>
									<td><input type="submit" class="btn btn-warning"
										value="修改"></td>
									<td><input type="button" name="submit" data-toggle="modal"
										data-target="#Modal${sta.index}" class="btn btn-success"
										value="详细信息"></td>
									<!-- ---------------详细信息的model------------- -->
									<div class="modal fade" id="Modal${sta.index}" tabindex="-1"
										role="dialog" aria-labelledby="myModalLabel"
										aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal"
														aria-hidden="true">&times;</button>
													<h3 class="modal-title" id="myModalLabel">${transcript.name}
														本次成绩的详细信息</h3>
												</div>
												<div class="modal-body">
													<h4>本次平均成绩:${transcript.average},排名: 第${sta.index+1}名</h4>
													<a class="btn btn-primary navbar-btn" target="_blank"
														href="${pageContext.request.contextPath}/html/echarts/personBarChart.jsp?index=${sta.index}"> 本次成绩的分析 </a>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-default"
														data-dismiss="modal">关闭</button>
													<button type="submit" form="transcriptUpload"
														class="btn btn-primary">提交</button>
												</div>
											</div>
											<!-- /.modal-content -->
										</div>
										<!-- /.modal -->
									</div>
									<!-- ---------------详细信息的model------------- -->
									<td><input type="button" name="submit" data-toggle="modal"
										data-target="#message${sta.index}" class="btn btn-primary"
										value="联系家长"></td>
								</tr>
							</form>
							<div class="modal fade" id="message${sta.index}" tabindex="-1"
										role="dialog" aria-labelledby="myModalLabel"
										aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal"
														aria-hidden="true">&times;</button>
													<h3 class="modal-title" id="myModalLabel">联系
														${transcript.name} 的家长</h3>
												</div>
												<div class="modal-body">
													<form id="messageform${sta.index}"
														action="${pageContext.request.contextPath}/teacherController/addMessage"
														method="post">
														<input type="text" value="${transcript.stuNo}"
															name="messageStuNo" hidden />
														<div class="form-group">
															<label for="recipient-name" class="control-label">标题:</label>
															<input type="text" class="form-control"
																id="recipient-name" name="title">
														</div>
														<div class="form-group">
															<label for="message-text" class="control-label">内容:</label>
															<textarea name="content" class="form-control"
																id="message-text" rows="5" cols="20"></textarea>
														</div>
													</form>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-default"
														data-dismiss="modal">关闭</button>
													<button type="reset" form="messageform${sta.index}"
														class="btn btn-default">重置</button>
													<button type="submit" form="messageform${sta.index}"
														class="btn btn-primary">提交</button>
												</div>
											</div>
											<!-- /.modal-content -->
										</div>
										<!-- /.modal -->
									</div>
							<!----------------传递消息------------------------  -->
						</c:forEach>
					</tbody>
				</c:if>
			</table>
		</div>
		</row>
		<row class="row"> <nav class="col-sm-offset-4 col-xs-offset-3"
			aria-label="Page navigation"> <c:if
			test="${!empty sessionScope.transcriptIndex }">
			<ul class="pagination">
				<li><a
					href="${pageContext.request.contextPath}/html/teacherframe/transcript.jsp?index=${transcriptIndex-1>0?transcriptIndex-1:0}&pages=${transcriptPages}&length=${transcriptLength}"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
				</a></li>
				<c:forEach begin="1" end="${sessionScope.transcriptPages}" step="1"
					varStatus="sta">
					<li><a
						href="${pageContext.request.contextPath}/html/teacherframe/transcript.jsp?index=${sta.index-1}&pages=${transcriptPages}&length=${transcriptLength}">${sta.index }
					</a></li>
				</c:forEach>
				<li><a
					href="${pageContext.request.contextPath}/html/teacherframe/transcript.jsp?index=${transcriptIndex<transcriptPages-1?transcriptIndex+1:transcriptPages-1}&pages=${transcriptPages}&length=${transcriptLength}"
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