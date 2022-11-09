<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="${pageContext.request.contextPath}/js/echarts.min.js"></script>
<title>person-lineChart</title>
</head>
<body>
	
	<input type="text" hidden value="${requestScope.perLength}" id="length">
	<c:forEach begin="0" end="${requestScope.perLength}" step="1" varStatus="sta">
		<p hidden>${transcript = requestScope.perTranscripts[sta.index] }</p>
		<div hidden id="data${sta.index}" ><input type="text" value="${transcript.name }" id="name"><input type="text" value="${transcript.average }" id="average"><input type="text" value="${transcript.chinese }" id="chinese"><input type="text" value="${transcript.math }" id="math"><input type="text" value="${transcript.english }" id="english"><input type="text" value="${transcript.physical }" id="physical"><input type="text" value="${transcript.chemical }" id="chemical"><input type="text" value="${transcript.biological }" id="biological"><input type="text" value="${transcript.history }" id="history"><input type="text" value="${transcript.geographic }" id="geographic"><input type="text" value="${transcript.political }" id="political"><input type="text" value="${transcript.sport }" id="sport"></div>
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

            yAxis: {type:'value',max:'100'},

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
        
        /* 平均分 */
        var arr = new Array();
        arr.push("average");
        for(var i=length;i>=0;i--){
        	arr.push(document.getElementById("data"+i.toString()).childNodes[1].value);
        }
        option.dataset.source.push(arr);
        var ser={name:'平均分', type:'line',seriesLayoutBy:'row',encode: {x: 0, y: 1} };
        option.series.push(ser);
        /* 语文 */
        var arr = new Array();
        arr.push("chinese");
        for(var i=length;i>=0;i--){
        	if(document.getElementById("data"+i.toString()).childNodes[2].value!=-1)
        	arr.push(document.getElementById("data"+i.toString()).childNodes[2].value);
        }
        option.dataset.source.push(arr);
        var ser={name:'语文', type:'line',seriesLayoutBy:'row',encode: {x: 0, y: 2} };
        option.series.push(ser);
        /* 数学 */
        var arr = new Array();
        arr.push("math");
        for(var i=length;i>=0;i--){
        	if(document.getElementById("data"+i.toString()).childNodes[3].value!=-1)
        	arr.push(document.getElementById("data"+i.toString()).childNodes[3].value);
        }
        option.dataset.source.push(arr);
        var ser={name:'数学', type:'line',seriesLayoutBy:'row',encode: {x: 0, y: 3} };
        option.series.push(ser);
        /* 英语 */
        var arr = new Array();
        arr.push("english");
        for(var i=length;i>=0;i--){
        	if(document.getElementById("data"+i.toString()).childNodes[4].value!=-1)
        	arr.push(document.getElementById("data"+i.toString()).childNodes[4].value);
        }
        option.dataset.source.push(arr);
        var ser={name:'英语', type:'line',seriesLayoutBy:'row',encode: {x: 0, y: 4} };
        option.series.push(ser);
        /* 物理 */
        var arr = new Array();
        arr.push("physical");
        for(var i=length;i>=0;i--){
        	if(document.getElementById("data"+i.toString()).childNodes[5].value!=-1)
        	arr.push(document.getElementById("data"+i.toString()).childNodes[5].value);
        }
        option.dataset.source.push(arr);
        var ser={name:'物理', type:'line',seriesLayoutBy:'row',encode: {x: 0, y: 5} };
        option.series.push(ser);
        /* 化学 */
        var arr = new Array();
        arr.push("chemical");
        for(var i=length;i>=0;i--){
        	if(document.getElementById("data"+i.toString()).childNodes[6].value!=-1)
        	arr.push(document.getElementById("data"+i.toString()).childNodes[6].value);
        }
        option.dataset.source.push(arr);
        var ser={name:'化学', type:'line',seriesLayoutBy:'row',encode: {x: 0, y: 6} };
        option.series.push(ser);
        /* 生物 */
        var arr = new Array();
        arr.push("biological");
        for(var i=length;i>=0;i--){
        	if(document.getElementById("data"+i.toString()).childNodes[7].value!=-1)
        	arr.push(document.getElementById("data"+i.toString()).childNodes[7].value);
        }
        option.dataset.source.push(arr);
        var ser={name:'生物', type:'line',seriesLayoutBy:'row',encode: {x: 0, y: 7} };
        option.series.push(ser);
        /* 历史 */
        var arr = new Array();
        arr.push("history");
        for(var i=length;i>=0;i--){
        	if(document.getElementById("data"+i.toString()).childNodes[8].value!=-1)
        		arr.push(document.getElementById("data"+i.toString()).childNodes[8].value);
        }
        option.dataset.source.push(arr);
        var ser={name:'历史', type:'line',seriesLayoutBy:'row',encode: {x: 0, y: 8} };
        option.series.push(ser);
        /* 地理 */
        var arr = new Array();
        arr.push("geographic");
        for(var i=length;i>=0;i--){
        	if(document.getElementById("data"+i.toString()).childNodes[9].value!=-1)
        	arr.push(document.getElementById("data"+i.toString()).childNodes[9].value);
        }
        option.dataset.source.push(arr);
        var ser={name:'地理', type:'line',seriesLayoutBy:'row',encode: {x: 0, y: 9} };
        option.series.push(ser);
        /* 政治 */
        var arr = new Array();
        arr.push("political");
        for(var i=length;i>=0;i--){
        	if(document.getElementById("data"+i.toString()).childNodes[10].value!=-1)
        	arr.push(document.getElementById("data"+i.toString()).childNodes[10].value);
        }
        option.dataset.source.push(arr);
        var ser={name:'政治', type:'line',seriesLayoutBy:'row',encode: {x: 0, y: 10} };
        option.series.push(ser);
        /* 体育 */
        var arr = new Array();
        arr.push("sport");
        for(var i=length;i>=0;i--){
        	if(document.getElementById("data"+i.toString()).childNodes[11].value!=-1)
        	arr.push(document.getElementById("data"+i.toString()).childNodes[11].value);
        }
        option.dataset.source.push(arr);
        var ser={name:'体育', type:'line',seriesLayoutBy:'row',encode: {x: 0, y: 11} };
        option.series.push(ser);

        mychart.setOption(option);
    </script>
</body>
</html>