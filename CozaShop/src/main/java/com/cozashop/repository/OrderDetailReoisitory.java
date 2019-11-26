package com.cozashop.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cozashop.entities.Order;
import com.cozashop.entities.OrderDetails;

@Repository
public interface OrderDetailReoisitory extends JpaRepository<OrderDetails, Integer> {
	
	// tìm kiếm Order theo Id
	@Query("from OrderDetails op left join op.order where op.order.id =?1")
	List<OrderDetails> finorder(int id);
	
	// thống kê sản phẩm bán được theo sản phẩm
	@Query("SELECT od.product.id,od.product.name,od.product.image,SUM(od.quantity),SUM(od.quantity)*od.product.price FROM OrderDetails od JOIN od.order JOIN od.product "
			+ "WHERE od.order.enabled= true GROUP BY od.product.id ORDER BY SUM(od.quantity) DESC")
	List<Object> statisticalProduct(Pageable pageable);
	
	// thống kê sản phẩm bán được theo danh mục
	@Query("SELECT od.product.category.name,SUM(od.quantity) FROM OrderDetails od "
			+ "JOIN od.order JOIN od.product WHERE od.order.enabled= true GROUP BY od.product.category.id ORDER BY SUM(od.quantity) DESC")
	List<Object> statisticalCategory();
}
