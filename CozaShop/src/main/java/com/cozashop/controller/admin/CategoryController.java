package com.cozashop.controller.admin;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cozashop.entities.Category;
import com.cozashop.service.CategoryService;
import com.cozashop.util.ApiResponse;

@Controller
@RequestMapping("/admin/")
public class CategoryController {

	@Autowired
	private CategoryService categoryService;

	@GetMapping("category")
	public String index(Model model) {
		model.addAttribute("listCategory", categoryService.findAll());
		return "admin/category";
	}

//  Edit
	@GetMapping(value = "category/{id}")
	@ResponseBody
	public Category getbyid(@PathVariable("id") String id) {
		return categoryService.finById(id);
	}

//	Delete
	@GetMapping(value = "category/btnDelete")
	@ResponseBody
	public int delete(@RequestParam String id, Boolean enabled) {
		return categoryService.updateEnabled(enabled, id);
	}
	
//	Hiden
	@GetMapping(value = "category/btnHide")
	@ResponseBody
	public int hiden(@RequestParam String id) {
		return categoryService.delete(id);
	}

//  Update
	@GetMapping(value = "category/btnUpdate")
	@ResponseBody
	public ApiResponse update(@RequestParam String id, @RequestParam String name,
			@RequestParam String enabled) {
		return categoryService.update(new Category(id, name, Boolean.parseBoolean(enabled), new Date()));
	}

//  Insert
	@PostMapping(value = "category/btnInsert")
	@ResponseBody
	public ApiResponse insert(@RequestParam String id, @RequestParam String name,
			@RequestParam String enabled) {
		return categoryService.save(new Category(id, name, Boolean.parseBoolean(enabled), new Date()));
	}
}
