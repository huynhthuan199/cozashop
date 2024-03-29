package com.cozashop.util;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.core.io.ClassPathResource;
import org.springframework.web.multipart.MultipartFile;

public class Helper {
	private final static String ALPHA_NUMERIC_STRING = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
	private final static SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
	private final static String DOUBLE_PATTERN = "[0-9]+(\\.){0,1}[0-9]*";
	private static String UPLOADED_FOLDER = "/static/web/images/Products/";
	public static String randomAlphaNumeric(int count) {
		StringBuilder builder = new StringBuilder();
		while (count-- != 0) {
			int character = (int) (Math.random() * ALPHA_NUMERIC_STRING.length());
			builder.append(ALPHA_NUMERIC_STRING.charAt(character));
		}
		return builder.toString();
	}

	public static Date parseStringToDate(String stringDate) {
		try {
			return sdf.parse(stringDate);
		} catch (ParseException e) {
			return null;
		}
	}

	public static String parseDateToString(Date date) {
		return sdf.format(date);
	}
	public static String upload(MultipartFile file) throws IOException {
		if(file.isEmpty()) {
			return null;
		}
		String name = file.getOriginalFilename();
		byte[] bytes = file.getBytes();
		Path path = Paths.get(
				new ClassPathResource("").getFile().getAbsolutePath() + UPLOADED_FOLDER + name);
				Files.write(path, bytes);
		return name ;
	}

	public static boolean notNull(String... data) {
		boolean result = true;
		if (data != null && data.length > 0) {
			for (String field : data) {
				if (field.trim().equals("")) {
					result = !result;
					break;
				}
			}
		}
		return result;
	}

	private static final Pattern VALID_EMAIL_ADDRESS_REGEX = Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$",
			Pattern.CASE_INSENSITIVE);
	private static final Pattern VALID_PHONE_REGEX = Pattern.compile("^08\\d{8}$",
			Pattern.CASE_INSENSITIVE);

	public static boolean validateEmail(String emailStr) {
		Matcher matcher = VALID_EMAIL_ADDRESS_REGEX.matcher(emailStr);
		return matcher.find();
	}
	
	public static boolean validatePhone(String phoneStr) {
		Matcher matcher = VALID_PHONE_REGEX.matcher(phoneStr);
		return matcher.find();
	}
}
