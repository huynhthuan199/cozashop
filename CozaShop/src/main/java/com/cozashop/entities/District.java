package com.cozashop.entities;

import java.util.Collection;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "devvn_quanhuyen")
public class District {

	@Id
	private String maqh;
	private String name;
	private String type;
	
	@JsonIgnore
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "matp" ,referencedColumnName = "matp")
	private Province province;
	
	
	@JsonIgnore 
	@OneToMany(mappedBy = "district")
	private Collection<Ward> ward;

	
	
	public District() {
		super();
	}

	public District(String maqh, String name, String type, Province province, Collection<Ward> ward) {
		super();
		this.maqh = maqh;
		this.name = name;
		this.type = type;
		this.province = province;
		this.ward = ward;
	}

	public String getMaqh() {
		return maqh;
	}

	public void setMaqh(String maqh) {
		this.maqh = maqh;
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

	public Province getProvince() {
		return province;
	}

	public void setProvince(Province province) {
		this.province = province;
	}

	public Collection<Ward> getWard() {
		return ward;
	}

	public void setWard(Collection<Ward> ward) {
		this.ward = ward;
	}


}
