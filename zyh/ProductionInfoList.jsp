<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="zyh.model.TProductionLineInfo"%>

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
				/*for(int j=0;j<listsize;j++){
					System.out.println(((TProductionLineInfo) eq.get(j)).getStationTime());
				}*/
				//System.out.println(listsize);
				while (i < listsize) {
				//传递两个参数
				//System.out.println(i);
					/*String url  = "http://localhost:8080/sc/zyh/FindStationInfo_Find.action?id="
					+((TStationInfo) eq.get(i)).getId();*/
				//传递两个参数
				
					/*String url1 = "http://localhost:8080/sc/zyh/FindStationInfo_DelInfo.action?id="
					+((TStationInfo) eq.get(i)).getId();*/
								
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
	</div>
</body>
</html>