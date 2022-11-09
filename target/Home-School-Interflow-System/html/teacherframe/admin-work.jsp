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
<script
	src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="../../bootstrap/js/bootstrap.min.js"></script>
<link href="../../css/mycss.css" rel="stylesheet">
<!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
<title>admin-work-iframe</title>
</head>
<body>
	<div class="container">
		<nav class="navbar navbar-default">
		<div class="navbar-collapse">
			<a class="btn btn-primary navbar-btn" target="_blank"
				href="./admin-work.jsp"> 最大化管理 </a>
			<a class="btn btn-primary navbar-btn" 
				href="teacherController/refreshMessage" > 刷新 </a>
			<form id="delete" class="navbar-form navbar-right"
				action="teacherController/deleteMessage" method="post">
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
					<th>时间</th>
					<th>标题</th>
					<th>内容</th>
				</thead>
				<c:if test="${!empty param.index}">
					<c:set var="messageIndex" value="${param.index}" scope="session" />
					<c:set var="messagePages" value="${param.pages}" scope="session" />
					<c:set var="messageLength" value="${param.length}" scope="session" />
				</c:if>
				<c:if test="${sessionScope.messageLength >= 0 }">
					<tbody>
						<c:forEach begin="${sessionScope.messageIndex*10 }"
							end="${sessionScope.messageLength>sessionScope.messageIndex*10+9?sessionScope.messageIndex*10+9:sessionScope.messageLength}"
							varStatus="sta">
							<p hidden>${message=sessionScope.messages[sta.index]}</p>
							<form>
								<tr>
									<td><input form="delete" type="checkbox"
										value="${message.messageDate}" name="dates"></td>
									<td><input type="text" size="15"
										value="<fmt:formatDate value="${message.messageDate}" pattern="yyyy-MM-dd hh:mm:ss"/>"
										name="messageDate" readonly></td>
									<td><input type="text" size="10" value="${message.title }"
										name="title" readonly></td>
									<td><textarea style="width:350px" name="title" readonly>${message.content }</textarea></td>
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
			test="${sessionScope.messageLength >= 0 }">
			<ul class="pagination">
				<li><a
					href="./admin-work.jsp?index=${messageIndex-1>0?messageIndex-1:0}&pages=${messagePages}&length=${messageLength}"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
				</a></li>
				<c:forEach begin="1" end="${sessionScope.messagePages}" step="1"
					varStatus="sta">
					<li><a
						href="./admin-work.jsp?index=${sta.index-1}&pages=${messagePages}&length=${messageLength}">${sta.index }
					</a></li>
				</c:forEach>
				<li><a
					href="./admin-work.jsp?index=${messageIndex<messagePages-1?messageIndex+1:messagePages-1}&pages=${messagePages}&length=${messageLength}"
					aria-label="Next"> <span aria-hidden="true">&raquo;</span>
				</a></li>
			</ul>
		</c:if> </nav> </row>
	</div>
<input hidden id="err" value="${requestScope.err }">
<script type="text/javascript">
	if(document.getElementById("err").value == "onSelect"){
		alert("未选择：请选中任务后再删除。");
		<% session.removeAttribute("err"); %>
	}
</script>
</body>