package com.cozashop.service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.cozashop.entities.ApiResponse;
import com.cozashop.entities.Product;
import com.cozashop.entities.ApiResponse.Status;
import com.cozashop.repository.InfoProductRepository;
import com.fasterxml.jackson.databind.ObjectMapper;

@Service
public class InfoProductService {

	
	
	@Autowired
	private InfoProductRepository infoProductRepository;

	@Autowired
	private CategoryService categoryService;

	private static String UPLOADED_FOLDER = "/static/web/images/";
	

	public List<Product> findAll(){
		return infoProductRepository.findAllByCategory();
	}

	public String upload(MultipartFile file) throws IOException {
		String name = file.getOriginalFilename();
		byte[] bytes = file.getBytes();
		Path path = Paths.get(
				new ClassPathResource("").getFile().getAbsolutePath() + UPLOADED_FOLDER + name);
				Files.write(path, bytes);
		return name ;
	}
	public Product save(Product product){
		return infoProductRepository.save(product);
	}
	
	public Product Update(Product product){
		return infoProductRepository.save(product);
	}
}
