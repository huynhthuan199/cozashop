package com.cozashop.controller.admin;

import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cozashop.service.ContactService;
import com.cozashop.service.EmailService;
import com.cozashop.util.ApiResponse;
import com.cozashop.util.ApiResponse.Status;

@Controller
@RequestMapping(value = "/admin/")
public class ContactController {

	@Autowired
	private ContactService contactService;
	
	@Autowired
	private EmailService emailService;
	
	@PreAuthorize("hasRole('ADMIN')")
	@GetMapping(value = "contact")
	public String contact(Model model) {
		model.addAttribute("listContact",contactService.findAll());
		return "admin/contact";
	}
	
	@PreAuthorize("hasRole('ADMIN')")
	@PostMapping(value = "contact/btnSendMail")
	@ResponseBody
	public ApiResponse sendMail(@RequestParam int id,@RequestParam String content,@RequestParam String title,@RequestParam String email) throws UnsupportedEncodingException, MessagingException {
		if(content.equals("") || title.equals("")) {
			return new ApiResponse(Status.info,"Điền Đầy Đủ Thông Tin Trước Khi Gởi");
		}
			emailService.sendMail(email, title, content);
			contactService.updateEnabledByContact(true,id);
			return new ApiResponse(Status.success,"Gởi Thành Công",id);
	}
}
