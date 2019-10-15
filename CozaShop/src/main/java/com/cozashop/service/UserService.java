package com.cozashop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;

import com.cozashop.entities.ApiResponse;
import com.cozashop.entities.ApiResponse.Status;
import com.cozashop.entities.User;
import com.cozashop.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;

	public List<User> findAll() {
		return userRepository.findAll();
	}

	public User findById(int id) {
		User user = userRepository.findById(id).get();
		return userRepository.findById(id).get();
	}

	public List<User> findAllByEnabled(boolean enabled) {
		return userRepository.fEnabled(enabled, new Sort(Direction.DESC, "id"));
	}

	public ApiResponse save(User user) {
		if (userRepository.existsByUsername(user.getUsername())) {
			return new ApiResponse(Status.warning, user.getUsername() + " ");
		}
		return new ApiResponse(Status.success, "Them thanh cong");
	}

	public String delete(int id) {
		try {
			userRepository.deleteById(id);
			return "a";
		} catch (Exception e) {
			return "";
		}
	}

	public int update(User user) {
		return userRepository.updatebyUser(user.getUsername(), user.getPassword(), user.getName(), user.isRules(),
				user.isEnabled(), user.getId());
	}

}
