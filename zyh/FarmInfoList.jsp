<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="zyh.model.TFarmInfo"%>

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
				int listsize = eq.size();
				int i = 0;
				while (i < listsize) {			
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
				//System.out.println(i);
				}
			%>
		</tbody>
	</table>
	</div>
</body>
</html>