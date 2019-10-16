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
		if(user.getName().equals("") && user.getUsername().equals("")) {
			return new ApiResponse(Status.warning," - Không được để trống họ tên </br>- Không được để trống tài khoản");
		}else if(user.getName().equals("")) {
			return new ApiResponse(Status.warning, user.getName() + " Không được để trống Họ Tên ...");
		}else if(user.getUsername().equals("")) {
			return new ApiResponse(Status.warning, user.getUsername() + " Không được để trống tài khoản ...");
		}else if(String.valueOf(user.isEnabled()).equals("")) {
			return new ApiResponse(Status.warning," Vui lòng tích chọn tình trạng ...");
		}else if(String.valueOf(user.isRules()).equals("")) {
			return new ApiResponse(Status.warning," Vui lòng tích chọn vai trò ...");
		}else if (userRepository.existsByUsername(user.getUsername())) {
			return new ApiResponse(Status.warning, user.getUsername() + " Đã tồn tại trong hệ thống...");
		}
		userRepository.save(user);
		return new ApiResponse(Status.success, "Thêm thành công...");
	}

	public String delete(int id) {
			userRepository.deleteById(id);
			return "a";
	}

	public ApiResponse update(User user) {
		System.out.println(String.valueOf(user.isEnabled()));
		if(user.getName().equals("") && user.getUsername().equals("")) {
			return new ApiResponse(Status.warning," - Không được để trống họ tên </br>- Không được để trống tài khoản");
		}else if(user.getName().equals("")) {
			return new ApiResponse(Status.warning," Không được để trống Họ Tên ...");
		}else if(user.getPassword().equals("")) {
			return new ApiResponse(Status.warning," Không được để trống Password ...");
		}else if(user.getUsername().equals("")) {
			return new ApiResponse(Status.warning, user.getUsername() + " Không được để trống tài khoản ...");
		}
		userRepository.updatebyUser(user.getUsername(), user.getPassword(), user.getName(), user.isRules(),
				user.isEnabled(), user.getId());
		return new ApiResponse(Status.success, "Update Thành Công...");
	}
}
