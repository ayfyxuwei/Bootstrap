function findStr(str, n){
  var tmp = 0;
  for (var i = 0; i < str.length; i++){
    if(str.charAt(i)==n){
      tmp++;
    }
  }
  return tmp;
}
function initHint(main,kook,hint){
	if(main.val().length==0){
	kook.html('');
	hint.html('');
	}
}
function rB(main){
	if(main.children('i').length == 1){
		return true;
	}else{
		return false;
	}
}
function setConfirm(main,str,box){
main.attr('placeholder',str).css('background','#F5F5F5').attr('disabled','disabled');
box.css('background','#F5F5F5');
}
$(document).ready(function(){
	//用户名验证
$('#user_name').focus(function(){
	$('#user_name_hint').html('<i class="icon iconfont hint_icon"></i> <em>支持中文、字母、数字、“-”“_”的组合，4-20个字符</em>');
}).blur(function(){
	if(this.value.length==0){
		initHint($('#user_name'),$('#hook_box'),$('#user_name_hint'));
		return;
	}
	if(/[^\w\u4e00-\u9fa5]/g.test(this.value)){
		$('#user_name_hint').html('<i class="icon iconfont err_icon"></i> <em>含有非法字符</em>');
		$('#hook_box').html('');
		return;
	}
	if(!(this.value.length>=4)){
		$('#user_name_hint').html('<i class="icon iconfont err_icon"></i> <em>长度只能在4-20个字符之间</em>');
		$('#hook_box').html('');
		return;
	}
	$('#hook_box').html('<i class="icon iconfont hook"></i>');
	$('#user_name_hint').html('');
});
$('#user_name').keyup(function(){
	initHint($('#user_name'),$('#hook_box'),$('#user_name_hint'));
});
//用户密码验证
$('#password').focus(function(){
$('#password_hint').html('<i class="icon iconfont hint_icon"></i> <em>建议使用字母、数字和符号两种及以上的组合，6-20个字符</em>');
}).blur(function(){
	if(this.value.length == 0){
		initHint($('#password'),$('#p_hook_box'),$('#password_hint'));
		setConfirm($('#confirm'),'请再次输入密码（锁定状态）',$('.c_password'));
		return;
	}
	var m = findStr(this.value, this.value.substring(0,1));
	if(this.value.length == m){
		$('#password_hint').html('<i class="icon iconfont err_icon"></i> <em>密码过于简单</em>');
		setConfirm($('#confirm'),'请再次输入密码（锁定状态）',$('.c_password'));
		$('#p_hook_box').html('');
		return;
	}
	if(this.value.length==0){
		$('#password_hint').html('');
		$('#p_hook_box').html('');
		setConfirm($('#confirm'),'请再次输入密码（锁定状态）',$('.c_password'));
		return;
	}
	if(this.value.length < 6 || this.value.length > 16){
      $('#password_hint').html('<i class="icon iconfont err_icon"></i> <em>长度只能在6-20个字符之间</em>');
   		setConfirm($('#confirm'),'请再次输入密码（锁定状态）',$('.c_password'));
		$('#p_hook_box').html('');
   		return;
	}
	if(!/[^\d]/g.test(this.value)){
      $('#password_hint').html('<i class="icon iconfont err_icon"></i> <em>密码不能全为数字</em>');
    	setConfirm($('#confirm'),'请再次输入密码（锁定状态）',$('.c_password'));
		$('#p_hook_box').html('');
    	return;
	}
	if(!/[^a-zA-Z]/g.test(this.value)){
       $('#password_hint').html('<i class="icon iconfont err_icon"></i> <em>密码不能全为字母</em>');
    	setConfirm($('#confirm'),'请再次输入密码（锁定状态）',$('.c_password'));
		$('#p_hook_box').html('');
    	return;
	}
	$('#confirm').removeAttr('disabled');
	$('#confirm').css('background','transparent');
	$('.c_password').css('background','transparent');
	$('#confirm').attr('placeholder','请再次输入密码');
	$('#p_hook_box').html('<i class="icon iconfont hook"></i>');
	$('#password_hint').html('');
});
$('#password').keyup(function(){
	$('#c_password_hint').html('');
	$('#c_hook_box').html('');
	$('#confirm').val('');
	setConfirm($('#confirm'),'请再次输入密码（锁定状态）',$('.c_password'));
	initHint($('#password'),$('#p_hook_box'),$('#password_hint'));
});
//确认密码
	$('#confirm').focus(function(){
		$('#c_password_hint').html('<i class="icon iconfont hint_icon"></i> <em>请再次输入密码</em>');
	}).blur(function(){
		if(this.value.length == 0){
			$('#c_password_hint').html('');
			$('#c_hook_box').html('');
			return;
		}
		if(!(this.value == $('#password').val())){
			$('#c_password_hint').html('<i class="icon iconfont err_icon"></i> <em>密码输入不一致</em>');
			$('#c_hook_box').html('');
		}else{
			$('#c_password_hint').html('');
			$('#c_hook_box').html('<i class="icon iconfont hook"></i>');
		}
	});
	$('#confirm').keyup(function(){
		$('#c_password_hint').html('');
		initHint($('#confirm'),$('#c_hook_box'),$('#c_password_hint'));
		if(this.value == $('#password').val()){
		$('#c_hook_box').html('<i class="icon iconfont hook"></i>');
		}
	});
	//手机号码
	$('#phone').focus(function(){
		$('#phone_hint').html('<i class="icon iconfont hint_icon"></i> <em>完成验证后，你可以用该手机登录和找回密码</em>');
	}).blur(function(){
		if(this.value.length == 0){
			initHint($('#phone'),$('#ph_hook_box'),$('#phone_hint'));
			return;
		}
		var booleanValue = true,value,subValue;
		value = this.value;
				if(value==''){
				booleanValue = true;
				}
				if(value.length>3){
					subValue = value.substring(-1,3);
					if(booleanValue&&subValue.length==3){
					if(subValue.substring(1,2)=='3'||subValue.substring(1,2)=='5'||subValue.substring(1,2)=='8'){	
					booleanValue = /^[1]{1}(([3]|[5]|[8]){1})([0-9]{1})$/.test(subValue);
					}else if(subValue.substring(1,2)=='4'){	
					booleanValue = /^[1]{1}[4]{1}(([5]|[7]){1})$/.test(subValue);	
					}else if(subValue.substring(1,2)=='7'){		
					booleanValue = /^[1]{1}[7]{1}(([0]|[1]|[3]|[5]|[6]|[7]|[8]){1})$/.test(subValue);		
					}else{
						booleanValue = false;
					}
				}
				}else{
				if(value.length==1){	
				booleanValue = /^[1]{1}$/.test(value);	
				}else if(value.length==2){
				booleanValue = /^[1]{1}(([3]|[4]|[5]|[7]|[8]){1})$/.test(value);	
				}else if(booleanValue&&value.length==3){
					if(value.substring(1,2)=='3'||value.substring(1,2)=='5'||value.substring(1,2)=='8'){	
					booleanValue = /^[1]{1}(([3]|[5]|[8]){1})([0-9]{1})$/.test(value);
					}else if(value.substring(1,2)=='4'){	
					booleanValue = /^[1]{1}[4]{1}(([5]|[7]){1})$/.test(value);	
					}else if(value.substring(1,2)=='7'){		
					booleanValue = /^[1]{1}[7]{1}(([0]|[1]|[3]|[5]|[6]|[7]|[8]){1})$/.test(value);		
					}else{
						booleanValue = false;
					}
				}	
				}
				if(!booleanValue||!/^\d*$/.test(value)||value.length<11){
					//显示错误标志
					$('#ph_hook_box').html('');
					$('#phone_hint').html('<i class="icon iconfont err_icon"></i> <em>格式错误</em>');
					setConfirm($('#ver_code_input'),'输入验证码（锁定状态）',$('.c_password'));
				}else{
					//隐藏错误标志
					$('#p_hook_box').html('');
					$('#phone_hint').html('');
				}
				if(/^\d{11}$/.test(value)&&booleanValue){
					//显示正确标志
					$('#phone_hint').html('');
					$('#ph_hook_box').html('<i class="icon iconfont hook"></i>');
					$('#ver_code_input').removeAttr('disabled').css('background','transparent').attr('placeholder','输入验证码');
					$('.ver_code').css('background','transparent');
				}
	});
	$('#phone').keyup(function(){
	initHint($('#phone'),$('#ph_hook_box'),$('#phone_hint'));	
	setConfirm($('#ver_code_input'),'输入验证码（锁定状态）',$('.ver_code'));
	$('#ver_code_input').val('');
	$('#ver_hint').html('');
	$('#ver_hook_box').html('');
	});
	//手机验证码
	$('#ver_code_input').focus(function(){
		$('#ver_hint').html('<i class="icon iconfont hint_icon"></i> <em>输入六位数的手机验证码</em>');
	}).blur(function(){
		if(this.value.length == 0){
			$('#ver_hint').html('');
			$('#ver_hook_box').html('');
			return;
		}
		if(/[^\d]/g.test(this.value)||this.value.length<6){
			$('#ver_hint').html('<i class="icon iconfont err_icon"></i> <em>请输入六位数的手机验证码</em>');
			return;
		}
		//此处需要加入验证码验证
		$('#ver_hint').html('');
		$('#ver_hook_box').html('<i class="icon iconfont hook"></i>');
	});
	$('#ver_code_input').keyup(function(){
		initHint($('#ver_code_input'),$('#ver_hook_box'),$('#ver_hint'));	
	});
	//注册按钮
	$('#submit_button').click(function(){
		if(rB($('#hook_box'))&&rB($('#p_hook_box'))&&rB($('#c_hook_box'))&&rB($('#ph_hook_box'))&&rB($('#ver_hook_box'))&&$('#agree').is(':checked')){
			alert($('#register').serialize());
//		$.ajax({type:'post',url:'',data:$('#register').serialize(),success:function(data){
//			//注册成功跳转的页面
//			window.location.href = data['url'];
//		}});
		}
	});
});