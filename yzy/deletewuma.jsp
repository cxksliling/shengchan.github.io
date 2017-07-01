<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="yzy.model.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>物码信息表</title>
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
		<h2>物码信息表</h2>
		<hr>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>物料编码</th>
					<th>物料类别</th>
				
					<th></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${wuliaoma.wuliaoma}</td>
					<td>${wuliaoma.wuliaolei}</td>
					
				</tr>
			</tbody>
		</table>
		<hr>
	<%
			TWuliaoinfo eq = (TWuliaoinfo) request
					.getAttribute("wuliaoma");
			String wuliaoma = eq.getWuliaoma();
			String url = "window.location.href='./wuma_Del.action?wuliaoma=";
			url += wuliaoma;
			url += "'";
			{
		%>

		<div class="form-group">

			<div class="col-lg-9 col-lg-offset-3">
				<h3>
					<strong>警告!</strong>将会删除以上数据，无法恢复，是否确认
				</h3>
				<div>
					<button class="btn btn-primary" onclick=<%=url%>
						style="width:200px;">删除</button>
					<input type="button" value="取消" class="btn btn-primary"
						onclick="javascript:history.back(-1);" style="width:200px;"></input>
				</div>

			</div>
		</div>
		<%
			} 
		%>
	</div>
</body>
</html>