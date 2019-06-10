package com.test.comtroller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BootController {

    @RequestMapping("/index")
    public String index(HttpServletRequest request) {
    	request.getSession().removeAttribute("error");
    	System.out.println("index");
        return "index";
    }
    
    @RequestMapping("/") 
    public String welcome(HttpServletRequest request,HttpServletResponse response){
    	System.out.println("welcome");
        return "index";
    }
    
    @RequestMapping("/login")
    public String login(HttpServletRequest request,HttpServletResponse response){
    	String username = request.getParameter("username");
    	String password = request.getParameter("password");
    	if(username.equals("123")&&password.equals("qwer")){
    		request.getSession().removeAttribute("error");
    		
    		Cookie[] cookies = request.getCookies();
    		String name=null;
    		String value=null;
    		for (Cookie cookie : cookies) {
    			if(cookie.getName().equals("rukujspCookie")){
    				name=cookie.getName();
    			}
    			if(cookie.getValue().equals("rukujspCookie")){
    				value=cookie.getValue();
    			}
			}
    		System.out.println("name="+name);
    		System.out.println("value="+value);
    		return "test";
    	}else{
    		request.getSession().setAttribute("error", "错误");
    		return "redirect:/";
    	}
    }
}
