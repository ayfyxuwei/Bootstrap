<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<style type="text/css">
        @font-face {font-family: "iconfont";
          src: url('fonts/iconfont.eot'); /* IE9*/
          src: url('fonts/iconfont.eot#iefix') format('embedded-opentype'), /* IE6-IE8 */
          url('fonts/iconfont.woff') format('woff'), /* chrome, firefox */
          url('fonts/iconfont.ttf') format('truetype'), /* chrome, firefox, opera, Safari, Android, iOS 4.2+*/
          url('fonts/iconfont.svg#iconfont') format('svg'); /* iOS 4.1- */
        }

        .iconfont {	
        display: inline-block;
          font-family:"iconfont" !important;
          font-size:15px;
          font-style:normal;
          -webkit-font-smoothing: antialiased;
          -webkit-text-stroke-width: 0.2px;
          -moz-osx-font-smoothing: grayscale;
          vertical-align: middle;
          color: #00FF00;
        }
			*{margin: 0px;padding: 0px;font-size: 13px;}
			em{font-style: normal;}
			.box{width: 400px;height: 1000px;margin: 0px auto;}
			html{background: white;}
			form{padding: 10px;}
			#register>div{width: 390px;height: 80px;}
			#register>div>div{width: 360px;border-radius: 2px;overflow: hidden; padding-top: 10px;padding-bottom: 10px; border: 1px solid #E6E6E6;box-sizing: border-box; position: relative;}
			#register span{width: 75px;height: 28px;margin-right: 20px; line-height: 28px; vertical-align: middle; display: inline-block;text-align: right;}
			#register>div input{width: 230px;height: 28px; outline: none; border: none; vertical-align: middle;}
			.err_icon{color: #FF0000;}
			.hint_icon{color: #CCCCCC;}
			.ver_code>button{height: 50px;top: -1px; right: -1px;border: none; padding-left: 20px;padding-right: 20px;outline: none;cursor: pointer; border: none; position: absolute;color: white; background: rgba(0,0,0,0.5);}
			.ver_code input{width: 155px !important; margin-left: 47px;}
			p input{width: 20px;height: 20px;box-sizing: border-box; vertical-align: middle;}
			p span{width: auto !important; vertical-align: middle;}
			p span strong{font-weight: 100;cursor: pointer; color: blue;}
			.submit{width: 320px;height: 45px !important;margin-top: 20px; position: relative;}
			.submit button{width: 100% !important;height: 100% !important;cursor: pointer; border: none; border-radius: 3px; color: white; background: orangered;}
			.hook{height: 28px; margin-left: 5px;display: inline-block; position: absolute;}
			.hook i{height: 28px;line-height: 28px;}
			#register>div>div{margin-bottom: 2px;}
			.hint i{line-height: 14px; vertical-align: middle;}
			.hint em,.err em{font-size: 12px;vertical-align: middle; color: #999999;}
			.ver_code,#ver_code_input,.c_password,#confirm{background: #F5F5F5;}
		</style>
	</head>
	<body>
		<div class="box">
		<form id="register">
			<div id="user_name_box">
			<div id="user_name_box_child">
				<span>用户名：</span>
				<input id="user_name" name="user_name" type="text" maxlength="20" placeholder="您的账户名和登录名"/>
				<div class="hook" id="hook_box">
				</div>
			</div>
			<p class="hint" id="user_name_hint"></p>
			</div>
			<div>
			<div>
				<span>密码：</span>
				<input id="password" name="pass_word" type="password" maxlength="20" placeholder="建议至少使用两种字符组合"/>
				<div class="hook" id="p_hook_box"></div>
			</div>
			<p class="hint" id="password_hint"></p>
			</div>
			<div>
			<div class="c_password">
				<span>确认密码：</span>
				<input id="confirm" type="password" maxlength="20" placeholder="请再次输入密码（锁定状态）" disabled="disabled"/>
				<div class="hook" id="c_hook_box"></div>
			</div>
			<p class="hint" id="c_password_hint"></p>
			</div>
			<div>
			<div>
				<span>手机号码：</span>
				<input id="phone" name="phone" maxlength="11" type="text" placeholder="请输入常用的手机号码"/>
				<div class="hook" id="ph_hook_box"></div>
			</div>
			<p class="hint" id="phone_hint"></p>
			</div>
			<div>
			<div class="ver_code">
				<input id="ver_code_input" disabled="disabled" type="text" maxlength="6" placeholder="输入验证码（锁定状态）"/>
				<div class="hook" id="ver_hook_box"></div>
				<button id="get_ver_code" type="button">获取验证码</button>
			</div>
			<p class="hint" id="ver_hint"></p>
			</div>
			<p>
				<input id="agree" type="checkbox" />
				<span>阅读并同意<strong>《平台名称用户注册协议》</strong></span>
			</p>
			<div class="submit">
				<button type="button" id="submit_button">注册</button>
			</div>
		</form>
		</div>
    <script type="text/javascript" src="static/js/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="js/test3.js" ></script>
	</body>
</html>
