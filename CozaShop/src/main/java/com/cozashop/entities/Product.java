package com.cozashop.entities;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

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
	private String image2;
	private String image3;
	private String shortdescription;
	private String description;

//	@JsonIgnore
	@ManyToOne()
	@JoinColumn(name = "categoryid" ,referencedColumnName = "id")
	private Category category;

	@JsonIgnore
	@OneToMany(mappedBy = "product")
	private Collection<OrderDetails> orderDetails;

	public Product() {
		super();
	}

	public Product(String id, String name, Double price, Double amout, String material, String color, String image1,String image2,String image3,String shortdescription,
			String description, Category category,boolean enabled,Date createAt) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.amout = amout;
		this.material = material;
		this.color = color;
		this.image = image1;
		this.image2 = image2;
		this.image3 = image3;
		this.shortdescription = shortdescription;
		this.description = description;
		this.category = category;
		this.enabled = enabled;
		this.createAt = createAt;
	}
	
	
	public String getShortdescription() {
		return shortdescription;
	}

	public void setShortdescription(String shortdescription) {
		this.shortdescription = shortdescription;
	}

	public String getImage3() {
		return image3;
	}

	public void setImage3(String image3) {
		this.image3 = image3;
	}
	
	public String getImage2() {
		return image2;
	}

	public void setImage2(String image2) {
		this.image2 = image2;
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
	
	public enum ProductField{
		price
	}
}


