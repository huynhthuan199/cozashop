package com.cozashop.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cozashop.entities.Contact;
import com.cozashop.repository.ContactRepository;
import com.cozashop.util.ApiResponse;
import com.cozashop.util.ApiResponse.Status;
import com.cozashop.util.Helper;

@Service
public class ContactService {

	@Autowired
	private ContactRepository contactRepository;
	
	public List<Contact> findAll(){
		return contactRepository.findAll();
	}
	
	public ApiResponse save(Contact contact) {
		String email = contact.getGmail();
		String content = contact.getContent();
		if(email.equals("") && content.equals("")) {
			return new ApiResponse(Status.info,"- Vui Lòng Điền Đầy Đủ Thông Tin Gồm </br>+ Email<br/>+ Nội Dung");
		}else if(email.equals("")) {
			return new ApiResponse(Status.info,"- Vui Lòng Điền Email");
		}else if(email.equals("")) {
			return new ApiResponse(Status.info,"- Vui Lòng Điền Nội Dung");
		}
		if(!Helper.validateEmail(email)) {
			return new ApiResponse(Status.info,"- Vui Lòng Nhập Đúng Định Dạng Email: xxx@xxx.xxx");
		}
		contactRepository.save(contact);
		return new ApiResponse(Status.success,"Đã Gởi Yêu Cầu");
	}
	
	public void updateEnabledByContact(boolean enabled,int id) {
		contactRepository.updateEnabledByContact(enabled,id);
	}
}
