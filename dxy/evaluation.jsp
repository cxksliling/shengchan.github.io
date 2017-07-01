<%@ page language="java" contentType="text/html"  import="java.util.*"  pageEncoding="UTF-8"%>
<%@ page import="dxy.model.TEvaluation"%>
<%@ page import="dxy.model.*"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>绩效总评</title>

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
<% 
List lo = (List)request.getAttribute("lo");
TEvaluation ev = (TEvaluation)request.getAttribute("ev");
double evaluation = (double)ev.getAtEvaluation()*(((TEvaluationLogic)lo.get(0)).getId().getAttendanceWeight())+(double)ev.getQuantity()*(((TEvaluationLogic)lo.get(0)).getId().getQuantityWeight())+100*ev.getPassRate()*(((TEvaluationLogic)lo.get(0)).getId().getPassRateWeight())-(double)ev.getViolation()*(((TEvaluationLogic)lo.get(0)).getId().getViolationWeight());
%>
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
	<div align="center" class="jumbotron">
		<h2 class="form-signin-heading" align="center">个人绩效总评</h2>
	</div>
	<div class="container">
		<div align="center">
			<h3 class="margin-base-vertical">${actionMessages[0]}</h3>
		</div>
		<!-- class都是bootstrap定义好的样式，验证是根据input中的name值 -->
		<form id="eqinfoform" method="post" class="form-horizontal"	action="saveevaluation.action">
			<!-- 下面这个div必须要有，插件根据这个进行添加提示 -->
			<div class="form-group">
				<label class="col-lg-3 control-label">工号</label>
				<div class="col-lg-5">
					<input type="text" class="form-control" name="id"
						value="${ev.id}"
						placeholder="Readonly input here…" readonly />
				</div>
			</div>

			<div class="form-group">
				<label class="col-lg-3 control-label">考核年度</label>
				<div class="col-lg-5">
					<input type="text" class="form-control" name="checkYear"
						value="${ev.checkYear}" />
				</div>
			</div>

			<div class="form-group">
				<label class="col-lg-3 control-label">请假次数</label>
				<div class="col-lg-5">
					<input type="text" class="form-control" name="afls"
						value="${ev.afls}" />
				</div>
			</div>

			<div class="form-group">
				<label class="col-lg-3 control-label">迟到次数</label>
				<div class="col-lg-5">
					<input type="text" class="form-control" name="delays"
						value="${ev.delays}" />
				</div>
			</div>

			<div class="form-group">
				<label class="col-lg-3 control-label">考勤评估</label>
				<div class="col-lg-5">
					<input type="text" class="form-control" name="atEvaluation"
						value="${ev.atEvaluation}" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-lg-3 control-label">总工时</label>
				<div class="col-lg-5">
					<input type="text" class="form-control" name="quantity"
						value="${ev.quantity}" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-lg-3 control-label">总合格率</label>
				<div class="col-lg-5">
					<input type="text" class="form-control" name="passRate"
						value="${ev.passRate}" />
				</div>
			</div>
						<div class="form-group">
				<label class="col-lg-3 control-label">违纪记录</label>
				<div class="col-lg-5">
					<input type="text" class="form-control" name="violation"
						value="${ev.violation}" />
				</div>
			</div>
						<div class="form-group">
				<label class="col-lg-3 control-label">绩效总分</label>
				<div class="col-lg-5">
					<input type="text" class="form-control" name="evaluation"
					   	value="<%=evaluation%>" 
                					readonly/>
						</div>
			</div>

				<div align="center">
								<div class="form-group">
								<div  align="center">
					<button type="submit" class="btn btn-primary">修改</button>
					<input type="button" value="返回" class="btn btn-primary"
						onclick="javascrtpt:window.location.href='./dxyindex.html'"></input>
				</div>
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
					checkYear : {
						message : 'The equipmentName is not valid',
						validators : {
							notEmpty : {/*非空提示*/
								message : '考核年度不能为空'
							},
							stringLength : {/*长度提示*/
								min : 4,
								max : 4,
								message : '请输入正确的年度信息'
							}
						}
					},
					afls : {
						message : '密码无效',
						validators : {
							notEmpty : {
								message : '请假次数不能为空'
							},
						}
					},
					delays : {
						validators : {
							notEmpty : {
								message : '迟到次数不能为空'
							},
						}
					},
					atEvaluation : {
						validators : {
							notEmpty : {
								message : '考勤评估不能为空'
							},
						}
					},
					quantity : {
						validators : {
							notEmpty : {
								message : '总工时不能为空'
							},
							 regexp: {
                            regexp: /^[0-9]*$/,
                            message: '请输入正确工时数'
                        },
						}
					},
					passRate : {
						validators : {
							notEmpty : {
								message : '总合格率不能为空'
							},
													}
					},
					violation : {
						validators : {
							notEmpty : {
								message : '违纪记录不能为空'
							},
						}
					},
					evaluation : {
						validators : {
							notEmpty : {
								message : '绩效总分不能为空'
							},
						}
					}
				}
			});
		});
	</script>
</body>
</html>