<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'errey.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<%
		String errornum;
		errornum =(String)request.getAttribute("errornum");
		if (errornum == "1") {
	%>
	<script Language="JavaScript">
		alert("时间设置错误！");
		self.location="http://localhost:8080//sc/hsy/add.jsp";
	</Script>
	<%
		} else if(errornum == "2"){
		%>
	<script Language="JavaScript">
		alert("任务数量超出机械承受范围！");
		self.location="http://localhost:8080//sc/hsy/add.jsp";
	</Script>
	<%
	}else if(errornum == "3"){
	%>
	<script Language="JavaScript">
		alert("添加成功");
		self.location="http://localhost:8080//sc/hsy/Diaodu.jsp";
	</Script>
	<%
		}
		else if(errornum=="4"){
		%>
		<script Language="JavaScript">
		alert("检验合格，请保存分配方案！");
		self.location="http://localhost:8080//sc/hsy/Diaodu.jsp";
	</Script>
		
		<%
	}
		else if(errornum=="5"){
		%>
		<script Language="JavaScript">
		alert("检验不合格！");
		self.location="http://localhost:8080//sc/hsy/Diaodu.jsp";
	</Script>
		
		<%
		}
		else if(errornum=="6"){
		%>
		<script Language="JavaScript">
		alert("任务分配完成！");
		self.location="http://localhost:8080//sc/hsy/index.jsp";
	</Script>
		
		<%
		}
		else if(errornum=="7"){
		%>
		<script Language="JavaScript">
		alert("任务分配完成！");
		self.location="http://localhost:8080//sc/hsy/index.jsp";
	</Script>
		
		<%
		}%>
  </body>
</html>
