package com.cozashop.controller.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cozashop.entities.Product;
import com.cozashop.service.CategoryService;
import com.cozashop.service.InfoProductService;

@Controller
public class ProductController {
	
	@Autowired
	private InfoProductService infoProductService;
	@Autowired
	private CategoryService categoryService;


	@GetMapping(value = "/product")
	public String product(Model model) {
		model.addAttribute("listProduct", infoProductService.findAll());
		model.addAttribute("listCategory", categoryService.listCategory());
		return "customer/product";
	}
	
//  Edit
	@GetMapping(value = "/product/{id}")
	@ResponseBody
	public Product getById(@PathVariable("id") String id) {
		return infoProductService.finById(id);
	}
}
