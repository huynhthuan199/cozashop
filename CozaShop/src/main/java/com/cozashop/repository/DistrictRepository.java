package com.cozashop.repository;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cozashop.entities.District;

@Repository
public interface DistrictRepository extends JpaRepository<District, String>{

	@Query("SELECT d FROM District d LEFT JOIN d.province WHERE d.province.matp = ?1")
	List<District> fin(String matp,Sort sort);
}
