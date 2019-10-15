package com.cozashop.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cozashop.entities.Category;


@Repository
public interface CategoryRepository extends JpaRepository<Category, String> {
	
	@Query("SELECT c FROM Category c WHERE id = ?1")
	Category getCategory(String id);
}
