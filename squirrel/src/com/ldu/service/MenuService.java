package com.ldu.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;


public interface MenuService {
	
	//获取菜单
	 List<Map<String,String>> selectAllMenu();
	
	
}
