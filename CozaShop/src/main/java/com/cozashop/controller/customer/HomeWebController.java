package com.cozashop.controller.customer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeWebController {

	@GetMapping(value = "/index")
	public String index(){
		return "customer/index";
	}
}
