package com.ldu.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ldu.service.MenuService;

//将菜单信息放到缓存中
@Controller
@RequestMapping("/menu")
public class MenuController {
	
	@Autowired
	private MenuService menuService;
	                   
	
	@RequestMapping("/getMenu")
	@ResponseBody
	public String getAllMenu(HttpServletRequest request){
		
		request.getSession().setAttribute("menuList", menuService.selectAllMenu());
		
		return "SUCCESS";
	}
}
