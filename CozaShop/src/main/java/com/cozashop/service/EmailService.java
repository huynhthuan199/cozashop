package com.cozashop.service;

import java.io.UnsupportedEncodingException;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.core.io.ClassPathResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service
public class EmailService {

    private JavaMailSender javaMailSender;
    
    private ScheduledExecutorService quickService = Executors.newScheduledThreadPool(20);

    public EmailService(JavaMailSender javaMailSender) {
        this.javaMailSender = javaMailSender;
    }
    private static String UPLOADED_FOLDER = "/static/web/images/Products/";
    public void sendMail(String toEmail, String subject, String message) throws MessagingException, UnsupportedEncodingException {

    	MimeMessage msg = javaMailSender.createMimeMessage();

        // true = multipart message
        MimeMessageHelper helper = new MimeMessageHelper(msg, true);
		
        helper.setTo(toEmail);
        helper.setFrom(new InternetAddress("huynthuan199@gmail.com", "Coza Shop"));

        helper.setSubject(subject);

        // default = text/plain
        //helper.setText("Check attachment for image!");

        // true = text/html
        helper.setText("<h1>" + message + "</h1>", true);

		// hard coded a file path
        //FileSystemResource file = new FileSystemResource(new File("path/android.png"));

        helper.addAttachment("my_photo.png", new ClassPathResource("/static/admin/assets/images/logo-icon.png"));
        
//        Thead chạy chung với luồng chính
        quickService.submit(new Runnable() {
			@Override
			public void run() {
				 javaMailSender.send(msg);
				
			}
		});
    }
    
    public void sendMailPhoto(String toEmail, String subject, String message) throws MessagingException {
    	String fileName = "";
    	MimeMessage msg = javaMailSender.createMimeMessage();

        // true = multipart message
        MimeMessageHelper helper = new MimeMessageHelper(msg, true);
		
        helper.setTo(toEmail);

        helper.setSubject(subject);

        // default = text/plain
        //helper.setText("Check attachment for image!");

        // true = text/html
        helper.setText("<h1>" + message + "</h1>", true);

		// hard coded a file path
		/* FileSystemResource file = new FileSystemResource(new File("path/A1.jpg")); */

        helper.addAttachment("my_photo.png",new ClassPathResource(UPLOADED_FOLDER + fileName));

        javaMailSender.send(msg);
    }
}
