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
		if(newsRepository.count() >6) {
			return new ApiResponse(Status.success,"Tối Đa Chỉ Được Thêm 5 Bài Viết");
		}
		newsRepository.save(news);
		return new ApiResponse(Status.success,"Thêm khách hàng thành công");
	}
	
	public ApiResponse update(News news) {
		newsRepository.updateByNews(news.getTitle(), news.getContent(), news.getDescription(), news.getImage(),news.getTags(),news.getCreateAt(),news.isEnabled(), news.getId());
		return new ApiResponse(Status.success,"Sửa khách hàng thành công");
	}
	
}
