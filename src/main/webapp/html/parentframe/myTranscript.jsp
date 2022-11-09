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
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/echarts.min.js"></script>
    <link href="${pageContext.request.contextPath}/css/mycss.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
    <title>analyze-transcript</title>
</head>
<body>
	<p hidden>${transcript=sessionScope.transcript}</p>
	<div class="panel panel-success">
		<div class="panel-heading">学生个人成绩分析-${sessionScope.transcriptName }测试</div>
		<div class="panel-body">
			<div class="form-inline">
				<div class="form-group">
					<label><span class="glyphicon glyphicon-user"
						aria-hidden="true"></span></label> <label>${student.name }</label>
					<a class="btn btn-info btn-xs" target="_blank" href="${pageContext.request.contextPath}/html/parentframe/myTranscript.jsp">最大化显示</a>
				</div>
				<table class="table table-hover ">
					<!--                <caption>成绩信息表</caption>-->
					<thead>
						<th>学号</th>
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
					<tbody>
						<tr>
							<td>${transcript.stuNo }</td>
							<td>${transcript.chinese }</td>
							<td>${transcript.math }</td>
							<td>${transcript.english }</td>
							<td>${transcript.physical }</td>
							<td>${transcript.chemical }</td>
							<td>${transcript.biological }</td>
							<td>${transcript.history }</td>
							<td>${transcript.geographic }</td>
							<td>${transcript.political }</td>
							<td>${transcript.sport }</td>
							<td>${transcript.average }</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<div id="data" hidden><input type="text" value="${transcript.name }" id="name"><input type="text" value="${transcript.chinese }" id="chinese"><input type="text" value="${transcript.math }" id="math"><input type="text" value="${transcript.english }" id="english"><input type="text" value="${transcript.physical }" id="physical"><input type="text" value="${transcript.chemical }" id="chemical"><input type="text" value="${transcript.biological }" id="biological"><input type="text" value="${transcript.history }" id="history"><input type="text" value="${transcript.geographic }" id="geographic"><input type="text" value="${transcript.political }" id="political"><input type="text" value="${transcript.sport }" id="sport"></div>


	<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
	<div id="main" style="width: 600px; height: 600px; margin: 0 auto"></div>

<script type="text/javascript">
    var myChart = echarts.init(document.getElementById('main'));

    // 指定图表的配置项和数据
    var option = {
        title : {
            text : document.getElementById('name').value+'同学的成绩柱状图'
        },
        legend:{
        	show:false
        },

        dataset : {
            source : [ [ 'product', '语文', '数学','英语','物理','化学','生物','历史','地理','政治','体育',]]
        },
        xAxis: {type:'category'},
        
        yAxis: {type:'value',max:'100'},
        
        grid: {top:'30%'},
        
        tooltip:{},
        series:[{type:'bar',seriesLayoutBy:'row'},
            {type:'pie',seriesLayoutBy: 'row',center : [ '70%', '15%' ], radius : 40}],
    };
    var myData = document.getElementById('data').childNodes;
    var arr=new Array();
    for(var i=0;i<11;i++){
        arr.push(myData[i].value);
    }
    option.dataset.source.push(arr);
    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>
</body>
</html>