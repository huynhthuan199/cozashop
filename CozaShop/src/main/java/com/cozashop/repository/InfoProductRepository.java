package com.cozashop.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
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
	
	// Query hiện sản phẩm được enabled
	@Query("from Product p left join p.category where p.category.enabled = true and p.enabled=true")
	List<Product> findAllByCategory(Pageable page);
	
	// Query hiện sản phẩm được enabled
		@Query("from Product p left join p.category where p.category.enabled = true and p.enabled=true and p.category.id=?1")
		List<Product> findAllByCategoryNews(String id,Pageable page);

	// Query tìm sản phẩm theo id danh mục đang được bật
	@Query("from Product p left join p.category where p.category.id = ?1 and p.category.enabled = true")
	List<Product> findByCategoryProduct(String id);

	// Query tìm sản phẩm giống
	@Query("from Product p left join p.category where color like %?1%")
	List<Product> findByPColor(String color, Sort sort);

	// Query tìm sản phẩm trong khoản giá
	@Query("from Product p left join p.category where p.price > ?1 AND p.price < ?2")
	List<Product> findBySalaryRange(double start, double end, Sort sort);
	
	// Query tìm sản phẩm theo id 
	@Query("from Product p left join p.category where p.category.id = ?1")
	List<Product> findProductRD(String id);
}
