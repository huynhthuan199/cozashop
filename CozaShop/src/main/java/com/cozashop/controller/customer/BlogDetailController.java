package com.cozashop.controller.customer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BlogDetailController {
@GetMapping(value = "/blogdetail")
public String index() {
	return "customer/blog-detail";
}
}
