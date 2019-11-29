package com.cozashop.controller.customer;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cozashop.entities.Customer;
import com.cozashop.service.CategoryService;
import com.cozashop.service.ColorService;
import com.cozashop.service.CustomerService;
import com.cozashop.service.InfoProductService;
import com.cozashop.util.ApiResponse;
import com.cozashop.util.ApiResponse.Status;

@Controller
public class HomeWebController {
	@Autowired
	private InfoProductService infoProductService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private ColorService colorService;
	@Autowired
	private CustomerService customerService;
	
	@GetMapping(value = {"","/index"})
	public String index(Model model){
			model.addAttribute("listProduct", infoProductService.findAll());
			model.addAttribute("listCategory", categoryService.listCategory());
			model.addAttribute("listColor", colorService.finAll());
		return "customer/index";
	}
	
	@GetMapping(value = {"/regist"})
	public String regist(){
		return "customer/regist";
	}
	
	@PostMapping(value = "/login")
	public String login(HttpSession session,@RequestParam("txtloginUsername") String username,@RequestParam("txtloginPassword") String password) {
		Customer customer = customerService.existsByUsernameAndPassword(username, password);
		if(customer != null) {
			session.setAttribute("customer",customer);
			return "customer/index";
		}
		return "Fail";
	}
	
	@GetMapping(value = "/logout2")
	public String logout(HttpSession session) {
		session.invalidate();
		return "customer/index";
	}
	
	// Edit with ajax
		@GetMapping(value = "customer/{id}")
		@ResponseBody
		public Customer getbyid(@PathVariable("id") int id,ModelMap model) {
			return customerService.findById(id); 
		}
		
		// Update with ajax
				@PostMapping(value = "customer/btnUpdate")
				@ResponseBody
				public ApiResponse update(@RequestParam("username") String username,
						  		  @RequestParam("address") String address,
						  		  @RequestParam("phone") String phone,
						  		  @RequestParam("name") String name,
						  		  @RequestParam("password") String password,
						  		  @RequestParam("email") String email,
						  		  @RequestParam("gender") String gender,
						  		  @RequestParam("enabled") String enabled,
						  		  @RequestParam("id") int id,HttpSession session) {
					;
					Customer customer = (Customer) session.getAttribute("customer");
					System.out.println(customer.getId());
					if(customer.getId() != id || customer == null) { 
						return new  ApiResponse(Status.warning,"Vui Lòng Đăng nhập"); 
					}
					return customerService.update(new Customer(username,
															   name,
															   address,
															   password,
															   Boolean.parseBoolean(gender),
															   email,
															   phone,
															   Boolean.parseBoolean(enabled),
															   new Date(),id));
					
				}
}
