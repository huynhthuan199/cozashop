package com.cozashop.repository;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cozashop.entities.Category;


@Repository
public interface CategoryRepository extends JpaRepository<Category, String> {
	
	// Tìm danh mục theo Id
	@Query("SELECT c FROM Category c WHERE id = ?1")
	Category getCategory(String id);
	
	// Update danh mục
	@Transactional
	@Modifying
	@Query("UPDATE Category c SET c.enabled = ?1 WHERE c.id = ?2")
	int updateEnabled(boolean enabled,String id);
	// update danh mục
	@Transactional
	@Modifying
	@Query("UPDATE Category c SET c.enabled = ?1, c.name = ?2, c.createAt = ?3 WHERE c.id = ?4")
	void updateCategory(boolean enabled,String name,Date createAt,String id);
	
	// Danh sách danh mục table
	@Query("SELECT c FROM Category c")
	List<Category> listCategory();
	
	// danh sách danh mục select option
	@Query("SELECT c.name FROM Category c") 
	List<String> StringListCategory();
	
	 
}
