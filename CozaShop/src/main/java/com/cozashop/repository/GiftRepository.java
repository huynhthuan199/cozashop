package com.cozashop.repository;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.cozashop.entities.Gift;

@Repository
public interface GiftRepository extends JpaRepository<Gift, Integer> {

	
	Gift findByCodeAndEnabled(String code,boolean enabled);
	
	@Query("SELECT g FROM Gift g WHERE g.id = ?1")
	Gift getcode(int id);
	
	@Transactional
	@Modifying
	@Query("UPDATE Gift g SET g.enabled = ?1 WHERE g.id = ?2")
	int updateEnabled(boolean enabled,int id);
	
	@Transactional
	@Modifying
	@Query("UPDATE Gift g SET g.enabled = ?1, g.name = ?2, g.code =?3,g.money =?4 WHERE g.id = ?5")
	void updategift(boolean enabled,String name,String code,double money,int id);
	
	boolean existsByCode(String code);
}
