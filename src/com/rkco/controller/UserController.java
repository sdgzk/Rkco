package com.rkco.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rkco.pojo.User;
import com.rkco.service.IUserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Resource
	private IUserService userService;
	
	@ResponseBody
	@RequestMapping("/showUser1")
	public String showUser1(HttpServletRequest request,Model model){
		String userName = request.getParameter("username");
		String passWord = request.getParameter("password");
		User user1 = new User();
		user1.setUserName(userName);
		user1.setPassword(passWord);
		User user = this.userService.getUserById(user1);
		String result = "0";
		if (user != null) {
			model.addAttribute("user", user);
			result= "showUser";	
		} 
		
		return result;
		
	}
	
	@RequestMapping("/showUser2")
	public String showUser2(HttpServletRequest request,Model model){
		String userName = request.getParameter("username");
		String passWord = request.getParameter("password");
		User user1 = new User();
		user1.setUserName(userName);
		user1.setPassword(passWord);
		User user = this.userService.getUserById(user1);
		if (user != null) {
			model.addAttribute("user", user);
			return "showUser";	
		} else {
			System.out.print("WRONG PASSWORD OR NAME");
			return "error";
		}
	}

	
}
