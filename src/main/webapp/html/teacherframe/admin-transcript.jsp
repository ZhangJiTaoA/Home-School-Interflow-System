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
    <script src="../../js/zh_CN.js"></script>
	<script src="../../js/bootstrapValidator.min.js"></script>
	<link href="../../css/bootstrapValidator.min.css" rel="stylesheet">
<!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
<title>admin-transcript-iframe</title>
<style type="text/css">
.putinText {
	border-style: none;
}
</style>
</head>
<body>
	<div class="container">
		<nav class="navbar navbar-default">
		<div class="navbar-collapse">
			<a class="btn btn-primary navbar-btn"
				href="teacherController/queryTranscriptRecord"> 查询 </a>
			<a class="btn btn-success navbar-btn " data-toggle="modal" data-target="#addTranscriptModal"
				href=""> 添加成绩 </a>
			<a class="btn btn-primary navbar-btn" target="_blank"
				href="./admin-transcript.jsp"> 最大化管理 </a>
			<form id="delete" class="navbar-form navbar-right"
				action="teacherController/deleteTranscript" method="post">
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
				href="teacherController/openTranscript/${transcriptRecord.transcriptName}">打开</a></td>
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
					href="./admin-transcript.jsp?index=${TRIndex-1>0?TRIndex-1:0}&pages=${TRPages}&length=${TRLength}"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
				</a></li>
				<c:forEach begin="1" end="${requestScope.TRPages}" step="1"
					varStatus="sta">
					<li><a
						href="./admin-transcript.jsp?index=${sta.index-1}&pages=${TRPages}&length=${TRLength}">${sta.index }
					</a></li>
				</c:forEach>

				<li><a
					href="./admin-transcript.jsp?index=${TRIndex<TRPages-1?TRIndex+1:TRPages-1}&pages=${TRPages}&length=${TRLength}"
					aria-label="Next"> <span aria-hidden="true">&raquo;</span>
				</a></li>
			</ul>
		</c:if> </nav> </row>
	</div>
	<div class="modal fade" id="addTranscriptModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					添加成绩单
				</h4>
			</div>
			<div class="modal-body">
				<form id="transcriptUpload" class="col-xs-offset-0" action="teacherController/uploadTranscript" method="post" enctype="multipart/form-data">
                       <div class="form-group">
                            <label for="upload-parent">File input</label>
                            <input type="hidden" name="id" value="0">
                            <input name="myfile" type="file" id="upload-parent">
                            <p class="help-block">请点击成绩单信息的excel文件</p>
                       </div>
                       <div class="form-group">
                                <label class="col-sm-2 control-label">成绩类型</label>
                                <div class="col-sm-4">
                                    <select class="form-control" name="transcriptType">
                                        <option value="day">日测</option>
                                        <option value="week">周测</option>
                                        <option value="month">月测</option>
                                        <option value="midterm">期中</option>
                                        <option value="endterm">期末</option>
                                        <option value="other" selected>其他</option>
                                    </select>
                                </div>
                            </div>
                 </form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button class="btn btn-primary" type="submit" form="transcriptUpload">
					提交
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>		
<input hidden id="err" value="${requestScope.err }">
<script type="text/javascript">
	if(document.getElementById("err").value == "repeatCreatErr"){
		alert("文件已存在。如果要更新,请先删除,再上传新文件!");
		<% session.setAttribute("err", ""); %>
	}else if(document.getElementById("err").value == "ok"){
		alert("上传成绩成功！");
		<% session.setAttribute("err", ""); %>
	}else if(document.getElementById("err").value == "onSelect"){
		alert("未选择：请选中成绩单后再删除。");
		<% session.removeAttribute("err"); %>
	}else if(document.getElementById("err").value == "noFile"){
		alert("请先上传文件后再提交！");
		<% session.removeAttribute("err"); %>
	}else if(document.getElementById("err").value == "noStuTable"){
		alert("依赖表未生成:即该班学生信息表");
		<% session.removeAttribute("err"); %>
	}
</script>
</body>
</html>