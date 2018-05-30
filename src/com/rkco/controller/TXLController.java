package com.rkco.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.rkco.pojo.TXLUser;
import com.rkco.service.TXLUserService;

@Controller
@RequestMapping("/user")
public class TXLController {
	@Resource
	private TXLUserService txluserService;
	
	@ResponseBody
	@RequestMapping("/showUserList")
	public List<TXLUser> selecAll(HttpServletRequest request,Model model){
		List<TXLUser> lista = this.txluserService.getAlluser();
		//model.addAttribute("lista", lista);
		return lista;
	}
	
	@ResponseBody
	@RequestMapping("/selectID")
	public List<TXLUser> selecID(HttpServletRequest request,HttpServletResponse response,Model model) throws Exception{
		{
			int userId = Integer.valueOf(request.getParameter("userId"));
			List<TXLUser> lista = this.txluserService.selectID(userId);
			//model.addAttribute("lista", lista);
			Map<String, Object> map=new HashMap<String, Object>();
			if(lista.size()>0){
				map.put("success", true);
				map.put("msg", "select USR OK");
			}else{
				map.put("success", false);
				map.put("errorMsg", "select USR FALI！");
			}
			String str=JSONObject.toJSONString(map);
			response.getWriter().write(str);
			
			return lista;
    	}
	}
	
	@ResponseBody
	@RequestMapping("/addUser")
	public void addUser(HttpServletRequest request,HttpServletResponse response,TXLUser user) throws Exception{{
		//List<TXLUser> lista = this.txluserService.getAlluser();
		//model.addAttribute("lista", lista);
		String name = request.getParameter("name");
		String telephone = request.getParameter("telephone");
		int res = 0;
		res  = this.txluserService.inserTXLuser(user);
		Map<String, Object> map=new HashMap<String, Object>();
		if(res>0){
			map.put("success", true);
			map.put("msg", "ADD USR OK");
		}else{
			map.put("success", false);
			map.put("errorMsg", "ADD USR FALI！");
		}
		String str=JSONObject.toJSONString(map);
		response.getWriter().write(str);

	}
	}
	@ResponseBody
	@RequestMapping("/updateUser")
	public void edditUser(HttpServletRequest request,HttpServletResponse response,TXLUser user) throws Exception{{
		int res = 0;
		res  = this.txluserService.inserTXLuser(user);
		Map<String, Object> map=new HashMap<String, Object>();
		if(res>0){
			map.put("success", true);
			map.put("msg", "Update USR OK");
		}else{
			map.put("success", false);
			map.put("errorMsg", "Update USR FALI！");
		}
		String str=JSONObject.toJSONString(map);
		response.getWriter().write(str);

	}
	}
	
	@ResponseBody
	@RequestMapping("/removeUser")
	public void deleteUser(HttpServletRequest request,HttpServletResponse response,TXLUser user) throws Exception{{
		int res = 0;
		res  = this.txluserService.deleteTXLuser(user);
		Map<String, Object> map=new HashMap<String, Object>();
		if(res>0){
			map.put("success", true);
			map.put("msg", "Delete USR OK");
		}else{
			map.put("success", false);
			map.put("errorMsg", "Delete USR FALI！");
		}
		String str=JSONObject.toJSONString(map);
		response.getWriter().write(str);

	}
	}
}
