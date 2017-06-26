/**   
* @Title: PageController.java 
* @Package com.cn.controller 
* @Description: TODO(用一句话描述该文件做什么) 
* @author （作者）徐伟  
* @date 2017年6月26日 下午4:52:07 
* @version V1.0   
*/
package com.cn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/** 
* @ClassName: PageController 
* @Description: TODO(这里用一句话描述这个类的作用) 
* @author (作者) 徐伟 
* @date 2017年6月26日 下午4:52:07 
* @version V1.0 
*/
@Controller
public class IndexController {
	/** 
     * 页面跳转 
     * @return 
     */ 
	
    @RequestMapping("/login")  
    public String showLogin() {  
        return "login";  
    }
    
    @RequestMapping("/register")  
    public String showRegister() {  
        return "register";  
    }
    
    @RequestMapping("/cart")  
    public String showCart() {  
        return "cart";  
    }  
}
