package com.cozashop.entities;

import java.io.Serializable;
import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "category")
public class Category extends BaseEntity  implements Serializable {

	@Id
	private String id;
	private String name;

	@OneToMany(mappedBy = "category")
	private Collection<Product> products;

	public Category(String id, String name) {
		super();
		this.id = id;
		this.name = name;
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
