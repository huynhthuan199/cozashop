package com.cozashop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cozashop.entities.Province;
import com.cozashop.repository.ProviceRepository;
@Service
public class ProviceService {

	@Autowired
	private ProviceRepository proviceRepository;
	
	public List<Province> findAll(){
		return proviceRepository.findSelect();
	}
}
