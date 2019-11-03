package com.cozashop.controller.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.cozashop.service.CategoryService;
import com.cozashop.service.ColorService;
import com.cozashop.service.InfoProductService;

@Controller
public class HomeWebController {
	@Autowired
	private InfoProductService infoProductService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private ColorService colorService;
	
	@GetMapping(value = {"","/index"})
	public String index(Model model){
			model.addAttribute("listProduct", infoProductService.findAll());
			model.addAttribute("listCategory", categoryService.listCategory());
			model.addAttribute("listColor", colorService.finAll());
		return "customer/index";
	}
}
