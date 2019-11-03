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

	@Query("SELECT u FROM User u WHERE u.enabled = ?1")
	List<User> fEnabled(boolean enabled, Sort sort);
	
	@Transactional
	@Modifying
	@Query("UPDATE User u SET u.username =?1, u.password = ?2, u.name = ?3, u.rules = ?4, u.enabled = ?5 WHERE u.id = ?6")
	int updatebyUser(String username,String password, String name, boolean rules,boolean enabled,int id);
	
	boolean existsByUsername(String username);
	
	User findByUsernameAndPassword(String username,String password);
	
	User findByUsername(String username);
	
	User findByEmail(String email);
	
	User findByPassword(String password);
}
