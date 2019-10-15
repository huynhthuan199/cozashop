package com.cozashop.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cozashop.entities.Category;
import com.cozashop.repository.CategoryRepository;

@Service
public class CategoryService{

	
	@Autowired 
	private CategoryRepository categoryRepository;
	
	public List<Category> findAll(){
		return categoryRepository.findAll();
	}
	
	public Category finById(String id) {
		return categoryRepository.getOne(id);
	}
}
