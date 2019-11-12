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
	
	@Query("SELECT SUM(r.totalmoney) FROM Order r WHERE r.enabled = ?1")
	double total(boolean enabled);
	
	@Query("SELECT COUNT(r) FROM Order r WHERE r.enabled = ?1")
	int orderEnabled(boolean enabled);
	
	@Query("SELECT MONTH(r.createAt),r.totalmoney FROM Order r")
	List<String> FindMonthTotal();
}
