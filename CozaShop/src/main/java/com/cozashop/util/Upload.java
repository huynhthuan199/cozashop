package com.cozashop.util;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.core.io.ClassPathResource;
import org.springframework.web.multipart.MultipartFile;

public class Upload {
	private static String UPLOADED_FOLDER = "/static/web/images/Products/";
	
	public String upload(MultipartFile file) throws IOException {
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
}
