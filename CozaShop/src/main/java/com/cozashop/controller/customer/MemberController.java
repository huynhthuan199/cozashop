package com.cozashop.controller.customer;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cozashop.entities.Contact;
import com.cozashop.service.ContactService;
import com.cozashop.util.ApiResponse;
@Controller
public class MemberController {
	
	@Autowired
	private ContactService contactService;
	
	@GetMapping("/contact")
	public String member() {
		return "customer/contact";
	}
	
	@PostMapping("/contact/Insert")
	@ResponseBody	
	public ApiResponse save(@RequestParam String gmail,@RequestParam String content) {
		return contactService.save(new Contact(gmail, content, new Date(), false));
	}
}
