<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="yzy.model.*"%>
<script language="JavaScript">  
<!--   
function doZoom(size){  
    document.getElementById('zoom').style.fontSize=size+'px'  
} 

var DOM = (document.getElementById) ? 1 : 0;  
var NS4 = (document.layers) ? 1 : 0;  
var IE4 = 0;  
if (document.all)  
{  
    IE4 = 1;  
    DOM = 0;  
} 
var win = window;     
var n   = 0; 
function findIt() {  
    if (document.getElementById("searchstr").value != "")  
        findInPage(document.getElementById("searchstr").value);  
} 

function findInPage(str) {  
var txt, i, found; 
if (str == "")  
    return false; 
if (DOM)  
{  
    win.find(str, false, true);  
    return true;  
} 
if (NS4) {  
    if (!win.find(str))  
        while(win.find(str, false, true))  
            n++;  
    else  
        n++; 
    if (n == 0)  
        alert("未找到指定内容.");  
} 
if (IE4) {  
    txt = win.document.body.createTextRange(); 
    for (i = 0; i <= n && (found = txt.findText(str)) != false; i++) {  
        txt.moveStart("character", 1);  
        txt.moveEnd("textedit");  
    } 
if (found) {  
    txt.moveStart("character", -1);  
    txt.findText(str);  
    txt.select();  
    txt.scrollIntoView();  
    n++;  
}  
else {  
    if (n > 0) {  
        n = 0;  
        findInPage(str);  
    }  
    else  
        alert("未找到指定内容.");  
    }  
} 
return false;  
}  // -->  
</script> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>分配信息表</title>
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
	<div class="jumbotron">
		<h2>分配信息表</h2>
		<input type="text" id="searchstr" name="searchstr" class="textbox" size="10">  
        <input type="button" value="查找分配信息表" onclick="javascript:findIt();" class="sbttn">          
		<h2> <a href="http://localhost:8080/sc/yzy/xinzengji.jsp">新增物机分配</a></h2>      
		<input type="button" value="返回" class="btn btn-primary"
				onclick="javascrtpt:window.location.href='./yzyindex.html'"
				style="width:200px;"></input>
		
	</div>
	<hr>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>物料编码</th>
				<th>机械编号</th>
				<th>机械性能</th>
				<th>工位编号</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<%
				List eq = (List) request.getAttribute("WULIST");
				int listsize = eq.size();
				int i = 0;
				while (i < listsize) {
					String url = "./wuji_Find.action?wuliaoma=";
					url += ((TWujiinfo) eq.get(i)).getWuliaoma();
					String url1 = "./wuji_FindDel.action?wuliaoma=";
					url1 += ((TWujiinfo) eq.get(i)).getWuliaoma();
				
			%>
			<tr>
				<td><%=((TWujiinfo) eq.get(i)).getWuliaoma()%></td>
				<td><%=((TWujiinfo) eq.get(i)).getJixieid()%></td>
				<td><%=((TWujiinfo) eq.get(i)).getJixiexingneng()%></td>
				<td><%=((TWujiinfo) eq.get(i)).getGongWeiId()%></td>
		
				<td><a href=<%=url%>>修改 </a> <a href=<%=url1%>>删除 </a>
				</td>
				</tr>
			<%
				i++;
				}
			%>
		</tbody>
	</table>
	</div>
</body>
</html>