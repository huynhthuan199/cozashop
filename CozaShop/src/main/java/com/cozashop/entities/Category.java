package com.cozashop.entities;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "category")
public class Category extends BaseEntity  implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5731256573258897472L;
	@Id
	private String id;
	private String name;

	@JsonIgnore
	@OneToMany(mappedBy = "category", fetch = FetchType.LAZY,cascade = CascadeType.ALL)
	private Collection<Product> products;

	public Category(String id, String name,boolean enabled,Date createAt) {
		super();
		this.id = id;
		this.name = name;
		this.enabled = enabled;
		this.createAt = createAt;
	}

	public Category() {
		super();
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

	public Collection<Product> getProducts() {
		return products;
	}

	public void setProducts(Collection<Product> products) {
		this.products = products;
	}

}
