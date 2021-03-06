<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>会员登录</title>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<!-- web路径：
不以/开始的相对路径，找资源，以当前资源的路径为基准，经常容易出问题。
以/开始的相对路径，找资源，以服务器的路径为标准(http://localhost:3306)；需要加上项目名
		http://localhost:3306/crud
 -->
<script type="text/javascript"
	src="${APP_PATH }/static/js/jquery-1.12.4.min.js"></script>
<link
	href="${APP_PATH }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="${APP_PATH }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<!-- 引入自定义css文件 style.css -->
<link rel="stylesheet" href="${APP_PATH }/css/style.css" type="text/css" />

<style>
body {
	margin-top: 20px;
	margin: 0 auto;
}

.carousel-inner .item img {
	width: 100%;
	height: 300px;
}

.container .row div {
	/* position:relative;
	 float:left; */
	
}

font {
	color: #3164af;
	font-size: 18px;
	font-weight: normal;
	padding: 0 10px;
}
</style>
</head>
<body>
	<!--时间：2017.6.27
			描述：菜单栏  -->
	<div class="container-fluid">
		<div class="col-md-4">
			<img src="${APP_PATH }/img/logo.png" />
		</div>
		<div class="col-md-5">
			<img src="${APP_PATH }/img/header.png" />
		</div>
		<div class="col-md-3" style="padding-top: 20px">
			<ol class="list-inline">
				<li><a href="${APP_PATH }/jsp/login.jsp">登录</a></li>
				<li><a href="${APP_PATH }/jsp/register.jsp">注册</a></li>
				<li><a href="${APP_PATH }/jsp/cart.jsp">购物车</a></li>
			</ol>
		</div>
	</div>
	<!-- 时间：2017.6.26
			   描述：导航栏 -->
	<div class="container-fluid">
		<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">首页</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="product_list.htm">欧式厨柜<span
							class="sr-only">(current)</span></a></li>
					<li><a href="#">现代厨柜</a></li>
					<li><a href="#">实木厨柜</a></li>
					<li><a href="#">全屋定制</a></li>
				</ul>
				<form class="navbar-form navbar-right" role="search">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="乐加厨柜">
					</div>
					<button type="submit" class="btn btn-default">Submit</button>
				</form>

			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid --> </nav>
	</div>

	<!-- 时间：2017.6.27
			  描述：注册表单 -->
	<div class="container" id="userAdd"
		style="width: 100%; background: url('${APP_PATH }/image/regist_bg.jpg');">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8"
				style="background: #fff; padding: 40px 80px; margin: 30px; border: 7px solid #ccc;">
				<font>会员注册</font>USER REGISTER
				<form class="form-horizontal" style="margin-top: 5px;">
					<div class="form-group">
						<label for="username_add_input" class="col-sm-2 control-label">用户名</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="username_add_input"
								name="username" placeholder="请输入用户名2-5位中文或者6-16位英文和数字的组合">
							<span class="help-block"></span>
						</div>
					</div>

					<div class="form-group">
						<label for="password_add_input" class="col-sm-2 control-label">密码</label>
						<div class="col-sm-6">
							<input type="password" class="form-control"
								id="password_add_input" name="password" placeholder="请输入密码">
						</div>
					</div>

					<div class="form-group">
						<label for="password_add_input2" class="col-sm-2 control-label">确认密码</label>
						<div class="col-sm-6">
							<input type="password" class="form-control"
								id="password_add_input2" placeholder="请输入确认密码">
						</div>
					</div>

					<div class="form-group">
						<label for="email_add_input" class="col-sm-2 control-label">Email</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="email_add_input"
								name="email" placeholder="email@qq.com">
							<span class="help-block"></span>
						</div>
					</div>

					<div class="form-group">
						<label for="name_add_input" class="col-sm-2 control-label">姓名</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="name_add_input"
								name="name" placeholder="请输入姓名">
						</div>
					</div>

					<div class="form-group opt">
						<label for="inlineRadio1" class="col-sm-2 control-label">性别</label>
						<div class="col-sm-6">
							<label class="sex_add_input"> <input type="radio"
								name="sex" id="sex_add_input" value="M"> 男
							</label> <label class="sex2_add_input"> <input type="radio"
								name="sex" id="sex2_add_input" value="F"> 女
							</label>
						</div>
					</div>

					<div class="form-group">
						<label for="telephone_add_input" class="col-sm-2 control-label">电话号码</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="telephone_add_input"
								name="telephone" placeholder="请输入姓名">
						</div>
					</div>
					  <div class="form-group">
						<label for="birthday_add_input" class="col-sm-2 control-label">出生日期</label>
						<div class="col-sm-6">
							<input type="date" class="form-control" 
								id="birthday_add_input">
						</div>
					</div>   

						<div class="form-group">
							<label for="text" class="col-sm-2 control-label">验证码</label>
							<div class="col-sm-3">
								<input type="text" class="form-control" name="code"
									id="code_add_input">
							</div>
							<div class="col-sm-2">
								<img src="${APP_PATH }/image/captcha.jhtml" />
							</div>
						</div> 

						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								  <button type="button" class="btn btn-primary" id="user_save_btn">注册</button>
							</div>
						</div>
				</form>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>

	<!-- 时间：2017.6.26
			   描述：页脚部分 -->
	<div class="container-fluid">
		<div style="margin-top: 50px;">
			<img src="${APP_PATH }/img/footer.jpg" width="100%" height="78"
				alt="我们的优势" title="我们的优势" />
		</div>

		<div style="text-align: center; margin-top: 5px;">
			<ul class="list-inline">
				<li><a href="info.html">关于我们</a></li>
				<li><a>联系我们</a></li>
				<li><a>招贤纳士</a></li>
				<li><a>法律声明</a></li>
				<li><a>友情链接</a></li>
				<li><a>支付方式</a></li>
				<li><a>配送方式</a></li>
				<li><a>服务声明</a></li>
				<li><a>广告声明</a></li>
			</ul>
		</div>
		<div style="text-align: center; margin-top: 5px; margin-bottom: 20px;">
			Copyright &copy; 2017-2027 乐加厨柜 版权所有</div>
	</div>


	<script type="text/javascript">
		//检验用户名是否可用
		$("#username_add_input").change(
				function() {
					//发ajax请求校验用户名是否可用
					var username = this.value;
					$.ajax({
						url : "${APP_PATH}/checkuser",
						data : "username=" + username,
						type : "POST",
						success : function(result) {
							if (result.code == 100) {
								show_validate_msg("#username_add_input",
										"success", "用户名可用");
								$("#emp_save_btn").attr("ajax-va", "success");
							} else {
								show_validate_msg("#username_add_input",
										"error", result.extend.va_msg);
								$("#emp_save_btn").attr("ajax-va", "error");
							}
						}
					});
				});

		//检验表单数据
		function validate_add_form() {
			//拿到表单数据，用正则表达式检验
			var username = $("#username_add_input").val();
			var regName = /(^[a-zA-Z0-9_-]{6,16}$)|(^[\u2E80-\u9FFF]{2,5})/;
			if (!regName.test(username)) {
				show_validate_msg("#username_add_input", "error", "用户名可以是2-5位中文或者6-16位英文和数字的组合");
				return false;
			} else {
				show_validate_msg("#username_add_input", "success", "");
			}
			;

			//2、校验邮箱信息
			var email = $("#email_add_input").val();
			var regEmail = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
			if (!regEmail.test(email)) {
				show_validate_msg("#email_add_input", "error", "邮箱格式不正确");
				return false;
			} else {
				show_validate_msg("#email_add_input", "success", "");
			}
			return true;
		}
		//显示校验结果的提示信息
		function show_validate_msg(ele, status, msg) {
			//清除当前元素的校验状态
			$(ele).parent().removeClass("has-success has-error");
			$(ele).next("span").text("");
			if ("success" == status) {
				$(ele).parent().addClass("has-success");
				$(ele).next("span").text(msg);
			} else if ("error" == status) {
				$(ele).parent().addClass("has-error");
				$(ele).next("span").text(msg);
			}
		}
		
		//清空表单样式及内容
		function reset_form(ele){                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
			$(ele)[0].reset();
			//清空表单样式
			$(ele).find("*").removeClass("has-error has-success");
			$(ele).find(".help-block").text("");
		}
		
		//新增模态框中填写的数据 保存数据
		$("#user_save_btn").click(function() {

			//1.对表单填写数据进行检验
			if (!validate_add_form()) {
				return false;
			}
			;
			//2、判断之前的ajax用户名校验是否成功。如果成功。
			if ($(this).attr("ajax-va") == "error") {
				return false;
			}
			//发送ajax请求保存员工
			//alert($("#userAdd form").serialize());
			$.ajax({
				url : "${APP_PATH}/user",
				type : "POST",
				data : $("#userAdd form").serialize(),
				success : function(result) {
					if (result.code == 100) {
						alert(result.msg);

					} else {
						//显示失败信息
						//console.log(result);
						if(undefined != result.extend.errorFields.email){
							//显示邮箱错误信息
							show_validate_msg("#email_add_input", "error", result.extend.errorFields.email);
						}
						if(undefined != result.extend.errorFields.empName){
							//显示员工名字的错误信息
							show_validate_msg("#empName_add_input", "error", result.extend.errorFields.empName);
						}
					}
				}
			});

		});
	</script>
</body>
</html>