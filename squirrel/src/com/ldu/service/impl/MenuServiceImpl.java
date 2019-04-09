package com.ldu.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ldu.dao.MenuMapper;
import com.ldu.service.MenuService;

@Service("menuService")
public class MenuServiceImpl implements MenuService {
	
	@Autowired
	private MenuMapper menuMapper;
	
	public List<Map<String, String>> selectAllMenu() {

		return menuMapper.selectAllMenu();
	}

}
