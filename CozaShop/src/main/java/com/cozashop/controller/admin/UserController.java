package com.cozashop.controller.admin;

import java.util.Date;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cozashop.entities.ApiResponse;
import com.cozashop.entities.User;
import com.cozashop.service.UserService;

@Controller
@RequestMapping("/admin/")
public class UserController {

	@Autowired
	private UserService userService;

	@GetMapping("user")
	public String index(ModelMap model) {
		model.addAttribute("listusers", userService.findAll());
		return "admin/user";
	}

	// Edit with ajax
	@GetMapping(value = "user/{id}")
	@ResponseBody
	public User getbyid(@PathVariable("id") int id) {
		return userService.findById(id);
	}

//	Insert with ajax
	@PostMapping(value = "user/btnInsert")
	@ResponseBody
	public ApiResponse insert(@RequestParam String username, @RequestParam String name, @RequestParam String rules, @RequestParam String enabled) {
		return userService.save(new User(username, name, RandomStringUtils.randomAlphanumeric(10),
				Boolean.parseBoolean(rules), Boolean.parseBoolean(enabled), new Date()));
	}

//	Delete with ajax
	@GetMapping(value = "user/btnDelete")
	@ResponseBody
	public String delete(@RequestParam("id") int id) {
		return userService.delete(id);
	}

// Update with ajax
	@GetMapping(value = "user/btnUpdate")
	@ResponseBody
	public int update(@RequestParam("username") String username, @RequestParam("password") String password,
			@RequestParam("name") String name, @RequestParam("rules") String rules,
			@RequestParam("enabled") String enabled, @RequestParam("id") int id) {
		return userService.update(
				new User(id, username, name, password, Boolean.parseBoolean(rules), Boolean.parseBoolean(enabled)));
	}
}
