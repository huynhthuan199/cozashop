package com.cozashop.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cozashop.entities.Order;
import com.cozashop.entities.OrderDetails;
import com.cozashop.service.InfoProductService;
import com.cozashop.service.OrderDetailService;
import com.cozashop.service.OrderService;

@Controller
@RequestMapping("/admin/")
public class OrderController {
	
	@Autowired
	OrderService orderService;

	@Autowired
	OrderDetailService orderDetailService;
	
	@Autowired
	InfoProductService infoProductService;

	@GetMapping("order")
	public String index(Model model) {
		model.addAttribute("listOrder",orderService.findAll());
		return "admin/order2";
	}
	
	@GetMapping("showdetail/{id}")
	public String checka(Model model,@PathVariable int id) {
		model.addAttribute("listOrderdetail",orderDetailService.finByid(id));
		return "admin/orderdetail";
	}

	
}