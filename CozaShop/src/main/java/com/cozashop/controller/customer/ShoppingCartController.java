package com.cozashop.controller.customer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ShoppingCartController {
@GetMapping(value = "/shopingcart")
public String index() {
	return "customer/shoping-cart";
}
}
