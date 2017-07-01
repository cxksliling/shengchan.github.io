<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<script type="text/javascript"> 
function funcs(form) {
form.action = "http://localhost:8080//sc/hsy/pcuser_pcshow.action";
		form.submit();
}
function funcs1(form) {
form.action = "http://localhost:8080//sc/hsy/pcuser_ShowRW.action";
		form.submit();
}
</script>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
   <form action="pcuser.action" method="post">
  <div style="text-align:conter;margin-left: 10%;width:150px; float:left;">
   <input type="submit" value="查看排程信息表" onclick="funcs(this.form)"/>
   </div>
   <div style="text-align:conter;margin-left: 10%; width:150px;float:left;">
   <input type="submit" value="查看任务分配表" onclick="funcs1(this.form)"/>
   </div>
   </form>
  </body>
</html>
