package com.cozashop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cozashop.entities.Order;
import com.cozashop.entities.Product;
@Repository
public interface OrderRepository extends JpaRepository<Order, Integer> {

	// Query hiện sản phẩm được enabled
//		@Query("from Product p left join p.category where p.category.enabled = true")
//		User findByOrder();
}
