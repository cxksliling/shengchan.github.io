<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="gsq.model.TMateriaRequstInfo"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>物料申请信息</title>

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
		<div align="left">
			<h2 class="form-signin-heading">申请表信息:</h2>
			<hr>
			<br>
		</div>
		<div class="container">
			<div align="center">
				<h3 class="margin-base-vertical">${actionMessages[0]}</h3>
			</div>
			<!-- class都是bootstrap定义好的样式，验证是根据input中的name值 -->
			<form id="eqinfoform" method="post" class="form-horizontal"
				action="./shenqing_Save.action">
				<!-- 下面这个div必须要有，插件根据这个进行添加提示 -->
				<div class="form-group">
					<label class="col-lg-3 control-label">物料编号</label>
					<div class="col-lg-5">
						<input type="text" class="form-control" name="wlkBh"
						value="${material.wlkBh}"
							 />
					</div>
				</div>

				<div class="form-group">
					<label class="col-lg-3 control-label">物料类别</label>
					<div class="col-lg-5">
						<input type="text" class="form-control" name="wlkWllb"
						value="${material.wlkWllb}"
							/>
					</div>
				</div>

				<div class="form-group">
					<label class="col-lg-3 control-label">物料数量</label>
					<div class="col-lg-5">
						<input type="text" class="form-control" name="wlkWlsl"
						value="${material.wlkWlsl}"
							 />
					</div>
				</div>

				<div class="form-group">
					<label class="col-lg-3 control-label">申请日期</label>
					<div class="col-lg-5">
						<input type="text" class="form-control" name="wlkSqrq"
						value="${material.wlkSqrq}"
							/>
					</div>
				</div>

			

				<div class="form-group">
					<div class="col-lg-9 col-lg-offset-3">
						<button type="submit" class="btn btn-primary">提交</button>
						<input type="button" value="返回" class="btn btn-primary"
							onclick="javascrtpt:window.location.href='./yzyindex.html'"></input>
					</div>
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
					wlkBh : {
						message : 'The wlkBh is not valid',
						validators : {
							notEmpty : {/*非空提示*/
								message : '物料编号不能为空'
							},
							stringLength : {/*长度提示*/
								min : 1,
								max : 40,
								message : '设备名长度必须在1到40之间'
							}
						}
					},
					wlkSqrq : {
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
					wlkWllb : {
					
						validators : {
							notEmpty : {
								message : '物料类别不能为空'
							},
						}
					},
					wlkWlsl : {
						
						validators : {
							notEmpty : {
								message : '物料数量不能为空'
							},
						}
					},
				
				}
			});
		});
	</script>
</body>
</html>