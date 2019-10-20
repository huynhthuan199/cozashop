package com.cozashop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cozashop.entities.Province;
@Repository
public interface ProviceRepository extends JpaRepository<Province, String> {

	
	@Query("SELECT p FROM Province p")
	List<Province> findSelect();
	
}
