package com.cozashop.controller.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cozashop.entities.Product;
import com.cozashop.service.ColorService;
import com.cozashop.service.InfoProductService;

import javassist.NotFoundException;

@Controller
public class ProductDetailContrioller {
	@Autowired
	private ColorService colorService;
	@Autowired
	private InfoProductService infoProductService;
	
	@GetMapping(value = "/productdetail/{id}")
	public String productDetails(Model model,@PathVariable String id) throws NotFoundException {
		Product product = infoProductService.finById(id);
		String categogyId = product.getCategory().getId();
		System.out.println("A" + categogyId);
		model.addAttribute("listColor", colorService.finAll());
		model.addAttribute("modelProduct", product);
		model.addAttribute("listProductRD", infoProductService.findProducRD(categogyId));
		return "customer/product-detail";
	}
}
