package com.cozashop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;

import com.cozashop.entities.User;
import com.cozashop.repository.UserRepository;

@Service
public class UserService {

	@Autowired 
	private UserRepository userRepository;
	
	public List<User> findAll(){
		return userRepository.findAll();
	}
	
	public User findById(int id){
		return userRepository.findById(id).get();
	}
	
	public List<User> findAllByEnabled(boolean enabled){
		return userRepository.fEnabled(enabled, new Sort(Direction.DESC, "id"));
	}
	
}
