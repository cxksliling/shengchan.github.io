<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="zyh.model.TFarmInfo"%>
<%@ page import="zyh.model.TProductionLineInfo" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>车间信息表</title>
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	<div class="jumbotron">
		<h2>车间信息表</h2>
		<div class="container" align="left">
			<button onclick="goBack()" style="width:200px;" class="btn btn-primary" >返回</button>
 
<script>
function goBack() {
window.history.back();
}
</script> 
		</div>
	</div>
	<hr>
	<table class="table table-condensed">
		<thead>
		<col span="5"></col>
	<col bgcolor="red"></col>
			<tr>
				<th>实时时间</th>
				<th>车间编号</th>
				<th>运行任务</th>
				<th>目标产量</th>
				<th>实际产量</th>
				<th>达成率</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<%
				List eq = (List) request.getAttribute("FarmInfolist");
				int i = 0;
				while (i <eq.size()) {
			%>
			<tr>
			    <td><%=((TFarmInfo) eq.get(i)).getStationTime()%></td>
			    <td><%=((TFarmInfo) eq.get(i)).getFarmId()%></td>
				<td><%=((TFarmInfo) eq.get(i)).getFarmTask()%></td>
				<td><%=((TFarmInfo) eq.get(i)).getFarmTargetOutput1()%></td>
				<td><%=((TFarmInfo) eq.get(i)).getFarmActualOutput1()%></td>
				<td><%=((TFarmInfo) eq.get(i)).getFarmReachRate1()%></td>
				<td>
				</td>
			</tr>
			<%
				i++;
				}
			%>
		</tbody>
	</table>
	<table class="table table-condensed">
	<col span="4"></col>
	<col bgcolor="red"></col>
		<thead>
			<tr>
				<th>实时时间</th>
				<th>生产线编号</th>
				<th>生产线任务</th>
				<th>目标产量</th>
				<th>达成率</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<%
				List eq1 = (List) request.getAttribute("ProductionLinelist");
				int j = 0;
				while (j < eq1.size()) {
			%>
			<tr>
			    <td><%=((TProductionLineInfo) eq1.get(j)).getStationTime()%></td>
			    <td><%=((TProductionLineInfo) eq1.get(j)).getProductionLineId()%></td>
				<td><%=((TProductionLineInfo) eq1.get(j)).getProductionLineTask()%></td>
				<td><%=((TProductionLineInfo) eq1.get(j)).getProductionLineTargetOutput1()%></td>
				<td><%=((TProductionLineInfo) eq1.get(j)).getProductionLineReachRate1()%></td>
				<td>
			</tr>
			<%
				j++;
				}
			%>
		</tbody>
	</table>
	</div>
</body>
</html>