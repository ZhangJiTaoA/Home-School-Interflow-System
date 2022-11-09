<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="${pageContext.request.contextPath}/js/echarts.min.js"></script>
<link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<link href="${pageContext.request.contextPath}/css/mycss.css" rel="stylesheet">
<title>class-barChart</title>
</head>
<body>
	<a class="btn btn-primary navbar-btn"
				href="${pageContext.request.contextPath}/html/teacherframe/analyze-transcript.jsp"> 返回 </a>
	<input hidden value="${sessionScope.objectName}" id="objectName">
	<input hidden value="${sessionScope.scoresLength}" id="length">
	<c:forEach begin="0" end="${sessionScope.scoresLength }" step="1" varStatus="sta">
		<input hidden id="score${sta.index }" value="${sessionScope.scores[sta.index] }">
		<input hidden id="grade${sta.index }" value="${sessionScope.grades[sta.index] }">
	</c:forEach>
	<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
	<div id="main" style="width: 600px; height: 600px; margin: 0 auto"></div>
	<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));
    // 指定图表的配置项和数据
    var option = {
        title : {
            text : document.getElementById('objectName').value+'成绩柱状对比图'
        },
        legend:{
        	show:false
        },
        dataset : {
            source : [ ]
        },
        xAxis: {type:'category'},
        yAxis: {type:'value'},
        grid: {top:'30%'},
        tooltip:{},
        series:[{type:'bar',seriesLayoutBy:'row'},
            {type:'pie',seriesLayoutBy: 'row',center : [ '70%', '15%' ], radius : 40}],
    };
    var length = document.getElementById('length').value;
    var scoreArr=new Array();
    var gradeArr=new Array();
    gradeArr.push("product")
    scoreArr.push("平均成绩")
    for(var i=0;i<=length;i++){
    	scoreArr.push(document.getElementById('score'+i.toString()).value);
    	gradeArr.push(document.getElementById('grade'+i.toString()).value+"班");
    }
    option.dataset.source.push(gradeArr);
    option.dataset.source.push(scoreArr);
    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>
</body>
</html>