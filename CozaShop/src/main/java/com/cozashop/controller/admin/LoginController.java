package com.cozashop.controller.admin;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cozashop.service.UserService;
import com.cozashop.util.ApiResponse;

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
	
	@GetMapping(value = "/admin/changepassword")
	public String changePassword() {
		return "admin/changepassword";
	}
	
	@GetMapping("/403")
	public String bonkhongba() {
		return "403";
	}
	
	
	@PostMapping("/submit")
	@ResponseBody
	public ApiResponse recoverPassword(@RequestParam String email) {
		try {
			return userService.setPassword(email);
		}catch(Exception e) {
			System.out.println(e);
		}
		return null;
	}
	@PostMapping("/changepassword")
	@ResponseBody
	public ApiResponse changePassword(@RequestParam String username, @RequestParam String password, @RequestParam String oldpassword) {
		return userService.changePassword(username,password,oldpassword);
	}
}
