package com.cozashop.entities;

import java.io.Serializable;
import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "product")
public class Product extends BaseEntity implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 574012164541797479L;

	@Id
	private String id;
	private String name;
	private Double price;
	private Double amout;
	private String material;
	private String color;
	private String image;
	private String description;

	@ManyToOne
	@JoinColumn(referencedColumnName = "id")
	private Category category;

	@OneToMany(mappedBy = "product")
	private Collection<OrderDetails> orderDetails;

	public Product() {
		super();
	}

	public Product(String id, String name, Double price, Double amout, String material, String color, String image,
			String description, Category category) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.amout = amout;
		this.material = material;
		this.color = color;
		this.image = image;
		this.description = description;
		this.category = category;
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

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Double getAmout() {
		return amout;
	}

	public void setAmout(Double amout) {
		this.amout = amout;
	}

	public String getMaterial() {
		return material;
	}

	public void setMaterial(String material) {
		this.material = material;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Collection<OrderDetails> getOrderDetails() {
		return orderDetails;
	}

	public void setOrderDetails(Collection<OrderDetails> orderDetails) {
		this.orderDetails = orderDetails;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
