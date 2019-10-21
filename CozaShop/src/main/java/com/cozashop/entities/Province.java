package com.cozashop.entities;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "devvn_tinhthanhpho")
public class Province {

	
	@Id
	private String matp;
	private String name;
	private String type;
	
	
	public Province() {
		super();
	}


	public Province(String matp, String name, String type, Collection<District> district) {
		super();
		this.matp = matp;
		this.name = name;
		this.type = type;
		this.district = district;
	}


	public String getMatp() {
		return matp;
	}


	public void setMatp(String matp) {
		this.matp = matp;
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


	public Collection<District> getDistrict() {
		return district;
	}


	public void setDistrict(Collection<District> district) {
		this.district = district;
	}

	@JsonIgnore
	@OneToMany(mappedBy = "province")
	private Collection<District> district;
}
