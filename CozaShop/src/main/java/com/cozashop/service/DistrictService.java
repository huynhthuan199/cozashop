package com.cozashop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cozashop.entities.District;
import com.cozashop.repository.DistrictRepository;

@Service
public class DistrictService {

	@Autowired
	private DistrictRepository districtRepository;
	
	public List<District> findAll(){
		return districtRepository.findAll();
	}
	
	public List<District> finById(String matp) {
		return districtRepository.fin(matp);
	}
	
}
