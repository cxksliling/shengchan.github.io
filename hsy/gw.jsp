<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ page import="hsy.hibnate.GwTable"%>
<%@page import="hsy.hibnate.PcTable" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'gw.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<script type="text/javascript"> 
function funcs(form) {
form.action = "http://localhost:8080//sc/hsy/rwuser_diaodu.action";
		form.submit();
}


</script>


</head>

<body>
	<form>
	<!-- 显示当前操作的排程列${scbianhao }
	${scmingcheng }
	${pckaisi }
	${pcjieshu} -->
	<div>
	<%
	PcTable pctable=(PcTable)session.getAttribute("pct");
	 %>
	<%=pctable.getPcNumber()%>

	</div>
	
		<table class="table table-hover">
			<thead>
				<tr>
					<th>设备编号</th>
					<th>设备位置</th>
					<th>生产任务</th>
					<th>设备是否正常</th>
					<th>设备是否可用</th>
					<th>是否可用</th>
					<th>选择</th>
				</tr>
			</thead>
			<tbody>
				<%
				List eq = (List) request.getAttribute("gwlist");
				int listsize = eq.size();
				
				int i = 0;
				while (i < listsize) {
				
							
			%>
				<tr>
					<td><%=((GwTable) eq.get(i)).getGwNumber()%></td>
					<td><%=((GwTable) eq.get(i)).getGwmingcheng()%></td>
					<td><%=((GwTable) eq.get(i)).getXianbianhao()%></td>
					<td><%=((GwTable) eq.get(i)).getGwwuping()%></td>
					<td><%=((GwTable) eq.get(i)).getGwxiaolv()%></td>
					<%if(((GwTable) eq.get(i)).getGwcanuser()==1){%>
					<td><input type="checkbox" name="chkName" value=<%=((GwTable) eq.get(i)).getGwNumber()%>></input></td>
					<td><%="是"%></td>
					<%}else{%>
					<td><input type="checkbox" name="chk" disabled="disabled"></input></td>
					<td><%="否"%></td>
<%} %>
				</tr>
				<%
				i++;
				}
				
			%>
			</tbody>
		</table>
		<!-- 选择表里被选中的行进行调度 -->

		<div>
			<input type="button" onclick="funcs(this.form)"  value="进行任务分配" />
		</div>


	</form>







</body>
</html>
