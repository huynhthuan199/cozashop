package com.cozashop.util;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
public class SendMail {
	
	
	 private JavaMailSender javaMailSender;
	
	 public void sendMail(String toEmail, String subject, String message) {
	 
	 }

}
