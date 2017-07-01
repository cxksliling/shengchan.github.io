<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>错误</title>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
</head>
<body>
	<%
		String errornum;
		errornum = (String) request.getAttribute("errornum");
		if (errornum == "1") {
	%>
	<script Language="JavaScript">
		alert("该设备不存在！");
		self.location="./yzyindex.html";
	</Script>
	<%
		} else if(errornum == "10"){
		%>
	<script Language="JavaScript">
		alert("删除成功！");
		self.location="./wuji_SearchAll.action";
	</Script>
	<%
	}else{
	%>
	<script Language="JavaScript">
		alert("未知的错误！");
		self.location="../index.html";
	</Script>
	<%
		}
	%>

</body>
</html>
