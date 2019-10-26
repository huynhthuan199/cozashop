package com.cozashop.controller.admin;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cozashop.entities.User;
import com.cozashop.service.UserService;

@Controller
@RequestMapping("/")
public class LoginController {
	
	@Autowired
	private UserService userService;
	@GetMapping(value = "login")
	public String login(HttpSession seesion) {
		seesion.invalidate();
		return "admin/login";
	}
	
	@PostMapping("btnLogin")
	public String checklogin(@RequestParam String username,@RequestParam String password,HttpSession session) {
		User user =  userService.Login(username, password);
		if(user != null) {
			session.setAttribute("auth",user);
			return "admin/home";
		}else {
			System.out.println("fail");
			return "admin/login";
		}
		
	}
	
	@GetMapping(value = "recover")
	public String recover() {
		return "admin/recover";
	}
	
}
