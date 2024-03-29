package com.cozashop.controller.admin;

import java.io.IOException;
import java.util.Date;

import javax.mail.MessagingException;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.cozashop.entities.User;
import com.cozashop.service.EmailService;
import com.cozashop.service.UserService;
import com.cozashop.util.ApiResponse;
import com.cozashop.util.Helper;

@Controller
@RequestMapping("/admin/")
public class UserController {
	@Autowired 
	private PasswordEncoder passwordEncoder;
	
	@Autowired
	private UserService userService;

	@PreAuthorize("hasRole('ADMIN')")
	@GetMapping("user")
	public String index(ModelMap model) {
		model.addAttribute("listusers", userService.findAll());
		return "admin/user";
	}
	@PreAuthorize("hasRole('ADMIN')")
	// Edit with ajax
	@GetMapping(value = "user/{id}")
	@ResponseBody
	public User getbyid(@PathVariable("id") int id) {
		return userService.findById(id);
	}
//	@PreAuthorize("hasRole('ADMIN')")
//	Insert with ajax
//	@PostMapping(value = "user/btnInsert")
//	@ResponseBody
//	public ApiResponse insert(@RequestParam String username,@RequestParam String email, @RequestParam String name, @RequestParam String rules) {
//		return userService.save(new User(username, name,passwordEncoder.encode(RandomStringUtils.randomAlphanumeric(5)),email,
//				Boolean.parseBoolean(rules), true, new Date()));
//	}
	
//	Insert with ajax
	@PostMapping(value = "user/btnInsert")
	@ResponseBody
	public ApiResponse insert(@RequestParam String username,@RequestParam String email, @RequestParam String name, @RequestParam String rules, @RequestParam MultipartFile image) throws IOException {
		return userService.save(new User(username, name,passwordEncoder.encode(RandomStringUtils.randomAlphanumeric(5)),email,Helper.upload(image),
				Boolean.parseBoolean(rules), true, new Date()));
	}
	@PreAuthorize("hasRole('ADMIN')")
//	Delete with ajax
	@GetMapping(value = "user/btnDelete")
	@ResponseBody
	public String delete(@RequestParam("id") int id) {
		return userService.delete(id);
	}
// Update with ajax
	@PreAuthorize ("hasRole('ADMIN')")
	@GetMapping(value = "user/btnUpdate")
	@ResponseBody
	public ApiResponse update(@RequestParam("username") String username,@RequestParam("email") String email, @RequestParam("password") String password,
			@RequestParam("name") String name, @RequestParam("rules") String rules,
			@RequestParam("enabled") String enabled, @RequestParam("id") int id) {
		return userService.update(
				new User(id, username, name, password,email, Boolean.parseBoolean(rules), Boolean.parseBoolean(enabled)));
	}
}
