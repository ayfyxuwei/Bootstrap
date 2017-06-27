/**   
* @Title: UserService.java 
* @Package com.cn.service.impl 
* @Description: TODO(用一句话描述该文件做什么) 
* @author （作者）徐伟  
* @date 2017年6月27日 下午1:12:51 
* @version V1.0   
*/
package com.cn.service;

import com.cn.pojo.User;

/** 
* @ClassName: UserService 
* @Description: TODO(这里用一句话描述这个类的作用) 
* @author (作者) 徐伟 
* @date 2017年6月27日 下午1:12:51 
* @version V1.0 
*/
public interface UserService {
	//检查用户名是否重复
	boolean checkUser(String username);
	//注册用户信息
	void saveUser(User user);
}
