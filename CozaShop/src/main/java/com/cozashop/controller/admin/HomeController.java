package com.cozashop.controller.admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cozashop.entities.tkmonth;
import com.cozashop.service.CategoryService;
import com.cozashop.service.CustomerService;
import com.cozashop.service.InfoProductService;
import com.cozashop.service.OrderDetailService;
import com.cozashop.service.OrderService;
import com.google.gson.Gson;

@Controller
@RequestMapping("/admin/")
public class HomeController {

	@Autowired
	private OrderService orderService;
	
	@Autowired
	private Gson gson;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private InfoProductService infoProductService;
	
	@Autowired
	private OrderDetailService orderDetailService;
	
	@PreAuthorize("isAuthenticated()")
	@GetMapping({"","home"})
	public String index(Model model) {
		model.addAttribute("listCustomerNew", customerService.listCustomerNew());
		model.addAttribute("NewCustomerToday", customerService.NewCustomerToday());
		model.addAttribute("totalProduct",infoProductService.countProduct());
		model.addAttribute("totalOrderTrue",orderService.totalOrder(true));
		model.addAttribute("totalOrderFalse",orderService.totalOrder(false));
		model.addAttribute("totalCustomer",customerService.totalCustomer());
		model.addAttribute("totalorder",orderService.count());
		model.addAttribute("totalorderEnabled",orderService.orderEnabled(true));
		model.addAttribute("totalorderDisnabled",orderService.orderEnabled(false));
		model.addAttribute("newOrderToday",orderService.newOrderToday());
		return "admin/home";
	}
	
	@GetMapping("/abczzz")
	@ResponseBody
	public String testabcxyz(){
		String[] a;
		String f;
		/* List<tkmonth> listnew = new ArrayList<tkmonth>(); */
		List<String> list = orderService.FindMonthTotal();
		StringBuffer month = new StringBuffer();
		StringBuffer totalMoney = new StringBuffer();
		month.append("[");
		totalMoney.append("[");
		for(int i = 0 ; i<list.size();i++) {
			a =  list.get(i).split(",");
			String value1 = a[0];
			String value2= a[1];
			month.append(value1+" ,");
			totalMoney.append(value2+",");
			/* tkmonth atc = new tkmonth(value1,value2); */
			/* listnew.add(atc); */
		}
		month.append("]");
		totalMoney.append("]");
		f = month.substring(0,month.lastIndexOf(","));
		return f;
	}
	
	@GetMapping("/abc")
	@ResponseBody
	public String testaxxx(){
		List<tkmonth> listnew = new ArrayList<tkmonth>();
		List<String> list = orderService.FindMonthTotal();
		for(int i = 0; i<list.size(); i++) {
			String[] bufder = list.get(i).split(",");
			listnew.add(new tkmonth(bufder[0],bufder[1]));
		}
		String json = gson.toJson(listnew);
		return json;
	}
	
	@GetMapping("/tester")
	@ResponseBody
	public String getStatisticalCategory(){
		List<Object> list = orderDetailService.statisticalCategory();
		String json = new Gson().toJson(list.stream().toArray());
		return json;
	}
	
	@GetMapping("/getProductTotal")
	@ResponseBody
	public String getStatisticalProduct(Model model){
		List<Object> list = orderDetailService.statisticalProduct();
		String json = new Gson().toJson(list.stream().toArray());
		model.addAttribute("listProduct",json);
		return json;
	}
}
