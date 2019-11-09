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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cozashop.entities.Category;
import com.cozashop.entities.Customer;
import com.cozashop.entities.Product;
import com.cozashop.repository.ColorRepository;
import com.cozashop.service.CategoryService;
import com.cozashop.service.ColorService;
import com.cozashop.service.InfoProductService;
import com.cozashop.service.MaterialService;
import com.cozashop.util.ApiResponse;
import com.cozashop.util.ApiResponse.Status;

import javassist.NotFoundException;

@Controller
@RequestMapping("/admin/")
public class InfoproductController {

	@Autowired
	private InfoProductService infoProductService;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private ColorService colorService;
	
	@Autowired
	private MaterialService materialService;

	@PreAuthorize("hasRole('ADMIN') or hasRole('MEMBER')")
	@GetMapping("infoproduct")
	public String index(Model model) {
		model.addAttribute("listProduct", infoProductService.findAll());
		model.addAttribute("listCategory", categoryService.listCategory());
		model.addAttribute("listColor", colorService.finAll());
		model.addAttribute("listMaterial", materialService.finAll());
		return "admin/infoproduct";
	}

//  Edit
	@GetMapping(value = "infoproduct/{id}")
	@ResponseBody
	public Product getById(@PathVariable("id") String id) throws NotFoundException {
		return infoProductService.finById(id);
	}
	
//	Submit Insert
	@PostMapping(value = "infoproduct/btnInsert")
	@ResponseBody
	public ApiResponse insert(@RequestParam("txtAddId") String id,
					  @RequestParam("txtAddName") String name,
					  @RequestParam("txtAddPrice") String price,
					  @RequestParam("txtAddCategoryId") Category categoryId,
					  @RequestParam("txtAddMaterial") String material,
					  @RequestParam("addFile") MultipartFile file,
					  @RequestParam("addFile2") MultipartFile file2,
					  @RequestParam("addFile3") MultipartFile file3,
					  @RequestParam("txtAddColor") String color,
					  @RequestParam("txtAddDescription") String description,
					  @RequestParam("txtAddShortDescription") String shortdescription) throws IOException {
		try {
			return infoProductService.save(new Product(id,name,Double.parseDouble(price)
					,Double.parseDouble(price),material,color,
					infoProductService.upload(file),infoProductService.upload(file2),infoProductService.upload(file3),shortdescription,shortdescription
					,categoryId,true,new Date()));
		}catch(Exception e) {
			return new ApiResponse(Status.warning,"-Sai Định Dạng Giá Sản Phẩm </br> + Giá Phải là Số</br>+ không chứa kí tự ",null) ;
		}
			
	}
	
//	Delete with ajax
	@GetMapping(value = "infoproduct/btnDelete")
	@ResponseBody
	public String delete(@RequestParam("id") String id) {
		return infoProductService.delete(id);
	}
	
//	Submit Update
	@PostMapping(value = "infoproduct/btnUpdate")
	public String update(@RequestParam("txtid") String id,
					  @RequestParam("txtname") String name,
					  @RequestParam("txtprice") String price,
					  @RequestParam("txtcategoryId") Category categoryId,
					  @RequestParam("txtmaterial") String material,
					  @RequestParam("file4") MultipartFile file4,
					  @RequestParam("file5") MultipartFile file5,
					  @RequestParam("file6") MultipartFile file6,
					  @RequestParam("txtcolor") String color,
					  @RequestParam("txtdescription") String description,
					  @RequestParam("txtshortDescription") String shortdescription ) throws IOException {
				infoProductService.Update(new Product(id,name,Double.parseDouble(price)
				,Double.parseDouble(price),material,color,
				infoProductService.upload(file4),infoProductService.upload(file5),infoProductService.upload(file6),shortdescription,description
				,categoryId,true,new Date()));
		return "redirect:/admin/infoproduct";
	}
}
