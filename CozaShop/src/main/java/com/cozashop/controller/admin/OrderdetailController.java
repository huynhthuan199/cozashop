package com.cozashop.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/admin/")
public class OrderdetailController {

	@GetMapping("orderdetil")
	public String index() {
		return "admin/orderdetail";
	}
}
