<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="zyh.model.TProductionLineInfo"%>
<%@ page import="zyh.model.TStationInfo" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>工位信息表</title>
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
		<h2>生产线信息表</h2>
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
	<col span="6"></col>
	<col bgcolor="red"></col>
		<thead>
			<tr>
				<th>实时时间</th>
				<th>生产线编号</th>
				<th>车间编号</th>
				<th>生产线任务</th>
				<th>目标产量</th>
				<th>实际产量</th>
				<th>达成率</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<%
				List eq = (List) request.getAttribute("ProductionLinelist");
				int listsize = eq.size();
				int i = 0;
			
				while (i < listsize) {
			
			%>
			<tr>
			    <td><%=((TProductionLineInfo) eq.get(i)).getStationTime()%></td>
			    <!--<% System.out.println(((TProductionLineInfo) eq.get(i)).getStationTime()); %>  -->
			    <td><%=((TProductionLineInfo) eq.get(i)).getProductionLineId()%></td>
				<td><%=((TProductionLineInfo) eq.get(i)).getFarmId()%></td>
				<td><%=((TProductionLineInfo) eq.get(i)).getProductionLineTask()%></td>
				<td><%=((TProductionLineInfo) eq.get(i)).getProductionLineTargetOutput1()%></td>
				<td><%=((TProductionLineInfo) eq.get(i)).getProductionLineActualOutput1()%></td>
				<td><%=((TProductionLineInfo) eq.get(i)).getProductionLineReachRate1()%></td>
				<td>
			</tr>
			<%
				i++;
				//System.out.println(i);
				}
			%>
		</tbody>
	</table>
	<table class="table table-condensed">
	<col span="5"></col>
	<col bgcolor="red"></col>
		<thead>
			<tr>
				<th>实时时间</th>
				<th>工位编号</th>
				<th>设备状态</th>
				<th>物料状态</th>
				<th>环境状态</th>
				<th>达成率</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<%
				List eq1 = (List) request.getAttribute("StationInfolist");
				int listsize1 = eq1.size();
				int j = 0;

				while (j < listsize1) {
								
			%>
			<tr>
			    <td><%=((TStationInfo) eq1.get(j)).getStationTime()%></td>
			   	<td><%=((TStationInfo) eq1.get(j)).getStationId()%></td>
				<td><%=((TStationInfo) eq1.get(j)).getEquipmetStatus()%></td>
				<td><%=((TStationInfo) eq1.get(j)).getMaterialsStatus()%></td>
				<td><%=((TStationInfo) eq1.get(j)).getEnvironmentStatus()%></td>
				<td><%=((TStationInfo) eq1.get(j)).getReachRate1()%></td>
				<td>
				
				</td>
			</tr>
			<%
				j++;
				//System.out.println(i);
				}
			%>
		</tbody>
	</table>
	</div>
</body>
</html>