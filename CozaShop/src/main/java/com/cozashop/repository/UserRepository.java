package com.cozashop.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cozashop.entities.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

	// Hiển thị danh mục đã được bật
	@Query("SELECT u FROM User u WHERE u.enabled = ?1")
	List<User> fEnabled(boolean enabled, Sort sort);
	
	// Update thông tin
	@Transactional
	@Modifying
	@Query("UPDATE User u SET u.username =?1, u.password = ?2, u.name = ?3, u.rules = ?4, u.enabled = ?5,u.email =?6 WHERE u.id = ?7")
	int updatebyUser(String username,String password, String name, boolean rules,boolean enabled,String email,int id);
	
	// validate username unique
	boolean existsByUsername(String username);
	
	// check change password
	User findByUsernameAndPassword(String username,String password);
	
	// tìm theo Username
	User findByUsername(String username);
	
	// tìm theo Email
	User findByEmail(String email);
	
	// tìm theo passwrord
	User findByPassword(String password);
}
