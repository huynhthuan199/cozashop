package com.cozashop.repository;

import java.util.Date;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cozashop.entities.Customer;

@Repository
public interface CustomerRepository  extends JpaRepository<Customer, Integer> {
	
	@Transactional
	@Modifying
	@Query("UPDATE Customer u SET u.username =?1, u.password = ?2, u.name = ?3, u.email = ?4 , u.phone = ?5 , u.address = ?6, u.gender = ?7, u.enabled = ?8,u.createAt = ?9 WHERE u.id = ?10")
		int updateByCustomer(String username,String password, String name,String email,String phone,String address, boolean gender, boolean enabled,Date createAt,int id);

	boolean existsByUsername(String username);
	
	boolean existsByEmail(String email);
	
	boolean existsByPhone(String phone);
}