<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="zp.model.*"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

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

<link rel="stylesheet"
	href="./vendor/bootstrap/css/bootstrap.css" />
<link rel="stylesheet"
	href="./dist/css/bootstrapValidator.css" />
<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="../favicon.ico">

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
<script type="text/javascript"
	src="./vendor/jquery/jquery.min.js"></script>

<script type="text/javascript"
	src="./dist/js/bootstrapValidator.js"></script>
</head>
<body>
	<%
		TEquipmentWorkInfo eq = (TEquipmentWorkInfo) request
				.getAttribute("equipmentwork");
	%>
	<div id="fh5co-page">

		<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i> </a>
		<aside id="fh5co-aside" role="complementary" class="border js-fullheight">

			<h1 id="fh5co-logo"><a href="../index.html"><img src="../images/logo-colored.png" alt=""></a></h1>
			<nav id="fh5co-main-menu" role="navigation">
				<ul>
					<li><a href="../index.html">生产部</a></li>
					<li><a href="../dxy/dxyindex.html">绩效考核</a></li>
					<li><a href="../ll/index.action">人员管理</a></li>
					<li><a href="../gsq/index.html">仓库管理</a></li>
					<li><a href="../yzy/yzyindex.html">物料分配</a></li>
					<li class="fh5co-active"><a href="../zp/summarywork.action">设备管理</a></li>
					<li><a href="../hsy/index.html">任务调度</a></li>
					<li><a href="../zyh/zyhindex.html">进度监测</a></li>
					<li><a href="../wwj/wwjindex.html">工人管理</a></li>
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
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse" data-target="#navbar"
							aria-expanded="false" aria-controls="navbar">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">生产部设备管理系统</a>
					</div>
					<div id="navbar" class="navbar-collapse collapse">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="./summarywork.action">主页</a>
							</li>
							<li><a
								href="./findlog_SearchAll.action">设备日志</a>
							</li>
							<li><a
								href="./findwork_SearchAll.action">设备工作情况</a>
							</li>
							<li  class="active"><a
								href="./findequipment_SearchAll.action">设备信息</a>
							</li>
							<li><a href="./equipmentnew.jsp">新增设备</a>
							</li>
						</ul>
					</div>
					<!--/.nav-collapse -->
				</div>
			</nav>
			<div class="fh5co-narrow-content animate-box fh5co-border-bottom"
				data-animate-effect="fadeInLeft">

				<h2 class="fh5co-heading">
					<span>设备基本信息</span>
				</h2>
				<div class="container">
					<div align="center">
						<h3 class="margin-base-vertical">${actionMessages[0]}</h3>
					</div>
					<!-- class都是bootstrap定义好的样式，验证是根据input中的name值 -->
					<form id="eqinfoform" method="post" class="form-horizontal"
						action="saveequipment.action">
						<!-- 下面这个div必须要有，插件根据这个进行添加提示 -->
						<div class="form-group">
							<label class="col-lg-3 control-label">设备编号</label>
							<div class="col-lg-5">
								<input type="text" class="form-control" name="equipmentId"
									value="${equipment.equipmentId}"
									placeholder="Readonly input here…" readonly />
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-3 control-label">设备名称</label>
							<div class="col-lg-5">
								<input type="text" class="form-control" name="equipmentName"
									value="${equipment.equipmentName}" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-3 control-label">生产日期</label>
							<div class="col-lg-5">
								<input type="text" class="form-control" name="equipmentDate"
									value="${equipment.equipmentDate}" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-3 control-label">设备功能</label>
							<div class="col-lg-5">
								<input type="text" class="form-control" name="equipmentFuction"
									value="${equipment.equipmentFuction}" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-3 control-label">设备参数</label>
							<div class="col-lg-5">
								<input type="text" class="form-control"
									name="equipmentParameter"
									value="${equipment.equipmentParameter}" />
							</div>
						</div>

						<div class="form-group">
							<div class="col-lg-9 col-lg-offset-3">
								<button type="submit" class="btn btn-primary">提交</button>
								<input type="button" value="返回" class="btn btn-primary"
									onclick="window.location='./findequipment_SearchAll.action'"></input>
							</div>
						</div>
					</form>

				</div>

			</div>
		</div>
	</div>

	<script type="text/javascript">
		$(document).ready(function() {
			/**
			 * 下面是进行插件初始化
			 * 你只需传入相应的键值对
			 * */
			$('#eqinfoform').bootstrapValidator({
				message : 'This value is not valid',
				feedbackIcons : {/*输入框不同状态，显示图片的样式*/
					valid : 'glyphicon glyphicon-ok',
					invalid : 'glyphicon glyphicon-remove',
					validating : 'glyphicon glyphicon-refresh'
				},
				fields : {/*验证*/
					equipmentName : {
						message : 'The equipmentName is not valid',
						validators : {
							notEmpty : {/*非空提示*/
								message : '设备名称不能为空'
							},
							stringLength : {/*长度提示*/
								min : 1,
								max : 40,
								message : '设备名长度必须在1到40之间'
							}
						}
					},

					equipmentDate : {
						message : '密码无效',
						validators : {
							notEmpty : {
								message : '日期不能为空'
							},
							date : {
								format : 'YYYY-MM-DD',
								message : '不是一个正确的日期，格式：YYYY-MM-DD'
							}
						}
					},
					equipmentParameter : {
						message : '设备参数无效',
						validators : {
							notEmpty : {
								message : '设备参数不能为空'
							},
						}
					},
					equipmentFuction : {
						validators : {
							notEmpty : {
								message : '设备功能不能为空'
							},
						}
					}
				}
			});
		});
	</script>


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
