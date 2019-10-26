package com.cozashop.entities;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "material")
public class Material extends BaseEntity {
	
	@Id
	private int id;
	private String name;
	
	
	
	
	public Material() {
		super();
	}
	public Material(int id, String name, boolean enabled, Date createAt) {
		super();
		this.id = id;
		this.name = name;
		this.createAt = createAt;
		this.enabled = enabled;
	}
	
	public Material( String name, boolean enabled, Date createAt) {
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
