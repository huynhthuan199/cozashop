package com.cozashop.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cozashop.entities.Category;
import com.cozashop.service.CategoryService;

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

	// Edit with ajax
	@GetMapping(value = "category/{id}")
	@ResponseBody
	public Category getbyid(@PathVariable("id") String id) {
		return categoryService.finById(id);
	}

////		Insert with ajax
//		@GetMapping(value = "user/btnInsert")
//		@ResponseBody
//		public int insert(@RequestParam("addusername") String username,
//						  @RequestParam("addname") String name,
//						  @RequestParam("addrules") String rules,
//						  @RequestParam("addenabled") String enabled) {
//			return userService.save(new User(username,
//											 name,
//											 RandomStringUtils.randomAlphanumeric(10),
//											 Boolean.parseBoolean(rules),
//											 Boolean.parseBoolean(enabled),
//											 new Date()));
//		}
//		
////		Delete with ajax
//		@GetMapping(value = "user/btnDelete")
//		@ResponseBody
//		public String delete(@RequestParam("id") int id) {
//			return userService.delete(id);
//		}
//		
//	// Update with ajax
//		@GetMapping(value = "user/btnUpdate")
//		@ResponseBody
//		public int update(@RequestParam("username") String username,
//						  @RequestParam("password") String password, 
//						  @RequestParam("name") String name,
//						  @RequestParam("rules") String rules,
//						  @RequestParam("enabled") String enabled,
//						  @RequestParam("id") int id) {
//			return userService.update(new User(id,username,name,password,Boolean.parseBoolean(rules),Boolean.parseBoolean(enabled)));
//		}
}
