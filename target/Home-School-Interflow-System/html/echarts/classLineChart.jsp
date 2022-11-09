<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="../../js/echarts.min.js"></script>
<link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="../../bootstrap/js/bootstrap.min.js"></script>
<link href="../../css/mycss.css" rel="stylesheet">
<title>class-lineChart</title>
</head>
<body>
	<a class="btn btn-primary navbar-btn"
				href="../teacherframe/analyze-transcript.jsp"> 返回 </a>
	<input hidden value="${sessionScope.objectName}" id="objectName">
	<input hidden value="${sessionScope.scoresLength}" id="length">
	<c:forEach begin="0" end="${sessionScope.scoresLength }" step="1" varStatus="sta">
		<input hidden id="score${sta.index }" value="${sessionScope.scores[sta.index] }">
	</c:forEach>

	<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
	<div id="main" style="width: 600px; height: 600px; margin: 0 auto"></div>

	<script>
        // 初始化实例对象
        var mychart = echarts.init(document.getElementById("main"));
        // 指定配置项和数据
        var option = {
            title:{
                text:"学生成绩分析图"
            },
            legend:{
            	top: "10%",
                show:true
            },
            dataset:{
                // 月份日期
                source:[],
            },

            xAxis: {type:'category'},

            yAxis: {type:'value'},

            grid: {top:'20%'},

            tooltip:{ trigger: 'axis' },

            series:[],
        }
        
        /* 第一行数据 */
        var length = document.getElementById("length").value;
        var arr = new Array();
        arr.push("product");
        for(var i=length;i>=0;i--){
        	arr.push(i.toString());
        }
        option.dataset.source.push(arr);
        
        
        var arr = new Array();
        arr.push(document.getElementById("objectName").value);
        for(var i=length;i>=0;i--){
        	if(document.getElementById("score"+i.toString()).value!=-1)
        	arr.push(document.getElementById("score"+i.toString()).value);
        }
        option.dataset.source.push(arr);
        var ser={name:document.getElementById("objectName").value, type:'line',seriesLayoutBy:'row',encode: {x: 0, y: 1} };
        option.series.push(ser);
       
        
        mychart.setOption(option);
    </script>
</body>
</html>