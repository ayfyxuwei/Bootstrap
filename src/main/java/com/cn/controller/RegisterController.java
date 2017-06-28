/**   
* @Title: Register.java 
* @Package com.cn.controller 
* @Description: TODO(用一句话描述该文件做什么) 
* @author （作者）徐伟  
* @date 2017年6月27日 上午11:00:03 
* @version V1.0   
*/
package com.cn.controller;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cn.pojo.Msg;
import com.cn.pojo.User;
import com.cn.service.UserService;

/** 
* @ClassName: Register 
* @Description: 注册 
* @author (作者) 徐伟 
* @date 2017年6月27日 上午11:00:03 
* @version V1.0 
*/
@Controller
public class RegisterController {
	
	@Resource
	private UserService userService;
	
	/*
	 *保存注册信息 
	 */
	@ResponseBody
	@RequestMapping(value="/user",method=RequestMethod.POST)
	public Msg saveUser(@Valid User user, BindingResult result){
		if (result.hasErrors()) {
			//校验失败，应该返回失败，在模态框中显示校验失败的错误信息
			Map<String, Object> map = new HashMap<>();
			List<FieldError> errors = result.getFieldErrors();
			for (FieldError fieldError : errors) {
				System.out.println("错误的字段名："+fieldError.getField());
				System.out.println("错误信息："+fieldError.getDefaultMessage());
				map.put(fieldError.getField(), fieldError.getDefaultMessage());
			}
			return Msg.fail().add("errorFields", map);
		} else {
			userService.saveUser(user);
			return Msg.success();
		}
	}
	
	
	/*
	 * 检查用户名是否可用
	 */
	@ResponseBody
	@RequestMapping("/checkuser")
	public Msg checkUser(@RequestParam("username") String username){
		//先判断用户名是否是合法的表达式;
		String regx = "(^[a-zA-Z0-9_-]{6,16}$)|(^[\u2E80-\u9FFF]{2,5})";
		if (!username.matches(regx)){
			return Msg.fail().add("va_msg", "用户名必须是6-16位数字和字母的组合或者2-5位中文");
		}
		//数据库用户名重复校验	
		Boolean b = userService.checkUser(username);
		if(b){
			return Msg.success();
		}else{
			return Msg.fail().add("va_msg", "用户名不可用");
		}
	}
}
