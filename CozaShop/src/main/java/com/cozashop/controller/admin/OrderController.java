package com.cozashop.controller.admin;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cozashop.entities.Customer;
import com.cozashop.entities.Order;
import com.cozashop.entities.OrderDetails;
import com.cozashop.service.CustomerService;
import com.cozashop.service.InfoProductService;
import com.cozashop.service.OrderDetailService;
import com.cozashop.service.OrderService;
import com.cozashop.util.ApiResponse;

@Controller
@RequestMapping("/admin/")
public class OrderController {
	
	@Autowired
	OrderService orderService;
	
	@Autowired
	CustomerService customerService;

	@Autowired
	OrderDetailService orderDetailService;
	
	@Autowired
	InfoProductService infoProductService;
	
	@PreAuthorize("hasRole('ADMIN')")
	@GetMapping("order")
	public String index(Model model) {
		model.addAttribute("listOrder",orderService.findAll());
		return "admin/order2";
	}
	
	@GetMapping("showdetail/{id}")
	public String checka(Model model,@PathVariable int id, @RequestParam int idCustomer) {
		model.addAttribute("listOrderdetail",
				orderDetailService.finByid(id));
		 model.addAttribute("customeOrderdetail",customerService.findById(idCustomer));					 
		return "admin/orderdetail";
	}
	
	@PostMapping("order/confirm")
	@ResponseBody
	public int checka(@RequestParam int id, Boolean enabled) {
		return orderService.updateStatusOrder(enabled, id);
	}
	// Update with ajax
	@PostMapping(value = "order/btnUpdate")
	@ResponseBody
	public ApiResponse update(
			  		  @RequestParam("address") String address,
			  		  @RequestParam("phone") String phone,
			  		  @RequestParam("name") String name,
			  		  @RequestParam("email") String email,
			  		  @RequestParam("id") int id) {
		return customerService.updateCustomerOrder(new Customer(name,address,email,phone,id));
	}
	
}