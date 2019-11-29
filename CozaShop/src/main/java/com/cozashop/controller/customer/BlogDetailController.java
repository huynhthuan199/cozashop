package com.cozashop.controller.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.cozashop.entities.News;
import com.cozashop.service.CategoryService;
import com.cozashop.service.InfoProductService;
import com.cozashop.service.NewsService;

@Controller
public class BlogDetailController {
	
	@Autowired
	private NewsService newsService;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private InfoProductService infoProductService;
	
@GetMapping(value = "/blogdetail")
public String index() {
	return "customer/blog-detail";
}

@GetMapping(value = "blog-detail")
public String getBlogDetails(@RequestParam int id,@RequestParam String categogyName,Model model) {
		
	model.addAttribute("listProduct",infoProductService.findAllByCategoryNews(categogyName));
	model.addAttribute("blogdetails", newsService.finById(id));
	model.addAttribute("listTags",newsService.finById(id).getTags().split(","));
	model.addAttribute("listCategory", categoryService.findAll());
	return "customer/blog-detail";
}
}
