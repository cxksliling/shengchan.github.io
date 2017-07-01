<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="wwj.dao.RwTable"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>获取任务表</title>

<!-- Bootstrap core CSS -->
<link
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="../../assets/css/ie10-viewport-bug-workaround.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="navbar.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="../../assets/js/ie-emulation-modes-warning.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script type="text/javascript">
	function frmSubmit1(form) {
		form.action = "http://localhost:8080/sc/wwj/DataPrepareAction.action";
		form.submit();
	}
</script>



</head>

<body>

	<div class="container">

		<!-- Static navbar -->
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">工人管理系统</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="http://localhost:8080/sc/">主页</a>
						</li>
						<li><a href="#">About</a></li>
						<li><a href="#">Contact</a></li>
				</div>
				<!--/.nav-collapse -->
			</div>
			<!--/.container-fluid -->
		</nav>
		<div class="jumbotron">

			<div class="container">

				<!-- The justified navigation menu is meant for single line per list item.
           Multiple lines will require custom code not provided by Bootstrap. -->

				<!-- Example row of columns -->
				<h2 class="form-signin-heading">获取任务表</h2>


				<table class="table table-hover">
					<thead>
						<tr>
							<th>任务编号</th>
							<th>生产线编号</th>
							<th>工位编号</th>
							<th>开始时间</th>
							<th>结束时间</th>
							<th>物品编号</th>
							<th>物品个数</th>
						</tr>
					</thead>
					<tbody>
						<%
							List<RwTable> eq = (List<RwTable>) request.getAttribute("rwTableList");
								int listsize = eq.size();
								int i = 0;
								while (i < listsize) {
						%>
						<tr>
							
							<td><%=((RwTable) eq.get(i)).getRwNumber()%></td>
							<td><%=((RwTable) eq.get(i)).getRwxianbianhao()%></td>
							<td><%=((RwTable) eq.get(i)).getRwgongweibianhao()%></td>
							<td><%=((RwTable) eq.get(i)).getRwjihuakaishi()%></td>
							<td><%=((RwTable) eq.get(i)).getRwjihuajieshu()%></td>
							<td><%=((RwTable) eq.get(i)).getRwwupingbianhao()%></td>
							<td><%=((RwTable) eq.get(i)).getRwwupinggeshu()%></td>
						</tr>
						<%
							i++;
																											}
						%>
					</tbody>
				</table>



			</div>
		</div>
		<!-- Site footer -->
		<footer class="footer">
			<p>&copy; 2017 生产一万个大西瓜.</p>
		</footer>
	</div>
	<!-- /container -->

	<!-- /container -->

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')
	</script>
	<script
		src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>


