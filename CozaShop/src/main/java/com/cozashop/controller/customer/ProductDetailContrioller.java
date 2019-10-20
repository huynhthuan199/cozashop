package com.cozashop.controller.customer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProductDetailContrioller {

	@GetMapping(value = "/productdetail")
	public String productDetails() {
		return "customer/product-detail";
	}
	
}
