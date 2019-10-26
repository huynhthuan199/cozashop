package com.cozashop.repository;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cozashop.entities.Material;
import com.cozashop.entities.Material;

@Repository
public interface MaterialRepository extends JpaRepository<Material, Integer> {
	@Query("SELECT c FROM Material c WHERE id = ?1")
	Material getMaterial(int id);
	
	@Transactional
	@Modifying
	@Query("UPDATE Material c SET c.enabled = ?1 WHERE c.id = ?2")
	int updateEnabled(boolean enabled,int id);
	
	@Transactional
	@Modifying
	@Query("UPDATE Material c SET c.enabled = ?1, c.name = ?2, c.createAt = ?3 WHERE c.id = ?4")
	void updateMaterial(boolean enabled,String name,Date createAt,int id);
	
	@Query("SELECT c FROM Material c")
	List<Material> listMaterial();
	
	@Query("SELECT c.id, c.name FROM Material c")
	List<Material> listMateriala();
	
	boolean existsByName(String name);
}
