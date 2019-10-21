package com.cozashop.entities;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "devvn_xaphuongthitran")
public class Ward {

	@Id
	private String  xaid;
	private String name;
	private String type;
	
	@JsonIgnore
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "maqh" ,referencedColumnName = "maqh")
	private District district;

	
	
	public Ward() {
		super();
	}

	public Ward(String xaid, String name, String type, District district) {
		super();
		this.xaid = xaid;
		this.name = name;
		this.type = type;
		this.district = district;
	}

	public String getXaid() {
		return xaid;
	}

	public void setXaid(String xaid) {
		this.xaid = xaid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public District getDistrict() {
		return district;
	}

	public void setDistrict(District district) {
		this.district = district;
	}
    
	
}
