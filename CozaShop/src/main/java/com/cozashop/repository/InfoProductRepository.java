package com.cozashop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cozashop.entities.Category;
import com.cozashop.entities.Product;

@Repository
public interface InfoProductRepository extends JpaRepository<Product, String> {
	
// Query hiện sản phẩm được enabled
	@Query("from Product p left join p.category where p.category.enabled = true")
	List<Product> findAllByCategory();
}
