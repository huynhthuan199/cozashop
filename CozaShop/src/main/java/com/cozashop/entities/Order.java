package com.cozashop.entities;

import java.io.Serializable;
import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "orders")
public class Order extends BaseEntity  implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7299273142778938132L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String id;
	private String username;
	private String name;
	private String address;
	private String email;
	
	@OneToMany(mappedBy = "order")
	private Collection<OrderDetails> orderDetails;

	public Order() {
		super();
	}

	public Order(String username, String name, String address, String email) {
		super();
		this.username = username;
		this.name = name;
		this.address = address;
		this.email = email;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
