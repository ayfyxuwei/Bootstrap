/**   
* @Title: UserServiceImpl.java 
* @Package com.cn.service.impl 
* @Description: TODO(用一句话描述该文件做什么) 
* @author （作者）徐伟  
* @date 2017年6月27日 下午1:12:29 
* @version V1.0   
*/
package com.cn.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.dao.UserMapper;
import com.cn.pojo.User;
import com.cn.pojo.UserExample;
import com.cn.pojo.UserExample.Criteria;
import com.cn.service.UserService;

/** 
* @ClassName: UserServiceImpl 
* @Description: 用户接口的实现 
* @author (作者) 徐伟 
* @date 2017年6月27日 下午1:12:29 
* @version V1.0 
*/
@Service("UserService")
public class UserServiceImpl implements UserService {
	
	@Resource
	private UserMapper userMapper;
	/* (非 Javadoc) 
	* <p>Title: checkUser</p> 
	* <p>Description: 检查用户名是否重复（能用）</p> 
	* @param username
	* @return 
	* @see com.cn.service.UserService#checkUser(java.lang.String) 
	*/
	@Override
	public boolean checkUser(String username) {
		UserExample example = new UserExample();
		Criteria criteria = example.createCriteria();
		criteria.andUsernameEqualTo(username);
		long count = userMapper.countByExample(example); 
		return count == 0;
	}
	/* (非 Javadoc) 
	* <p>Title: saveUser</p> 
	* <p>Description: 注册用户信息</p> 
	* @param user 
	* @see com.cn.service.UserService#saveUser(com.cn.pojo.User) 
	*/
	@Override
	public void saveUser(User user) {
		
		userMapper.insertSelective(user);
	}

}
