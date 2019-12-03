package com.cozashop.repository;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cozashop.entities.Customer;

@Repository
public interface CustomerRepository  extends JpaRepository<Customer, Integer> {
	
	
	// Update thông tin khách hàng ./customer
	@Transactional
	@Modifying
	@Query("UPDATE Customer u SET u.username =?1, u.password = ?2, u.name = ?3, u.email = ?4 , u.phone = ?5 , u.address = ?6, u.gender = ?7, u.enabled = ?8,u.createAt = ?9 WHERE u.id = ?10")
		int updateByCustomer(String username,String password, String name,String email,String phone,String address, boolean gender, boolean enabled,Date createAt,int id);

	// Update thông tin khách hàng ./order
	@Transactional
	@Modifying
	@Query("UPDATE Customer u SET u.name = ?1, u.email = ?2 , u.phone = ?3 , u.address = ?4 WHERE u.id = ?5")
		int updateCustomerOrder(String name,String email,String phone,String address,int id);
	
	// Đếm số lượng khách hàng đến hôm nay
	@Query("SELECT COUNT(c) FROM Customer c WHERE DATE(c.createAt) = CURRENT_DATE() ")
	int NewCustomerToday();
	
	// Danh sách khách hàng đén hôm nay
	@Query("SELECT c FROM Customer c WHERE DATE(c.createAt) = CURRENT_DATE() ")
	List<Customer> listCustomerNew(Pageable pageable);
	
	// Validate
	boolean existsByUsername(String username);
	
	// Validate
	boolean existsByEmail(String email);
	
	// Validate
	boolean existsByPhone(String phone);
	
	// Validate
	Customer findByUsername(String username);
	
	// Validate
	Customer findByEmail(String email);
	
	// CheckLogin
	Customer findByUsernameAndPassword(String username, String password);
}