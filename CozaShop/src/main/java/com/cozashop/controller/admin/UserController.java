package com.cozashop.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cozashop.service.UserService;

@Controller
@RequestMapping("/admin/")
public class UserController {

	@Autowired
	private UserService userService;
	
	@GetMapping("user")
	public String index(ModelMap model) {
		model.addAttribute("txtSearch", "");
		System.out.println();
		model.addAttribute("listusers", userService.findAll());
		return "admin/user";
	}
}
