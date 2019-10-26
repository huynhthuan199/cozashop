package com.cozashop.entities;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "color")
public class Color extends BaseEntity {
	
	@Id
	private int id;
	private String name;
	public Color() {
		super();
	}
	public Color(int id, String name,boolean enabled, Date createAt) {
		super();
		this.id = id;
		this.name = name;
		this.createAt = createAt;
		this.enabled = enabled;
	}
	public Color(String name,boolean enabled, Date createAt) {
		super();
		this.name = name;
		this.createAt = createAt;
		this.enabled = enabled;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
