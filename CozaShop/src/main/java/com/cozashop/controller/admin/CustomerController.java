package com.cozashop.controller.admin;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cozashop.entities.Customer;
import com.cozashop.entities.District;
import com.cozashop.entities.Province;
import com.cozashop.entities.Ward;
import com.cozashop.service.CustomerService;
import com.cozashop.service.DistrictService;
import com.cozashop.service.ProviceService;
import com.cozashop.service.WardService;
import com.cozashop.util.ApiResponse;

@Controller
@RequestMapping("/admin/")
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;

	@Autowired
	private ProviceService proviceService;
	
	@Autowired
	private DistrictService districtService;
	
	@Autowired
	private WardService wardService;
	
	@PreAuthorize("hasRole('ADMIN')")
	@GetMapping("customer")
	public String index(Model model) {
		model.addAttribute("listCustomer",customerService.findAll());
		model.addAttribute("listProvince",proviceService.findAll());
		model.addAttribute("listDictricts",districtService.finById("79"));
		model.addAttribute("listWard",wardService.finById("760"));
		return "admin/customer";
	}
	
	
	// đúng rồi ông đọc code luôn khó hơn viết mà
// Edit with ajax
	@GetMapping(value = "customer/{id}")
	@ResponseBody
	public Customer getbyid(@PathVariable("id") int id,ModelMap model) {
		return customerService.findById(id); 
	}
	
//	Insert with ajax
	@PostMapping(value = "customer/btnInsert")
	@ResponseBody
	public ApiResponse insert(@RequestParam String username,
					  @RequestParam String address,
					  @RequestParam String province,
					  @RequestParam String district,
					  @RequestParam String ward,
					  @RequestParam String phone,
					  @RequestParam String name,
					  @RequestParam String email,
					  @RequestParam String gender) {
		
		StringBuffer BfAddress = new StringBuffer();
		BfAddress.append(address +", ");
		BfAddress.append(province +", ");
		BfAddress.append(district +", ");
		BfAddress.append(ward);
		return customerService.save(new Customer(username,
												 name, BfAddress.toString(), RandomStringUtils.randomAlphanumeric(10),
												 Boolean.parseBoolean(gender),
												 email,
												 phone,true,
												 new Date()));
	}
//	ss
	// Update with ajax
		@GetMapping(value = "customer/btnUpdate")
		@ResponseBody
		public ApiResponse update(@RequestParam("username") String username,
				  		  @RequestParam("address") String address,
				  		  @RequestParam("phone") String phone,
				  		  @RequestParam("name") String name,
				  		  @RequestParam("password") String password,
				  		  @RequestParam("email") String email,
				  		  @RequestParam("gender") String gender,
				  		  @RequestParam("enabled") String enabled,
				  		  @RequestParam("id") int id) {
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
		
//		Delete with ajax
		@GetMapping(value = "customer/btnDelete")
		@ResponseBody
		public String delete(@RequestParam("id") int id) {
			return customerService.delete(id);
		}

}
