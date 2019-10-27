package com.cozashop.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cozashop.service.UserService;

@Controller
@RequestMapping
public class LoginController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping(value = "/admin/login")
	public String login() {
		return "admin/login";
	}

	@GetMapping(value = "/admin/recover")
	public String recover() {
		return "admin/recover";
	}
	
	@GetMapping("/403")
	public String bonkhongba() {
		return "403";
	}
	
}
