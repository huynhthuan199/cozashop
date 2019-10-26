package com.cozashop.repository;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cozashop.entities.District;
import com.cozashop.entities.Ward;

@Repository
public interface WardRepository extends JpaRepository<Ward, String> {
	
	@Query("SELECT w FROM Ward w LEFT JOIN w.district WHERE w.district.maqh = ?1")
	List<Ward> fin(String maqh,Sort sort);
}
