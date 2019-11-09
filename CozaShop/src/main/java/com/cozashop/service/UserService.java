package com.cozashop.service;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.cozashop.entities.User;
import com.cozashop.repository.UserRepository;
import com.cozashop.util.ApiResponse;
import com.cozashop.util.ApiResponse.Status;
import com.cozashop.util.Helper;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;
	
	@Autowired 
	private PasswordEncoder passwordEncoder;

	@Autowired 
	private EmailService emailService;

	public List<User> findAll() {
		return userRepository.findAll();
	}

	public User findById(int id) {
			return userRepository.findById(id).get();
	}

	public List<User> findAllByEnabled(boolean enabled) {
		return userRepository.fEnabled(enabled, new Sort(Direction.DESC, "id"));
	}

	public ApiResponse save(User user) {
		if (user.getName().equals("") && user.getUsername().equals("") && user.getEmail().equals("") && user.getImage() == null) {
			return new ApiResponse(Status.warning, " - Không được để trống </br>   + họ tên </br>   + tài khoản </br>   + Email </br>   + Hình ảnh " );
		} else if (user.getEmail().equals("")) {
			return new ApiResponse(Status.warning, user.getEmail()+ " Không được để trống Email ...");
		} else if (user.getName().equals("")) {
			return new ApiResponse(Status.warning, user.getName() + " Không được để trống Họ Tên ...");
		} else if (user.getUsername().equals("")) { 
			return new ApiResponse(Status.warning, user.getUsername() + " 	Không được để trống tài khoản ...");
		} else if (String.valueOf(user.isEnabled()).equals("")) {
			return new ApiResponse(Status.warning, " Vui lòng tích chọn tình trạng ...");
		} else if (String.valueOf(user.isRules()).equals("")) {
			return new ApiResponse(Status.warning, " Vui lòng tích chọn vai trò ...");
		}else if(user.getImage() == null) {
			return new ApiResponse(Status.warning, user.getImage()+ "Chưa chọn ảnh cho tài khoản ...");
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
		if (user.getName().equals("") && user.getUsername().equals("")) {
			return new ApiResponse(Status.warning,
					" - Không được để trống họ tên </br>- Không được để trống tài khoản");
		} else if (user.getName().equals("")) {
			return new ApiResponse(Status.warning, " Không được để trống Họ Tên ...");
		} else if (user.getPassword().equals("")) {
			return new ApiResponse(Status.warning, " Không được để trống Password ...");
		} else if (user.getUsername().equals("")) {
			return new ApiResponse(Status.warning, user.getUsername() + " Không được để trống tài khoản ...");
		}
		userRepository.updatebyUser(user.getUsername(), user.getPassword(), user.getName(), user.isRules(),
				user.isEnabled(),user.getEmail(), user.getId());
		return new ApiResponse(Status.success, "Update Thành Công...");
	}
	public User Login(String username,String password) {
		return userRepository.findByUsernameAndPassword(username, password);
	}
	
	public ApiResponse setPassword(String email) throws MessagingException, UnsupportedEncodingException {
		String newPassword = "";
		String token = "";
		if(email.equals("")) {
			return new ApiResponse(Status.danger,"Không Được Để Trống Email");
		}else if(!Helper.validateEmail(email)) {
			return new ApiResponse(Status.danger,"Vui lòng nhập đúng dịnh dạng địa chỉ Email");
		}
			User user = userRepository.findByEmail(email);
			if(user != null) {
				newPassword = Helper.randomAlphaNumeric(8);
				token = passwordEncoder.encode(newPassword);
				user.setPassword(token);
				userRepository.save(user);
				emailService.sendMail(email, "Recover Passwrod", "Mật khẩu mới của bạn là: <span style='color:red;'> " + newPassword +" </span><br> Dùng mã này để đổi mật khẩu: " + token);
				return new ApiResponse(Status.success,"Check email để nhận mật khẩu mới nhé!");
			}
			return new ApiResponse(Status.danger,"Không tồn tại Email trong hệ thông");
		}
	
	public ApiResponse changePassword(String username,String password,String oldpassword) {
		if(!Helper.notNull(username,password,oldpassword)) {
			return new ApiResponse(Status.danger,"Không được để trống thông tin");
		}
		User user = userRepository.findByUsernameAndPassword(username,oldpassword);
		if(user != null) {
			user.setPassword(passwordEncoder.encode(password));
			userRepository.save(user);
			return new ApiResponse(Status.success,"Đổi mật khẩu thành công");
		}
		return new ApiResponse(Status.danger,"Đổi mật khẩu không thành công");
	}
}
