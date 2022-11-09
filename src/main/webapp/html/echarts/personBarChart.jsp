<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="../../js/echarts.min.js"></script>
<title>person-barChart</title>
</head>
<body>
	<p hidden>${transcript=sessionScope.transcripts[param.index]}</p>
	<input type="text" class="putinText" hidden value="${transcript.stuNo}" id="stuNo">
	<div id="data" hidden><input type="text" value="${transcript.name }" id="name"><input type="text" value="${transcript.chinese }" id="chinese"><input type="text" value="${transcript.math }" id="math"><input type="text" value="${transcript.english }" id="english"><input type="text" value="${transcript.physical }" id="physical"><input type="text" value="${transcript.chemical }" id="chemical"><input type="text" value="${transcript.biological }" id="biological"><input type="text" value="${transcript.history }" id="history"><input type="text" value="${transcript.geographic }" id="geographic"><input type="text" value="${transcript.political }" id="political"><input type="text" value="${transcript.sport }" id="sport"></div>


	<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
	<div id="main" style="width: 600px; height: 600px; margin: 0 auto"></div>

	<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
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