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
		alert("查无此人！");
		self.location="./inputid.html";
	</Script>
	<%
		} 
	 else if(errornum == "2"){
		%>
	<script Language="JavaScript">
		alert("删除成功！");
		self.location="./searchattendance_SearchAll.action";
	</Script>
	<%
	}
	 else {
	%>
	<script Language="JavaScript">
		alert("未知的错误！");
		self.location="http://localhost:8080/sc";
	</Script>
	<%
		}
	%>

</body>
</html>
