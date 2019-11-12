package com.cozashop.controller.admin;

import java.text.DecimalFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cozashop.service.CustomerService;
import com.cozashop.service.OrderService;

@Controller
@RequestMapping("/admin/")
public class HomeController {

	@Autowired
	private OrderService orderService;
	
	@Autowired
	private CustomerService customerService;
	
	@GetMapping({"","home"})
	public String index(Model model) {
		model.addAttribute("totalOrderTrue",orderService.totalOrder(true));
		model.addAttribute("totalOrderFalse",orderService.totalOrder(false));
		model.addAttribute("totalCustomer",customerService.totalCustomer());
		model.addAttribute("totalorderEnabled",orderService.orderEnabled(true));
		return "admin/home";
	}
	
	@GetMapping("/abc")
	@ResponseBody
	public List<String> testabcxyz(){
		return orderService.FindMonthTotal();
	}
}
