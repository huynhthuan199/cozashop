package com.cozashop.entities;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "contact")
public class Contact extends BaseEntity  implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String gmail;
	private String content;

	public Contact(String gmail, String content) {
		super();
		this.gmail = gmail;
		this.content = content;
	}
	
	

	public Contact(int id, String gmail, String content) {
		super();
		this.id = id;
		this.gmail = gmail;
		this.content = content;
	}
	
	public Contact(String gmail, String content,Date createAt,boolean enabled) {
		super();
		this.gmail = gmail;
		this.content = content;
		this.createAt = createAt;
		this.enabled = enabled;
	}



	public static long getSerialversionuid() {
		return serialVersionUID;
	}



	public Contact() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getGmail() {
		return gmail;
	}

	public void setGmail(String gmail) {
		this.gmail = gmail;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}
