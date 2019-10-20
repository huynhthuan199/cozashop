package com.cozashop.controller.customer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class aboutController {

	@GetMapping("/about")
	public String about() {
		return "customer/about";
	}
}
