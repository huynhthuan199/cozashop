package com.cozashop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;

import com.cozashop.entities.Ward;
import com.cozashop.repository.WardRepository;

@Service
public class WardService {

	@Autowired
	private WardRepository wardRepository;
	
	public List<Ward> finById(String maqh){
		return wardRepository.fin(maqh,new Sort(Direction.ASC, "name"));
	}
	
}
