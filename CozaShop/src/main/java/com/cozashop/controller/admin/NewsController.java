package com.cozashop.controller.admin;

import java.io.IOException;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.cozashop.entities.Category;
import com.cozashop.entities.News;
import com.cozashop.entities.User;
import com.cozashop.service.CategoryService;
import com.cozashop.service.NewsService;
import com.cozashop.util.ApiResponse;
import com.cozashop.util.Helper;

@Controller
@RequestMapping(value = "/admin/")
public class NewsController {
	@Autowired
	private NewsService newsService;

	@Autowired
	private CategoryService categoryService;

	@PreAuthorize("hasRole('ADMIN')")
	@GetMapping("news")
	public String newsJsp(Model model) {
		model.addAttribute("listNews", newsService.finAll());
		model.addAttribute("listCategory", categoryService.listCategory());
		return "admin/news";
	}

//  Edit
	@GetMapping(value = "news/{id}")
	@ResponseBody
	public News getbyid(@PathVariable("id") int id, Model model) {
		return newsService.finById(id);
	}
	
//	Delete
	@GetMapping(value = "news/btnDelete")
	@ResponseBody
	public int delete(@RequestParam int id, Boolean enabled) {
		return newsService.updateEnabled(enabled, id);
	}
	
//	Hiden
	@GetMapping(value = "news/btnHide")
	@ResponseBody
	public int hiden(@RequestParam int id) {
		return newsService.delete(id);
	}

//  Update
	@PostMapping(value = "news/btnUpdate")
	@ResponseBody
	public ApiResponse update(@RequestParam int id, @RequestParam String tags, @RequestParam boolean rdoEnabled,
			@RequestParam String title, @RequestParam String content, @RequestParam String description,
			@RequestParam MultipartFile image) throws IOException {
		return newsService.update(new News(id, title, content, description, new Date(), rdoEnabled, Helper.upload(image), tags));
	}

//  Update

	@PostMapping(value = "news/btnInsert")

	@ResponseBody
	public ApiResponse save(@RequestParam String tags,
			@RequestParam String title, @RequestParam String content, @RequestParam String description,
			@RequestParam MultipartFile image,@RequestParam User idUser,@RequestParam Category category) throws IOException {
		return newsService.save(new News(title, content, description, new Date(), true, Helper.upload(image), tags,category,idUser));
	}

}
