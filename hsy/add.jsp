<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@ page import="hsy.hibnate.PcTable"%>
<%@page import="hsy.hibnate.GwTable" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    <base href="<%=basePath%>">
    
    <title>My JSP 'add.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  <script type="text/javascript"defer="defer"
src="<%=request.getContextPath() %>/hsy/My97DatePicker/WdatePicker.js">
</script>
<script type="text/javascript"> 
function funcs(form) {
form.action = "http://localhost:8080//sc/hsy/rwuser_showRW.action";
		form.submit();
}
</script>
  <body>
  <form>
 
 
  <div>
	<%
	PcTable pctable=(PcTable)session.getAttribute("pct");
	GwTable gwtable=(GwTable)session.getAttribute("newGw");
	 %>	
	</div>
			<table align="center" border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
				<tbody>					
					<tr>
						<td>任务编号</td>
						<td><input type='text' readonly="true" name="rwnumber" value=<%=gwtable.getGwNumber()+pctable.getPcjieshu()%> /></td>
					</tr>
					<tr>
						<td>生产线</td>
						<td><input type='text' readonly="true" name="xiannumber" value=<%=gwtable.getXianbianhao()%> /></td>
					</tr>
					<tr>
						<td>工位编号</td>
						<td><input type='text' readonly="true" name="gwnumber" value=<%=gwtable.getGwNumber()%> /></td>
					</tr>
					<tr>
						<td>开始时间</td>
						<td><input type="text"  name="kaishiTime"  onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" class="Wdate" style="width:300px"/></td>
					</tr>
					<tr>
						<td>结束时间</td>
						<td><input type="text"  name="jieshuTime"    onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" class="Wdate" style="width:300px"/></td>
					</tr>
					<tr>
						<td>物品编号</td>
						<td><input type='text' readonly="true" name="wupingnumber" value=<%=gwtable.getGwwuping()%> /></td>
					</tr>
					<tr>
						<td>物品生产个数</td>
						<td><input type="text"  name="wupingnum" /></td>
					</tr>
					<tr> <td><input type="button" onclick="funcs(this.form)" value="提交" /></td></tr>
				</tbody>		
			</table>
  </form>
  </body>
</html>
