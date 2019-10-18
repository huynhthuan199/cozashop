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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cozashop.entities.ApiResponse;
import com.cozashop.entities.Category;
import com.cozashop.entities.Customer;
import com.cozashop.entities.Product;
import com.cozashop.service.CategoryService;
import com.cozashop.service.InfoProductService;

@Controller
@RequestMapping("/admin/")
public class InfoproductController {

	@Autowired
	private ResourceLoader resourceLoader;

	@Autowired
	private InfoProductService infoProductService;
	
	@Autowired
	private CategoryService categoryService;


	private static String UPLOADED_FOLDER = "/static/web/images/";

	@GetMapping("infoproduct")
	public String index(Model model) {
		model.addAttribute("listProduct", infoProductService.findAll());
		model.addAttribute("listCategory", categoryService.listCategory());
		return "admin/infoproduct";
	}
	
//	@PostMapping("infoproduct")
//	public String singleFileUpload(@RequestParam("file") MultipartFile file, RedirectAttributes redirectAttributes) throws IOException {
//
//		if (file.isEmpty()) {
//			redirectAttributes.addFlashAttribute("message", "Please select a file to upload");
//		}else {
//				byte[] bytes = file.getBytes();
//				Path path = Paths.get(new ClassPathResource("").getFile().getAbsolutePath()+ UPLOADED_FOLDER + file.getOriginalFilename());
//				Files.write(path, bytes);
//				redirectAttributes.addFlashAttribute("message", "thành công");
//				System.out.println(file.getOriginalFilename());
//		}		
//		return "redirect:/admin/infoproduct";
//	}	
	
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
}
