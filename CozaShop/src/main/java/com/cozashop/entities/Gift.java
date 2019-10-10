package com.cozashop.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "gift")
public class Gift extends BaseEntity  implements Serializable {
	@Id
	private String id;
	private String name;
	private String code;

	public Gift() {
		super();
	}

	public Gift(String id, String name, String code) {
		super();
		this.id = id;
		this.name = name;
		this.code = code;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

}
