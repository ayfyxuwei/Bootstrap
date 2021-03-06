<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>乐加厨柜</title>
<!-- 引入jquery  -->
<script type="text/javascript" src="static/js/jquery-1.12.4.min.js"></script>
<!-- 引入样式  -->
<link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script
	src="static/bootstrapValidator/js/bootstrapValidator.min.js"></script>
<link
	href="static/bootstrapValidator/css/bootstrapValidator.min.css"
	rel="stylesheet" />
</head>
<body>
	<div class="container-fluid">
		<!--时间：2017.6.26
			描述：菜单栏  -->
		<div class="container-fluid">
			<div class="col-md-4">
				<img src="img/logo.png" />
			</div>
			<div class="col-md-5">
				<img src="img/header.png" />
			</div>
			<div class="col-md-3" style="padding-top: 20px">

				<button class="btn btn-link" id="user_login_modal_btn">
					<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
					登录
				</button>
				<button class="btn btn-link" id="user_add_modal_btn">
					<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
					注册
				</button>
				<button class="btn btn-link" id="user_look_modal_btn">
					<span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
					购物车
				</button>

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
						<button type="submit" class="btn btn-success">Submit</button>
					</form>

				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid --> </nav>
		</div>

		<!-- 时间：2017.6.26
			  描述：轮播条 -->
		<div class="container-fluid">
			<div id="carousel-example-generic" class="carousel slide"
				data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0"
						class="active"></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"></li>
					<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="img/1.jpg">
						<div class="carousel-caption"></div>
					</div>
					<div class="item">
						<img src="img/2.jpg">
						<div class="carousel-caption"></div>
					</div>
					<div class="item">
						<img src="img/3.jpg">
						<div class="carousel-caption"></div>
					</div>
				</div>

				<!-- Controls -->
				<a class="left carousel-control" href="#carousel-example-generic"
					role="button" data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#carousel-example-generic"
					role="button" data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
		<!-- 时间：2017.6.26
				   描述：商品显示 -->
		<div class="container-fluid">
			<div class="col-md-12">
				<h2>
					热门厨柜&nbsp;&nbsp;<img src="img/title2.jpg" />
				</h2>
			</div>
			<div class="col-md-2"
				style="border: 1px solid #E7E7E7; border-right: 0; padding: 0;">
				<img src="products/hao/big01.jpg" width="205" height="404"
					style="display: inline-block;" />
			</div>
			<div class="col-md-10">
				<div class="col-md-6"
					style="text-align: center; height: 200px; padding: 0px;">
					<a href="product_info.htm"> <img
						src="products/hao/middle01.jpg" width="516px" height="200px"
						style="display: inline-block;">
					</a>
				</div>

				<div class="col-md-2"
					style="text-align: center; height: 200px; padding: 10px 0px;">
					<a href="product_info.htm"> <img src="products/hao/small03.jpg"
						width="130" height="130" style="display: inline-block;">
					</a>
					<p>
						<a href="product_info.html" style='color: #666'>冬瓜</a>
					</p>
					<p>
						<font color="#E4393C" style="font-size: 16px">&yen;299.00</font>
					</p>
				</div>

				<div class="col-md-2"
					style="text-align: center; height: 200px; padding: 10px 0px;">
					<a href="product_info.htm"> <img src="products/hao/small04.jpg"
						width="130" height="130" style="display: inline-block;">
					</a>
					<p>
						<a href="product_info.html" style='color: #666'>冬瓜</a>
					</p>
					<p>
						<font color="#E4393C" style="font-size: 16px">&yen;299.00</font>
					</p>
				</div>

				<div class="col-md-2 yes-right-border"
					style="text-align: center; height: 200px; padding: 10px 0px;">
					<a href="product_info.htm"> <img src="products/hao/small05.jpg"
						width="130" height="130" style="display: inline-block;">
					</a>
					<p>
						<a href="product_info.html" style='color: #666'>冬瓜</a>
					</p>
					<p>
						<font color="#E4393C" style="font-size: 16px">&yen;299.00</font>
					</p>
				</div>

				<div class="col-md-2"
					style="text-align: center; height: 200px; padding: 10px 0px;">
					<a href="product_info.htm"> <img src="products/hao/small03.jpg"
						width="130" height="130" style="display: inline-block;">
					</a>
					<p>
						<a href="product_info.html" style='color: #666'>冬瓜</a>
					</p>
					<p>
						<font color="#E4393C" style="font-size: 16px">&yen;299.00</font>
					</p>
				</div>

				<div class="col-md-2"
					style="text-align: center; height: 200px; padding: 10px 0px;">
					<a href="product_info.htm"> <img src="products/hao/small04.jpg"
						width="130" height="130" style="display: inline-block;">
					</a>
					<p>
						<a href="product_info.html" style='color: #666'>冬瓜</a>
					</p>
					<p>
						<font color="#E4393C" style="font-size: 16px">&yen;299.00</font>
					</p>
				</div>

				<div class="col-md-2 yes-right-border"
					style="text-align: center; height: 200px; padding: 10px 0px;">
					<a href="product_info.htm"> <img src="products/hao/small05.jpg"
						width="130" height="130" style="display: inline-block;">
					</a>
					<p>
						<a href="product_info.html" style='color: #666'>冬瓜</a>
					</p>
					<p>
						<font color="#E4393C" style="font-size: 16px">&yen;299.00</font>
					</p>
				</div>
				<div class="col-md-2"
					style="text-align: center; height: 200px; padding: 10px 0px;">
					<a href="product_info.htm"> <img src="products/hao/small03.jpg"
						width="130" height="130" style="display: inline-block;">
					</a>
					<p>
						<a href="product_info.html" style='color: #666'>冬瓜</a>
					</p>
					<p>
						<font color="#E4393C" style="font-size: 16px">&yen;299.00</font>
					</p>
				</div>

				<div class="col-md-2"
					style="text-align: center; height: 200px; padding: 10px 0px;">
					<a href="product_info.htm"> <img src="products/hao/small04.jpg"
						width="130" height="130" style="display: inline-block;">
					</a>
					<p>
						<a href="product_info.html" style='color: #666'>冬瓜</a>
					</p>
					<p>
						<font color="#E4393C" style="font-size: 16px">&yen;299.00</font>
					</p>
				</div>

				<div class="col-md-2"
					style="text-align: center; height: 200px; padding: 10px 0px;">
					<a href="product_info.htm"> <img src="products/hao/small05.jpg"
						width="130" height="130" style="display: inline-block;">
					</a>
					<p>
						<a href="product_info.html" style='color: #666'>冬瓜</a>
					</p>
					<p>
						<font color="#E4393C" style="font-size: 16px">&yen;299.00</font>
					</p>
				</div>
			</div>
		</div>

		<!-- 时间：2017.6.26
				   描述：广告部分 -->
		<div class="container-fluid">
			<img src="products/hao/ad.jpg" width="100%" />
		</div>

		<!-- 时间：2017.6.26
			              描述：商品显示 -->
		<div class="container-fluid">
			<div class="col-md-12">
				<h2>
					热门商品&nbsp;&nbsp;<img src="img/title2.jpg" />
				</h2>
			</div>
			<div class="col-md-2"
				style="border: 1px solid #E7E7E7; border-right: 0; padding: 0;">
				<img src="products/hao/big01.jpg" width="205" height="404"
					style="display: inline-block;" />
			</div>
			<div class="col-md-10">
				<div class="col-md-6"
					style="text-align: center; height: 200px; padding: 0px;">
					<a href="product_info.htm"> <img
						src="products/hao/middle01.jpg" width="516px" height="200px"
						style="display: inline-block;">
					</a>
				</div>

				<div class="col-md-2"
					style="text-align: center; height: 200px; padding: 10px 0px;">
					<a href="product_info.htm"> <img src="products/hao/small03.jpg"
						width="130" height="130" style="display: inline-block;">
					</a>
					<p>
						<a href="product_info.html" style='color: #666'>冬瓜</a>
					</p>
					<p>
						<font color="#E4393C" style="font-size: 16px">&yen;299.00</font>
					</p>
				</div>

				<div class="col-md-2"
					style="text-align: center; height: 200px; padding: 10px 0px;">
					<a href="product_info.htm"> <img src="products/hao/small04.jpg"
						width="130" height="130" style="display: inline-block;">
					</a>
					<p>
						<a href="product_info.html" style='color: #666'>冬瓜</a>
					</p>
					<p>
						<font color="#E4393C" style="font-size: 16px">&yen;299.00</font>
					</p>
				</div>

				<div class="col-md-2 yes-right-border"
					style="text-align: center; height: 200px; padding: 10px 0px;">
					<a href="product_info.htm"> <img src="products/hao/small05.jpg"
						width="130" height="130" style="display: inline-block;">
					</a>
					<p>
						<a href="product_info.html" style='color: #666'>冬瓜</a>
					</p>
					<p>
						<font color="#E4393C" style="font-size: 16px">&yen;299.00</font>
					</p>
				</div>

				<div class="col-md-2"
					style="text-align: center; height: 200px; padding: 10px 0px;">
					<a href="product_info.htm"> <img src="products/hao/small03.jpg"
						width="130" height="130" style="display: inline-block;">
					</a>
					<p>
						<a href="product_info.html" style='color: #666'>冬瓜</a>
					</p>
					<p>
						<font color="#E4393C" style="font-size: 16px">&yen;299.00</font>
					</p>
				</div>

				<div class="col-md-2"
					style="text-align: center; height: 200px; padding: 10px 0px;">
					<a href="product_info.htm"> <img src="products/hao/small04.jpg"
						width="130" height="130" style="display: inline-block;">
					</a>
					<p>
						<a href="product_info.html" style='color: #666'>冬瓜</a>
					</p>
					<p>
						<font color="#E4393C" style="font-size: 16px">&yen;299.00</font>
					</p>
				</div>

				<div class="col-md-2 yes-right-border"
					style="text-align: center; height: 200px; padding: 10px 0px;">
					<a href="product_info.htm"> <img src="products/hao/small05.jpg"
						width="130" height="130" style="display: inline-block;">
					</a>
					<p>
						<a href="product_info.html" style='color: #666'>冬瓜</a>
					</p>
					<p>
						<font color="#E4393C" style="font-size: 16px">&yen;299.00</font>
					</p>
				</div>
				<div class="col-md-2"
					style="text-align: center; height: 200px; padding: 10px 0px;">
					<a href="product_info.htm"> <img src="products/hao/small03.jpg"
						width="130" height="130" style="display: inline-block;">
					</a>
					<p>
						<a href="product_info.html" style='color: #666'>冬瓜</a>
					</p>
					<p>
						<font color="#E4393C" style="font-size: 16px">&yen;299.00</font>
					</p>
				</div>

				<div class="col-md-2"
					style="text-align: center; height: 200px; padding: 10px 0px;">
					<a href="product_info.htm"> <img src="products/hao/small04.jpg"
						width="130" height="130" style="display: inline-block;">
					</a>
					<p>
						<a href="product_info.html" style='color: #666'>冬瓜</a>
					</p>
					<p>
						<font color="#E4393C" style="font-size: 16px">&yen;299.00</font>
					</p>
				</div>

				<div class="col-md-2 yes-right-border"
					style="text-align: center; height: 200px; padding: 10px 0px;">
					<a href="product_info.htm"> <img src="products/hao/small05.jpg"
						width="130" height="130" style="display: inline-block;">
					</a>
					<p>
						<a href="product_info.html" style='color: #666'>冬瓜</a>
					</p>
					<p>
						<font color="#E4393C" style="font-size: 16px">&yen;299.00</font>
					</p>
				</div>
			</div>
		</div>
		<!-- 时间：2017.6.26
			   描述：页脚部分 -->
		<div class="container-fluid">
			<div style="margin-top: 50px;">
				<img src="img/footer.jpg" width="100%" height="78" alt="我们的优势"
					title="我们的优势" />
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
			<div
				style="text-align: center; margin-top: 5px; margin-bottom: 20px;">
				Copyright &copy; 2017-2027 乐加厨柜 版权所有</div>
		</div>
	</div>

	<!-- 会员注册模态窗 -->
	<div class="modal fade" id="userAddModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">欢迎会员注册</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">
						<div class="form-group">
							<label class="col-sm-2 control-label">用户名</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="username"
									id="username_add_input" placeholder="您的账户名和登录名"> <span
									class="help-block" id="username_hint"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">设置密码</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" name="password"
									id="password_add_input" placeholder="建议至少使用2种字符组合"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">确认密码</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" name="password"
									id="password_add_input" placeholder="建议至少使用2种字符组合"> <span
									class="help-block"></span>
							</div>
						</div>


					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="emp_save_btn">保存</button>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$("#user_save_btn").click(function() {
			//1.对表单填写数据进行检验
			$('form').bootstrapValidator({
				message : 'This value is not valid',
				feedbackIcons : {
					valid : 'glyphicon glyphicon-ok',
					invalid : 'glyphicon glyphicon-remove',
					validating : 'glyphicon glyphicon-refresh'
				},
				fields : {
					username : {
						message : '用户名验证失败',
						validators : {
							notEmpty : {
								message : '用户名不能为空'
							}
						}
					},
					email : {
						validators : {
							notEmpty : {
								message : '邮箱地址不能为空'
							}
						}
					}
				}
			});
		});
		//点击新增按钮弹出模态窗
		$("#user_add_modal_btn").click(function() {
			//弹出模态窗
			$("#userAddModal").modal({
				backdrop : "static"
			});
		});
	</script>
</body>
</html>