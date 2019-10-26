package com.cozashop.repository;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cozashop.entities.Color;


@Repository
public interface ColorRepository extends JpaRepository<Color, Integer> {
	
	@Query("SELECT c FROM Color c WHERE id = ?1")
	Color getcolor(int id);
	
	@Transactional
	@Modifying
	@Query("UPDATE Color c SET c.enabled = ?1 WHERE c.id = ?2")
	int updateEnabled(boolean enabled,int id);
	
	@Transactional
	@Modifying
	@Query("UPDATE Color c SET c.enabled = ?1, c.name = ?2, c.createAt = ?3 WHERE c.id = ?4")
	void updatecolor(boolean enabled,String name,Date createAt,int id);
	
	@Query("SELECT c FROM Color c")
	List<Color> listcolor();
	
	@Query("SELECT c.id, c.name FROM Color c")
	List<Color> listcolora();
	
	boolean existsByName(String name);
}
