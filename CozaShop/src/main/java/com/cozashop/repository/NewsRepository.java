package com.cozashop.repository;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cozashop.entities.Color;
import com.cozashop.entities.News;
@Repository
public interface NewsRepository extends JpaRepository<News, Integer> {
	
	@Query("SELECT n FROM News n where n.enabled=true")
	List<News> findAllEnabled();
	@Transactional
	@Modifying
	@Query("UPDATE News n SET n.title =?1, n.content = ?2, n.description = ?3, n.image = ?4, n.tags =?5, n.createAt =?6, n.enabled =?7 WHERE n.id = ?8")
		int updateByNews(String title,String content, String description,String image,String tags,Date createAt,boolean enabled,int id);
	
	@Transactional
	@Modifying
	@Query("UPDATE News n SET n.enabled = ?1 WHERE n.id = ?2")
	int updateEnabled(boolean enabled,int id);
}
