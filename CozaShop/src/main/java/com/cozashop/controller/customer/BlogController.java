package com.cozashop.controller.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cozashop.service.CategoryService;
import com.cozashop.service.InfoProductService;
import com.cozashop.service.NewsService;

@Controller
public class BlogController {
	@Autowired
	private NewsService newsService;
	
	@GetMapping("/blog")
	public String about(Model model) {
		 model.addAttribute("listNews", newsService.finAll());
		return "customer/blog";
	}
	
}
