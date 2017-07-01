<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="hsy.hibnate.RwTable"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Showrenwu.jsp' starting page</title>
    
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
  <form>
  
  <a href="">返回主页</a>
<table class="table table-hover">
		<thead>
			<tr>
				<th>设备编号</th>
				<th>设备位置</th>
				<th>生产任务</th>
				<th>设备是否正常</th>
				<th>设备是否正在工作</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
		
			<%
			if(request.getAttribute("rwlist")!=null){
			
			
			List eq = (List) request.getAttribute("rwlist");
				int listsize = eq.size();
				int i = 0;
				
				while (i < listsize) {
			%>
			<tr>
				<td><%=((RwTable) eq.get(i)).getRwNumber()%></td>
				<td><%=((RwTable) eq.get(i)).getRwgongweibianhao()%></td>
				<td><%=((RwTable) eq.get(i)).getRwjihuajieshu()%></td>
				<td><%=((RwTable) eq.get(i)).getRwjihuajieshu()%></td>
				<td><%=((RwTable) eq.get(i)).getRwwupinggeshu()%></td>
				
				</td>
			</tr>
			<%
				i++;
				}
			}
			%>
		</tbody>	
	</table>
	</form>
  
  
  
  </body>
</html>
