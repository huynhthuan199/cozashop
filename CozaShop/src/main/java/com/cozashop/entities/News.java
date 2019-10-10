package com.cozashop.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "news")
public class News extends BaseEntity  implements Serializable {

	@Id
	private String id;
	private String title;
	private String content;
	private String image;

	public News() {
		super();
	}

	public News(String id, String title, String content, String image) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.image = image;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
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
