package com.cozashop.entities;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "customer")
public class Customer extends BaseEntity implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1521437000873370027L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(unique = true)
	private String username;
	private String name;
	private String address;
	private String password;
	private boolean gender;
	private String email;
	private String phone;
	
	@JsonIgnore
	@OneToMany(mappedBy = "customer", fetch = FetchType.LAZY)
	private Collection<Order> order;

	public Customer() {
		super();
	}

	public Customer(String username, String name, String address, String password, boolean gender, String email,
			String phone, boolean enabled, Date createAt) {
		super();
		this.username = username;
		this.name = name;
		this.address = address;
		this.password = password;
		this.gender = gender;
		this.email = email;
		this.phone = phone;
		this.enabled = enabled;
		this.createAt = createAt;
	}
	
	public Customer(String username, String name, String address, String password, boolean gender, String email,
			String phone, boolean enabled, Date createAt,int id) {
		super();
		this.username = username;
		this.name = name;
		this.address = address;
		this.password = password;
		this.gender = gender;
		this.email = email;
		this.phone = phone;
		this.enabled = enabled;
		this.createAt = createAt;
		this.id = id;
	}
	
	public Customer(int id, String username, String name, String address, String password, boolean gender, String email,
			String phone, Collection<Order> order) {
		super();
		this.id = id;
		this.username = username;
		this.name = name;
		this.address = address;
		this.password = password;
		this.gender = gender;
		this.email = email;
		this.phone = phone;
		this.order = order;
	}

	public Collection<Order> getOrder() {
		return order;
	}

	public void setOrder(Collection<Order> order) {
		this.order = order;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isGender() {
		return gender;
	}

	public void setGender(boolean gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

}
