<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="dxy.model.TAttendanceInfo"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>个人考勤信息</title>

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
	<div class="jumbotron">
	<div align="center">
		<h2 class="form-signin-heading">个人考勤信息</h2>
		</div>
	</div>
	<div class="container">
		<div align="center">
			<h3 class="margin-base-vertical">${actionMessages[0]}</h3>
		</div>
		<!-- class都是bootstrap定义好的样式，验证是根据input中的name值 -->
		<form id="eqinfoform" method="post" class="form-horizontal"
			action="saveattendance.action">
			<!-- 下面这个div必须要有，插件根据这个进行添加提示 -->
			<div class="form-group">
				<label class="col-lg-3 control-label">工号</label>
				<div class="col-lg-5">
					<input type="text" class="form-control" name="id"
						value="${at.id}"
						placeholder="Readonly input here…" readonly />
				</div>
			</div>

			<div class="form-group">
				<label class="col-lg-3 control-label">考勤日期</label>
				<div class="col-lg-5">
					<input type="text" class="form-control" name="checkDate"
						value="${at.checkDate}" />
				</div>
			</div>

			<div class="form-group">
				<label class="col-lg-3 control-label">是否请假</label>
				<div class="col-lg-5">
					<input type="text" class="form-control" name="isAfl"
						value="${at.isAfl}" />
				</div>
			</div>

			<div class="form-group">
				<label class="col-lg-3 control-label">到岗时间</label>
				<div class="col-lg-5">
					<input type="text" class="form-control" name="mipTime"
						value="${at.mipTime}" />
				</div>
			</div>

			<div class="form-group">
				<label class="col-lg-3 control-label">是否迟到</label>
				<div class="col-lg-5">
					<input type="text" class="form-control" name="isDelay"
						value="${at.isDelay}" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-lg-3 control-label">迟到时间</label>
				<div class="col-lg-5">
					<input type="text" class="form-control" name="delayTime"
						value="${at.delayTime}" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-lg-3 control-label">考勤评估</label>
				<div class="col-lg-5">
					<input type="text" class="form-control" name="evaluation"
						value="${at.evaluation}" />
				</div>
			</div>

			<div class="form-group">
				<div class="col-lg-9 col-lg-offset-3">
					<button type="submit" class="btn btn-primary">提交</button>
					<input type="button" value="返回" class="btn btn-primary"
						onclick="javascrtpt:window.location.href='./dxyindex.html'"></input>
				</div>
			</div>
		</form>

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
					checkDate : {
						message : 'The equipmentName is not valid',
						validators : {
							notEmpty : {/*非空提示*/
								message : '考勤日期不能为空'
							},
							date : {
								format : 'YYYY-MM-DD',
								message : '不是一个正确的日期，格式：YYYY-MM-DD'
							}
						}
					},
					isAfl : {
						message : '密码无效',
						validators : {
							notEmpty : {
								message : '请填写之'
							},
													}
					},
					mipTime : {
						message : '密码无效',
						validators : {
							notEmpty : {
								message : '到岗时间不能为空'
							},
							regexp : {
								regexp :/^\d{4}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[01]) ([01][0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9].[0-9]$/,
								message : '不是一个正确的时间，格式：YYYY-MM-DD hh:mm:ss.p'
							}
							
						}
					},
					isDelay : {
						validators : {
							notEmpty : {
								message : '请填写之'
							},
						}
					},
					delayTime : {
						validators : {
							notEmpty : {
								message : '请填写之'
							},
						}
					},
					evaluation : {
						validators : {
							notEmpty : {
								message : '请填写之'
							},
						}
					}
				}
			});
		});
	</script>
</body>
</html>