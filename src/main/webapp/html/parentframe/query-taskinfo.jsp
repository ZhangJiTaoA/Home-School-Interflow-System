<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
    <!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
    <title>query-taskinfo-iframe</title>
</head>
<body>
<div class="container">
	<c:if test="${!empty param.index}">
		<c:set var="messageIndex" value="${param.index}" scope="session" />
	</c:if>
	<c:if test="${sessionScope.messageLength != 0 }">
<br/>
    <div class="col-lg-4 col-lg-offset-4 col-md-6 col-md-offset-3 col-sm-7 col-sm-offset-3 col-xs-10 col-xs-offset-2">
        <h4><span class="label label-default" >时间：<fmt:formatDate value="${sessionScope.messages[sessionScope.messageIndex].messageDate}" pattern="yyyy-MM-dd hh:mm:ss"/></span></h4>
        <form >
            <div class="form-group">
                <label for="recipient-name" class="control-label">标题:</label>
                <input type="text" class="form-control" id="recipient-name" readonly value="${sessionScope.messages[sessionScope.messageIndex].title}">
            </div>
            <div class="form-group">
                <label for="message-text" class="control-label">内容:</label>
                <textarea class="form-control" id="message-text" rows="5" cols="20" readonly >${sessionScope.messages[sessionScope.messageIndex].content}</textarea>
            </div>
        </form>
        <row class="row">
            <nav class="col-sm-offset-2 col-xs-offset-3" aria-label="Page navigation">
                <ul class="pagination">
                    <li>
                        <a href="${pageContext.request.contextPath}/html/parentframe/query-taskinfo.jsp?index=${messageIndex-1>0?messageIndex-1:0}" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <c:forEach begin="1" end="${sessionScope.messageLength}" step="1" varStatus="sta">
						<li><a href="${pageContext.request.contextPath}/html/parentframe/query-taskinfo.jsp?index=${sta.index-1}">${sta.index } </a></li>
					</c:forEach>
                    <li>
                        <a href="${pageContext.request.contextPath}/html/parentframe/query-taskinfo.jsp?index=${messageIndex<messageLength-1?messageIndex+1:messageLength-1}" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </row>
    </div>
    </c:if>	
    <c:if test="${sessionScope.messageLength == 0 }">
    	<h3>无消息</h3>
    </c:if>
</div>
</body>