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

import com.cozashop.entities.Product;
import com.cozashop.repository.InfoProductRepository;
import com.cozashop.util.ApiResponse;
import com.cozashop.util.ApiResponse.Status;
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
		Product productUpdate = infoProductRepository.findById(product.getId()).get();
		productUpdate.setAmout(product.getAmout());
		productUpdate.setCategory(product.getCategory());
		productUpdate.setCreateAt(product.getCreateAt());
		productUpdate.setDescription(product.getDescription());
		productUpdate.setEnabled(product.isEnabled());
		productUpdate.setName(product.getName());
		productUpdate.setPrice(product.getPrice());
		productUpdate.setColor(product.getColor());
		productUpdate.setImage(product.getImage());
		return infoProductRepository.save(productUpdate);
	}
	
	public Product finById(String id){
		return infoProductRepository.findById(id).get();
	}
	
	public String delete(String id) {
		infoProductRepository.deleteById(id);
		return "a";
	}
}
