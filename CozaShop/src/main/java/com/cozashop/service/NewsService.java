package com.cozashop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cozashop.entities.News;
import com.cozashop.repository.NewsRepository;
import com.cozashop.util.ApiResponse;
import com.cozashop.util.ApiResponse.Status;

@Service
public class NewsService {
	@Autowired
	private NewsRepository newsRepository;
	
	
	public List<News> finAll(){
		return newsRepository.findAllEnabled();
	}

	public News finById(int id) {
		return newsRepository.findById(id).get();
	}
	
	public int updateEnabled(boolean enabled, int id) {
		newsRepository.updateEnabled(enabled, id);
		return 1;
	}
	
	public int delete(int id) {
		newsRepository.deleteById(id);
		return 1;
	}
	
	public ApiResponse save(News news) {
		String content = news.getContent();
		String description = news.getDescription();
		String title = news.getTitle();
		String tags = news.getTags();
		if(newsRepository.count() >6) {
			return new ApiResponse(Status.info,"Tối Đa Chỉ Được Thêm 5 Bài Viết");
		}
		if(content.equals("") || description.equals("") || tags.equals("") || title.equals("")) {
			return new ApiResponse(Status.info,"Điền Đẩy Đủ Thông Tin Trước Khi Thêm");
		}
		newsRepository.save(news);
		return new ApiResponse(Status.success,"Thêm Bài Viết Thành Công");
	}
	
	public ApiResponse update(News news) {
		String title = news.getTitle();
		String content = news.getContent();
		String description = news.getDescription();
		String tags = news.getTags();
		if(content.equals("") || description.equals("") || tags.equals("") || title.equals("")) {
			return new ApiResponse(Status.info,"Điền Đẩy Đủ Thông Tin Trước Khi Thêm");
		}
		newsRepository.updateByNews(news.getTitle(), news.getContent(), news.getDescription(), news.getImage(),news.getTags(),news.getCreateAt(),news.isEnabled(), news.getId());
		return new ApiResponse(Status.success,"Sửa Bài Viết Thành Công");
	}
	
}
