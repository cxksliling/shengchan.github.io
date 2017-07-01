<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="zp.model.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- The above 2 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<title>设备信息表</title>
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
<link rel="icon" href="../../favicon.ico">
<link
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="../../assets/css/ie10-viewport-bug-workaround.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="non-responsive.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="../../assets/js/ie-emulation-modes-warning.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div class="container">
		<div class="jumbotron">
			<h2>设备运行日志</h2>
			<div class="container" align="left">
				<input type="button" value="返回" class="btn btn-primary"
					onclick="javascrtpt:window.location.href='http://localhost:8080//sc/zp/inputeqid.html'"
					style="width:200px;"></input>
			</div>
			<div class="form-group" align="right">
				<form class="navbar-form navbar-left"
					action="findlog_FindbyDate.action">
					<div class="form-group">
						<input type="text" class="form-control" name="logdate"
							placeholder="请输入日期">
					</div>
					<button type="submit" class="btn btn-default">搜索</button>
				</form>
			</div>
		</div>
		<hr>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>设备编号</th>
					<th>工作任务</th>
					<th>设备位置</th>
					<th>时间</th>
					<th>日期</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<%
					List eq = (List) request.getAttribute("equipmentloglist");
					int listsize = eq.size();
					int i = 0;
					while (i < listsize) {
						String url = "./findlog_DelByInstance.action?Loglistnum=";
						url += i;
				%>
				<tr>
					<td><%=((TEquipmentLogInfo) eq.get(i))
						.getTEquipmentBaseInfo().getEquipmentId()%></td>
					<td><%=((TEquipmentLogInfo) eq.get(i)).getId()
						.getEquipmentTask()%></td>
					<td><%=((TEquipmentLogInfo) eq.get(i)).getId()
						.getEquipmentLocation()%></td>
					<td><%=((TEquipmentLogInfo) eq.get(i)).getId()
						.getEquipmentTaskDate()%></td>
					<td><%=((TEquipmentLogInfo) eq.get(i)).getId().getLogDate()%></td>
					<td><a href=<%=url%>>删除 </a>
					</td>
				</tr>
				<%
					i++;
					}
					request.setAttribute("EqLogList", eq);
				%>
			</tbody>
		</table>
	</div>
</body>
</html>