package com.cozashop.controller.customer;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.RandomStringUtils;
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
import com.cozashop.service.DistrictService;
import com.cozashop.service.InfoProductService;
import com.cozashop.service.ProviceService;
import com.cozashop.service.WardService;
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
	@Autowired
	private ProviceService proviceService;
	@Autowired
	private DistrictService districtService;
	@Autowired
	private WardService wardService;
	
	@GetMapping(value = {"","/index"})
	public String index(Model model){
			model.addAttribute("listProduct", infoProductService.findAll());
			model.addAttribute("listCategory", categoryService.listCategory());
			model.addAttribute("listColor", colorService.finAll());
		return "customer/index";
	}
	
	@GetMapping(value = {"/login"})
	public String logina(Model model){
		model.addAttribute("listProvince",proviceService.findAll());
		model.addAttribute("listDictricts",districtService.finById("79"));
		model.addAttribute("listWard",wardService.finById("760"));
		return "customer/login";
	}
	
	@PostMapping(value = "/check")
	@ResponseBody
	public ApiResponse login(HttpSession session,@RequestParam String username,@RequestParam String password) {
		ApiResponse api = customerService.existsByUsernameAndPassword(username, password);
		if(api.getData() != null) {
			session.setAttribute("customer",api.getData());
			return api;
		}
		return api;
	}
	
	@PostMapping("/submit2")
	@ResponseBody
	public ApiResponse recoverPassword2(@RequestParam String email) {
		try {
			return customerService.setPassword(email);
		}catch(Exception e) {
			System.out.println(e);
		}
		return null;
	}
	
//	Insert with ajax
	@PostMapping(value = "/regist")
	@ResponseBody
	public ApiResponse insert(@RequestParam String username,
					  @RequestParam String address,
					  @RequestParam String province,
					  @RequestParam String district,
					  @RequestParam String ward,
					  @RequestParam String phone,
					  @RequestParam String password,
					  @RequestParam String name,
					  @RequestParam String email,
					  @RequestParam String gender) {
		StringBuffer BfAddress = new StringBuffer();
		BfAddress.append(address +", ");
		BfAddress.append(province +", ");
		BfAddress.append(district +", ");
		BfAddress.append(ward);
		ApiResponse api = customerService.save(new Customer(username,
				 name, BfAddress.toString(),password,
				 Boolean.parseBoolean(gender),
				 email,
				 phone,true,
				 new Date()));
		if(api.getMessage() == "Thêm khách hàng thành công") {
			return new ApiResponse(Status.success,"Đăng Ký Thành Công");
		}
		return api;
	}
	
	@GetMapping(value = "/logout2")
	public String logout(HttpSession session) {
		session.setAttribute("customer",null);
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
