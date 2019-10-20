package com.cozashop.controller.admin;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cozashop.entities.Category;
import com.cozashop.entities.Customer;
import com.cozashop.entities.Product;
import com.cozashop.service.CategoryService;
import com.cozashop.service.InfoProductService;
import com.cozashop.util.ApiResponse;

@Controller
@RequestMapping("/admin/")
public class InfoproductController {

	@Autowired
	private InfoProductService infoProductService;
	
	@Autowired
	private CategoryService categoryService;


	@GetMapping("infoproduct")
	public String index(Model model) {
		model.addAttribute("listProduct", infoProductService.findAll());
		model.addAttribute("listCategory", categoryService.listCategory());
		return "admin/infoproduct";
	}

	
//  Edit
	@GetMapping(value = "infoproduct/{id}")
	@ResponseBody
	public Product getById(@PathVariable("id") String id) {
		return infoProductService.finById(id);
	}
	
//	Submit Insert
	@PostMapping(value = "infoproduct/btnInsert")
	public String insert(@RequestParam("addId") String id,
					  @RequestParam("addName") String name,
					  @RequestParam("addPrice") String price,
					  @RequestParam("addCategoryId") Category categoryId,
					  @RequestParam("addMaterial") String material,
					  @RequestParam("file") MultipartFile file,
					  @RequestParam("addColor") String color,
					  @RequestParam("addDescription") String description) throws IOException {
		
		infoProductService.Update(new Product(id,name,Double.parseDouble(price)
				,Double.parseDouble(price),material,color,
				infoProductService.upload(file),description
				,categoryId,true,new Date()));
		return "redirect:/admin/infoproduct";
	}
	
//	Delete with ajax
	@GetMapping(value = "infoproduct/btnDelete")
	@ResponseBody
	public String delete(@RequestParam("id") String id) {
		return infoProductService.delete(id);
	}
	
//	Submit Update
	@PostMapping(value = "infoproduct/btnUpdate")
	public String update(@RequestParam("id") String id,
					  @RequestParam("name") String name,
					  @RequestParam("price") String price,
					  @RequestParam("categoryId") Category categoryId,
					  @RequestParam("material") String material,
					  @RequestParam("file2") MultipartFile file,
					  @RequestParam("color") String color,
					  @RequestParam("description") String description) throws IOException {
		
		infoProductService.Update(new Product(id,name,Double.parseDouble(price)
				,Double.parseDouble(price),material,color,
				infoProductService.upload(file),description
				,categoryId,true,new Date()));
		return "redirect:/admin/infoproduct";
	}
}
