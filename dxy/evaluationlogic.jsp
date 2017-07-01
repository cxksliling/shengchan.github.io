<%@ page language="java" contentType="text/html"  import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="dxy.model.*"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>绩效评定规则</title>

<link rel="stylesheet"
	href="../zp/vendor/bootstrap/css/bootstrap.css" />
<link rel="stylesheet"
	href="../zp/dist/css/bootstrapValidator.css" />

<script type="text/javascript"
	src="../zp/vendor/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="../zp/vendor/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="../zp/dist/js/bootstrapValidator.js"></script>
</head>
<body>
<div class="container">
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
					<a class="navbar-brand" href="./dxyindex.html">绩效考核模块</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="http://localhost:8080/sc/">主页</a>
						</li>
						<li><a href="./inputid3.html">绩效总评</a>
							</li>
						<li><a href="./searchattendance_SearchAll.action">考勤记录</a>
									<li><a href="./searchperformance_SearchAll.action">绩效信息</a>
								</li>
								<li><a href="./evaluationlogic_SearchAll.action">评定规则</a>
								</li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">个人明细查询 <span class="caret"></span> </a>
							<ul class="dropdown-menu">
								<li><a href="./inputid.html">个人考勤明细</a>
								</li>
								<li><a href="./searchperformance_SearchAll.action">个人绩效明细</a>
								</li>
								
								<li role="separator" class="divider"></li>
							</ul>
						</li>
					</ul>
					
				</div>
				<!--/.nav-collapse -->
			</div>
			<!--/.container-fluid -->
		</nav>
<% 
List lo = (List)request.getAttribute("lo");
%>
<div class="jumbotron">
	<div align="left">
		<h2 class="form-signin-heading" align="center">绩效评定规则</h2>
					</div>
	</div>
	<div  class="container"align="center">
		<div align="center">
			<h3 class="margin-base-vertical">${actionMessages[0]}</h3>
		</div>
		<!-- class都是bootstrap定义好的样式，验证是根据input中的name值 -->
		<form id="eqinfoform" method="post" class="form-horizontal"
			action="saveevaluationlogic.action">
			<!-- 下面这个div必须要有，插件根据这个进行添加提示 -->
			
						<div class="form-group" align="center">
						
			<label class="col-lg-4 control-label">考勤评估权重</label>
				<div class="col-lg-4">
					<input type="text" class="form-control" name="attendanceWeight"
						value="<%=((TEvaluationLogic)lo.get(0)).getId().getAttendanceWeight() %>" />
				</div>
			</div>

			<div class="form-group">
				<label class="col-lg-4 control-label">总工时权重</label>
				<div class="col-lg-4">
					<input type="text" class="form-control" name="quantityWeight"
						value="<%=((TEvaluationLogic)lo.get(0)).getId().getQuantityWeight() %>" />
				</div>
			</div>

			<div class="form-group">
				<label class="col-lg-4 control-label">生产合格率权重</label>
				<div class="col-lg-4">
					<input type="text" class="form-control" name="passRateWeight"
						value="<%=((TEvaluationLogic)lo.get(0)).getId().getPassRateWeight() %>" />
				</div>
			</div>

			<div class="form-group">
				<label class="col-lg-4 control-label">违纪记录权重</label>
				<div class="col-lg-4">
					<input type="text" class="form-control" name="violationWeight"
						value="<%=((TEvaluationLogic)lo.get(0)).getId().getViolationWeight() %>" />
				</div>
			</div>
			
				<div class="form-group" align="center">
				<h4 class="form-signin-heading" align="center">绩效总分为各绩效参数与相应权重乘积之和</h4>
				<br>
				</div>
				<div >
					<button type="submit" class="btn btn-primary">修改</button>
					<input type="button" value="返回" class="btn btn-primary"
						onclick="javascrtpt:window.location.href='./dxyindex.html'"></input>
				</div>
				</form>
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
					attendanceWeight : {
						message : 'The equipmentName is not valid',
						validators : {
							notEmpty : {/*非空提示*/
								message : '不能为空'
							},
						}
					},
					quantityWeight : {
						message : '密码无效',
						validators : {
							notEmpty : {
								message : '不能为空'
							},
						}
					},
					passRateWeight : {
						validators : {
							notEmpty : {
								message : '不能为空'
							},
						}
					},
					violationWeight : {
						validators : {
							notEmpty : {
								message : '不能为空'
							},
						}
					}
				}
			});
		});
	</script>
</body>
</html>