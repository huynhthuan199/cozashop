package com.cozashop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cozashop.entities.Order;
import com.cozashop.entities.OrderDetails;

@Repository
public interface OrderDetailReoisitory extends JpaRepository<OrderDetails, Integer> {
	
	@Query("from OrderDetails op left join op.order where op.order.id =?1")
	List<OrderDetails> finorder(int id);
}
