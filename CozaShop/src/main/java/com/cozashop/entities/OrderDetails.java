package com.cozashop.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "orderdetails")
public class OrderDetails implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id", referencedColumnName = "id", insertable = false, updatable = false)
	private Product product;

	@ManyToOne
	@JoinColumn(name = "id", referencedColumnName = "id",  insertable = false, updatable = false)
	private Order order;

	private int quantity;
	private float Total;

	public OrderDetails() {
		super();
	}

	public OrderDetails(Product product, Order order, int quantity, float total) {
		super();
		this.product = product;
		this.order = order;
		this.quantity = quantity;
		Total = total;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public float getTotal() {
		return Total;
	}

	public void setTotal(float total) {
		Total = total;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
