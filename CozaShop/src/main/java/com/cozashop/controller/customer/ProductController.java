package com.cozashop.controller.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cozashop.entities.Product;
import com.cozashop.service.CategoryService;
import com.cozashop.service.ColorService;
import com.cozashop.service.InfoProductService;

import javassist.NotFoundException;

@Controller
public class ProductController {

	@Autowired
	private InfoProductService infoProductService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private ColorService colorService;

	@GetMapping(value = "/product")
	public String product(Model model) {
		model.addAttribute("listProduct", infoProductService.crollProduct(8, 0, null, null));
		model.addAttribute("listCategory", categoryService.listCategory());
		model.addAttribute("listColor", colorService.finAll());
		return "customer/product";
	}

//  Edit
	@GetMapping(value = "/product/{id}")
	@ResponseBody
	public Product getById(@PathVariable("id") String id) throws NotFoundException {
		return infoProductService.finById(id);
	}

	@GetMapping(value = "/product1")
	public String produc1t(Model model) {
		model.addAttribute("listProduct", infoProductService.findAll());
		return "customer/listproduct";
	}

	@GetMapping(value = "/product4")
	public String produc2st(Model model, @RequestParam String order, @RequestParam boolean color,
			@RequestParam String field) {
		if (!order.equals("") && color) {
			model.addAttribute("listProduct", infoProductService.findAllByColor(order, field));
			return "customer/singleproduct";
		}
		return "customer/singleproduct";
	}

	@GetMapping(value = "/product5")
	public String produc3st(Model model, @RequestParam double start, @RequestParam double end,
			@RequestParam String field) {
		model.addAttribute("listProduct", infoProductService.findBySalaryRange(start, end, field));
		return "customer/singleproduct";
	}

	@GetMapping(value = "/product3")
	public String produc1st(Model model, @RequestParam int page, @RequestParam String order,
			@RequestParam boolean color, @RequestParam String field) {
		if (!order.equals("") && !color) {
			model.addAttribute("listProduct", infoProductService.crollProduct(4, page, order, field));
			return "customer/singleproduct";
		}
		return "customer/singleproduct";
	}
}
