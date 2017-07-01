<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="hsy.hibnate.PcTable"%>
<%@ page import="hsy.hibnate.GwTable"%>
<%@page import="hsy.hibnate.RwTable"%>
<%@page import="hsy.hibnate.RwTableDAO" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'Diaodu.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	
	
<script type="text/javascript">
 
  function cansave(form){
  form.action = "http://localhost:8080//sc/hsy/rwuser_testok.action";
		form.submit();
 
  }
  
  function save(form){
  form.action = "http://localhost:8080//sc/hsy/rwuser_save.action";
		form.submit();
 
  }
  </script>
  
</head>




   
<body>
	<div>
		<%
	PcTable pctable=(PcTable)session.getAttribute("pct");
	 %>
		<%=pctable.getPcNumber()%>
	</div>
	<form>
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
				List eq = (List)session.getAttribute("gwtb");
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

					<% String url="http://localhost:8080//sc/hsy/rwuser_add.action?number="+((GwTable) eq.get(i)).getGwNumber()+"&xiaolv="+ ((GwTable) eq.get(i)).getGwxiaolv();%>
					<td><a href=<%=url%>>任务分配 </a></td>

				</tr>
				<%
				i++;
				}				
			%>
			</tbody>
		</table>
	
	<table>
		<tbody>
			<%
				List rw = (List)session.getAttribute("rwtb");
				int rwsize = rw.size();
				System.out.println("总个数为"+rwsize);
				int k= 0;
				while (k <rwsize) {	
				
							
			%>
			<tr>
				<td><%=((RwTable) rw.get(k)).getRwNumber()%></td>
				<td><%=((RwTable) rw.get(k)).getRwgongweibianhao()%></td>
				<td><%=((RwTable) rw.get(k)).getRwxianbianhao()%></td>
				<td><%=((RwTable) rw.get(k)).getRwjihuakaishi()%></td>
				<td><%=((RwTable) rw.get(k)).getRwjihuajieshu()%></td>
			</tr>
			<%
				k++;
				}				
			%>


		</tbody>
		</table>
		
		<input type="button" value="任务分析" onclick="cansave(this.form)" />
		<%
		if(session.getAttribute("cansave")!=null){
	    boolean b=Boolean.parseBoolean(session.getAttribute("cansave").toString());
	    if(b){
		 %>	
       <input type="button" id="btn"  value="保存结果" onclick="save(this.form)"/>
		<%
		}
		else { %>
		  <input type="button" id="btn1" disabled="true" value="保存结果" />
		 <% } 
		 }%> 
	</form>
	
</body>
</html>
