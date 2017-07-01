<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ page import="hsy.hibnate.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'pc2.jsp' starting page</title>

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
	<form method="post" action="hsy.pcuser.action">
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
			<%List eq = (List) request.getAttribute("tlist");
				int listsize = eq.size();
				int i = 0;
				while (i < listsize) {
					String url = "http://localhost:8080/sc/hsy/pcuser_gotoGW?PcNumber=";
					url += ((PcTable) eq.get(i)).getPcNumber();
			%>
			<tr>
				<td><%=((PcTable) eq.get(i)).getPcNumber()%></td>
				<td><%=((PcTable) eq.get(i)).getScbianhao()%></td>
				<td><%=((PcTable) eq.get(i)).getScmingcheng()%></td>
				<td><%=((PcTable) eq.get(i)).getPckaisi()%></td>
				<td><%=((PcTable) eq.get(i)).getPcjieshu()%></td>
				<td><a href=<%=url%>>获取生产线信息</a>
				</td>
			</tr>
			<%
				i++;
				}
			
			%>
		</tbody>	
	</table>
	</form>

</body>
</html>
