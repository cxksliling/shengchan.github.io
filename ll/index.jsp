<%@ page language="java" contentType="text/html" %>
<%@ page import="ll.model.TWorkerInfo"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Blend</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="author" content="" />

<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="../favicon.ico">

<link href='http://cdn.amazeui.org/amazeui/2.7.2/css/amazeui.min.css' rel='stylesheet' type='text/css'>
<link href='http://cdn.amazeui.org/amazeui/2.7.2/js/amazeui.min.js' rel="script">

<!-- Animate.css -->
<link rel="stylesheet" href="../css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="../css/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="../css/bootstrap.css">
<!-- Owl Carousel -->
<link rel="stylesheet" href="../css/owl.carousel.min.css">
<link rel="stylesheet" href="../css/owl.theme.default.min.css">
<!-- Theme style  -->
<link rel="stylesheet" href="../css/style.css">

<!-- Modernizr JS -->
<script src="../js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="../js/respond.min.js"></script>
	<![endif]-->

</head>
<body>

	<%
		int all = (Integer) request.getAttribute("all");
		int xian = (Integer) request.getAttribute("xian");
		int mang = (Integer) request.getAttribute("mang");
	%>

	<div id="fh5co-page">

		<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i> </a>
		<aside id="fh5co-aside" role="complementary" class="border">

			<h1 id="fh5co-logo">
				<a href="../index.html"><img src="../images/logo-colored.png"
					alt=""> </a>
			</h1>
			<nav id="fh5co-main-menu" role="navigation">
				<ul>
					<li><a href="../index.html">生产部</a></li>
					<li><a href="../dxy/dxyindex.html">绩效考核</a></li>
					<li class="fh5co-active"><a href="./index.action">人员管理</a></li>
					<li><a href="../gsq/index.html">仓库管理</a></li>
					<li><a href="../yzy/yzyindex.html">物料分配</a></li>
					<li><a href="../zp/summarywork.action">设备管理</a></li>
					<li><a href="../hsy/index.html">任务调度</a></li>
					<li><a href="../zyh/zyhindex.html">进度监测</a></li>
					<li><a href="../wwj/wwjindex.jsp">工人管理</a></li>
					<li><a href="../lzx/lzxindex.html">工位控制</a></li>
					<li><a href="../fxc/fxcindex.html">环境监测</a></li>
					<li><a href="../about.html">关于我们</a></li>
					<li><a href="../contact.html">联系我们</a></li>
				</ul>
			</nav>

			<div class="fh5co-footer">
				<p><small>Copyright &copy; 2017 生产部</small></p>
				<ul>
					<li><a href="https://jq.qq.com/?_wv=1027&k=4B79mZk"><i class="am-icon-qq am-icon-fw"></i></a></li>
					<li><a href="http://weibo.com/login.php"><i class="am-icon-weibo am-icon-fw"></i></a></li>
					<li><a href="https://plus.google.com/?hl=zh-CN"><i class="am-icon-google-plus am-icon-fw"></i></a></li>
				</ul>
			</div>

		</aside>

		<div id="fh5co-main">


			<nav class="navbar navbar-default navbar-fixed-top ">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse" data-target="#navbar"
							aria-expanded="false" aria-controls="navbar">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="../index.html">生产部人员管理系统</a>
					</div>
					<div id="navbar" class="navbar-collapse collapse navbar-right">
						<ul class="nav navbar-nav">
							<li  class="active"><a href="./index.action">人员科主页</a></li>
							<li><a
								href="./findrequirednumber_Find.action">回收分配</a>
							</li>
							<li><a href="./newworkerinfo.jsp">新增工人</a>
							</li>
							<li><a href="./inputWorkerID.html">查找工人</a></li>
							<li><a
								href="./findworker_SearchAll.action">工人信息表</a>
							</li>
						</ul>
					</div>
					<!--/.nav-collapse -->
				</div>
				<!--/.container-fluid -->
			</nav>

			<div class="fh5co-narrow-content animate-box fh5co-border-bottom"
				data-animate-effect="fadeInLeft">

				<h2 class="fh5co-heading">
					<span>人员科</span>
				</h2>
				<p>负责完工工人的状态转换及人员分配。</p>

				<div class="row">
					<div class="col-md-12">这里是人员科主页</div>
				</div>

			</div>

			

			<div class="fh5co-counters"
				style="background-image: url(../images/hero.jpg);"
				data-stellar-background-ratio="0.5" id="counter-animate">
				<div class="fh5co-narrow-content animate-box">
					<div class="row">
						<div class="col-md-4 text-center">
							<span class="fh5co-counter js-counter" data-from="0" data-to="${all}"
								data-speed="2000" data-refresh-interval="500"></span> <span
								class="fh5co-counter-label">总工人数</span>
						</div>
						<div class="col-md-4 text-center">
							<span class="fh5co-counter js-counter" data-from="0"
								data-to="${xian}" data-speed="2000" data-refresh-interval="500"></span>
							<span class="fh5co-counter-label">闲置工人</span>
						</div>
						<div class="col-md-4 text-center">
							<span class="fh5co-counter js-counter" data-from="0"
								data-to="${mang}" data-speed="2000" data-refresh-interval="500"></span>
							<span class="fh5co-counter-label">工作工人</span>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>

	<!-- jQuery -->
	<script src="../js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="../js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="../js/bootstrap.min.js"></script>
	<!-- Carousel -->
	<script src="../js/owl.carousel.min.js"></script>
	<!-- Stellar -->
	<script src="../js/jquery.stellar.min.js"></script>
	<!-- Waypoints -->
	<script src="../js/jquery.waypoints.min.js"></script>
	<!-- Counters -->
	<script src="../js/jquery.countTo.js"></script>


	<!-- MAIN JS -->
	<script src="../js/main.js"></script>

</body>
</html>

