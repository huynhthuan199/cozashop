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
	
	//	 Update Hóa đơn
	@Transactional
	@Modifying
	@Query("UPDATE Order o SET o.enabled =?1 WHERE o.id = ?2")
	int updateStatusOrder(boolean enabled,int id);
	
	
	// Tổng tiền thu được sau khi xác thực
	@Query("SELECT SUM(r.totalmoney) FROM Order r WHERE r.enabled = ?1")
	double total(boolean enabled);
	
	
	// Xác thực hóa dơn
	@Query("SELECT COUNT(r) FROM Order r WHERE r.enabled = ?1")
	int orderEnabled(boolean enabled);
	
	// thống kê tổng tiền tháng theo năm
	@Query("SELECT MONTH(r.createAt), SUM(r.totalmoney) FROM Order r WHERE r.enabled=true GROUP BY MONTH(r.createAt) ORDER BY MONTH(r.createAt)")
	List<String> FindMonthTotal();
	
	// Hóa đơn mới	
	@Query("SELECT COUNT(r) FROM Order r WHERE DATE(r.createAt) = CURRENT_DATE()")
	int newOrderToday();
}
