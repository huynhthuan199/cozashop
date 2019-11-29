package com.cozashop.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cozashop.entities.Category;
import com.cozashop.repository.CategoryRepository;
import com.cozashop.util.ApiResponse;
import com.cozashop.util.ApiResponse.Status;

@Service
public class CategoryService {

	@Autowired
	private CategoryRepository categoryRepository;

	public List<Category> findAll() {
		return categoryRepository.findAll();
	}

	public Category finById(String id) {
		return categoryRepository.getCategory(id);
	}

	public int updateEnabled(boolean enabled, String id) {
		categoryRepository.updateEnabled(enabled, id);
		return 1;
	}

	public List<Category> listCategory() {
		return categoryRepository.listCategory();
	}
	
	public List<String> StringlistCategory() {
		return categoryRepository.StringListCategory();
	}

	public ApiResponse save(Category category) {
		if(categoryRepository.existsById(category.getId())) {
			return new ApiResponse(Status.warning, " Mã danh mục: " + category.getId() + " đã tồn tại trong hệ thống" );
		} else {
		if(category.getId().equals("") && category.getName().equals("")) {
			return new ApiResponse(Status.warning, "Vui lòng điền thông tin còn thiếu <br>  + Mã danh mục <br>  +Tên danh mục ");
		}else if(category.getId().equals("")) {
			return new ApiResponse(Status.warning, "Không được để trống mã danh mục ");
		}else if(category.getName().equals("")) {
			return new ApiResponse(Status.warning, "Không được để trống tên danh mục ");
		}
		}
		categoryRepository.save(category);
		 return new ApiResponse(Status.success, "Thêm Thành Công...");
	}

	public ApiResponse update(Category category) {
		if (category.getName().equals("")) {
			return new ApiResponse(Status.warning, "Không được để trống tên danh mục ");
		}
		categoryRepository.updateCategory(category.isEnabled(), category.getName(), category.getCreateAt(),
				category.getId());
		return new ApiResponse(Status.success, "Update Thành Công...");
	}

	public int delete(String id) {
		categoryRepository.deleteById(id);
		return 1;
	}
}
