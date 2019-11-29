package com.cozashop.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "news")
public class News extends BaseEntity  implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String title;
	private String content;
	private String description;
	private String image;
	private String tags;
	
//	@JsonIgnore
	@ManyToOne(optional = false)
	@JoinColumn(name = "categoryid",referencedColumnName = "id")
	private Category categoryNews;
	
//	@JsonIgnore
	@ManyToOne()
	@JoinColumn(name = "userid" ,referencedColumnName = "id")
	private User user;

	public News() {
		super();
	}
	
	

	public News(String title, String content, String description,Date createAt,boolean enabled, String image, String tags, Category categoryNews,
			User user) {
		super();
		this.title = title;
		this.content = content;
		this.description = description;
		this.createAt = createAt;
		this.enabled = enabled;
		this.image = image;
		this.tags = tags;
		this.categoryNews = categoryNews;
		this.user = user;
	}



	public News(int id, String title, String content, String description, String image, String tags,
			Category categoryNews, User user) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.description = description;
		
		this.image = image;
		this.tags = tags;
		this.categoryNews = categoryNews;
		this.user = user;
	}



	public News(int id, String title, String content, String description,Date createAt,boolean enabled, String image,String tags) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.description = description;
		this.createAt = createAt;
		this.enabled = enabled;
		this.image = image;
		this.tags = tags;
	}
	
	
	

	public Category getCategoryNews() {
		return categoryNews;
	}

	public void setCategoryNews(Category categoryNews) {
		this.categoryNews = categoryNews;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getTags() {
		return tags;
	}

	public void setTags(String tags) {
		this.tags = tags;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

}
