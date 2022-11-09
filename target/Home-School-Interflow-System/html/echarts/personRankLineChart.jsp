<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="../../js/echarts.min.js"></script>
<title>person-lineChart</title>
</head>
<body>
	
	<input type="text" hidden value="${requestScope.perLength}" id="length">
	<c:forEach begin="0" end="${requestScope.perLength}" step="1" varStatus="sta">
		<input hidden id="rank${sta.index }" value="${ranks[sta.index]}">
	</c:forEach>

	<br>
	<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
	<div id="main" style="width: 800px; height: 600px; margin: 0 auto"></div>

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

            yAxis: {type:'value',max:'50',inverse:true},

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
        
        /* 排名 */
        var arr = new Array();
        arr.push("rank");
        for(var i=length;i>=0;i--){
        	arr.push(document.getElementById("rank"+i.toString()).value);
        }
        option.dataset.source.push(arr);
        var ser={name:'排名', type:'line',seriesLayoutBy:'row',encode: {x: 0, y: 1} };
        option.series.push(ser);

        mychart.setOption(option);
    </script>
</body>
</html>