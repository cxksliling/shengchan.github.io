<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="dxy.model.TPerformanceInfo"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>绩效考核记录</title>
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
				<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="./dxyindex.html">绩效考核模块</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="http://localhost:8080/sc/">主页</a>
						</li>
						<li><a href="./inputid3.html">绩效总评</a>
							</li>
						<li><a href="./searchattendance_SearchAll.action">考勤记录</a>
									<li><a href="./searchperformance_SearchAll.action">绩效信息</a>
								</li>
								<li><a href="./evaluationlogic_SearchAll.action">评定规则</a>
								</li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">个人明细查询 <span class="caret"></span> </a>
							<ul class="dropdown-menu">
								<li><a href="./inputid.html">个人考勤明细</a>
								</li>
								<li><a href="./searchperformance_SearchAll.action">个人绩效明细</a>
								</li>
								
								<li role="separator" class="divider"></li>
							</ul>
						</li>
					</ul>
					
				</div>
				<!--/.nav-collapse -->
			</div>
			<!--/.container-fluid -->
		</nav>
	<div class="jumbotron">
		<h2 align="center">绩效考核记录</h2>
			</div>
	<hr>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>工号</th>
				<th>日期</th>
				<th>工位编号</th>
				<th>工时</th>
				<th>合格率</th>
				<th>违纪记录</th>
				<th>日考核结果</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<%
				List pf = (List) request.getAttribute("pf");
				int listsize = pf.size();
				int i = 0;
				while (i < listsize) {
					String url = "./evaluation_Find.action?id=";
					url += ((TPerformanceInfo) pf.get(i)).getId();
					String url1 = "../zp/findequipment_DelInfo.action?equipmentId=";
					url1 += ((TPerformanceInfo) pf.get(i)).getId();
			%>
			<tr>
				<td><%=((TPerformanceInfo) pf.get(i)).getId()%></td>
				<td><%=((TPerformanceInfo) pf.get(i)).getCheckDate()%></td>
				<td><%=((TPerformanceInfo) pf.get(i)).getStationId()%></td>
				<td><%=((TPerformanceInfo) pf.get(i)).getQuantity()%></td>
				<td><%=((TPerformanceInfo) pf.get(i)).getPassRate()%></td>
				<td><%=((TPerformanceInfo) pf.get(i)).getViolation()%></td>
				<td><%=((TPerformanceInfo) pf.get(i)).getEvaluation()%></td>
				<td><a href=<%=url%>>修改 </a> <a href=<%=url1%>>删除 </a>
				</td>
			</tr>
			<%
				i++;
				}
			%>
		</tbody>
	</table>
	<div class="container" align="center">
			<input type="button" value="返回" class="btn btn-primary"
				onclick="javascrtpt:window.location.href='http://localhost:8080//sc/zp/inputeqid.html'"
				style="width:200px;"></input>
		</div>
	</div>
</body>
</html>