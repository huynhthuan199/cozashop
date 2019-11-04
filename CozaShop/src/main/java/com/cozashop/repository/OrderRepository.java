package com.cozashop.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cozashop.entities.Order;
@Repository
public interface OrderRepository extends JpaRepository<Order, Integer> {

	// Query hiện sản phẩm được enabled
//		@Query("from Product p left join p.category where p.category.enabled = true")
//		User findByOrder();
	@Transactional
	@Modifying
	@Query("UPDATE Order o SET o.enabled =?1 WHERE o.id = ?2")
	int updateStatusOrder(boolean enabled,int id);
}
