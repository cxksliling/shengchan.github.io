<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="zyh.model.TStationInfo"%>

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
		<h2>工位信息表</h2>
		<div class="container" align="left">
		<% HttpServletRequest req=(HttpServletRequest)request; 
		req.getRequestURL();%>
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
	<col span="13"></col>
	<col bgcolor="red"></col>
		<thead>
			<tr>
				<th>实时时间</th>
				<th>工位编号</th>
				<th>工位名称</th>
				<th>生产线编号</th>
				<th>工人编号</th>
				<th>工人工时</th>
				<th>设备编号</th>
				<th>设备状态</th>
				<th>物料编号</th>
				<th>物料状态</th>
				<th>环境状态</th>
				<th>目标产量</th>
				<th>实际产量</th>
				<th>达成率</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<%
				List eq = (List) request.getAttribute("StationInfolist");
				int listsize = eq.size();
				int i = 0;
		
				//System.out.println(listsize);
				while (i < listsize) {
				
			%>
			<tr>
			    <td><%=((TStationInfo) eq.get(i)).getStationTime()%></td>
			    <!--<% System.out.println(((TStationInfo) eq.get(i)).getStationTime()); %>  -->
			    <td><%=((TStationInfo) eq.get(i)).getStationId()%></td>
			    <!--<% System.out.println(((TStationInfo) eq.get(i)).getStationId());%>  -->
				<td><%=((TStationInfo) eq.get(i)).getStationName()%></td>
				<td><%=((TStationInfo) eq.get(i)).getProductionLineId()%></td>
				<td><%=((TStationInfo) eq.get(i)).getWorkerId()%></td>
				<td><%=((TStationInfo) eq.get(i)).getWorkerHours()%></td>
				<td><%=((TStationInfo) eq.get(i)).getEquipmentId()%></td>
				<td><%=((TStationInfo) eq.get(i)).getEnvironmentStatus()%></td>
				<td><%=((TStationInfo) eq.get(i)).getMaterialsId()%></td>
				<td><%=((TStationInfo) eq.get(i)).getMaterialsStatus()%></td>
				<td><%=((TStationInfo) eq.get(i)).getEnvironmentStatus()%></td>
				<td><%=((TStationInfo) eq.get(i)).getTargetOutput1()%></td>
				<td><%=((TStationInfo) eq.get(i)).getActualOutput1()%></td>
				<td><%=((TStationInfo) eq.get(i)).getReachRate1()%></td>
				<td>
				
				</td>
			</tr>
			<%
				i++;
				//System.out.println(i);
				}
			%>
		</tbody>
	</table>
	</div>
</body>
</html>