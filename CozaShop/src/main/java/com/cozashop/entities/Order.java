package com.cozashop.entities;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "orders")
public class Order extends BaseEntity  implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7299273142778938132L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private double totalmoney;
	
	
	@JsonIgnore
	@OneToMany(mappedBy = "order")
	private Collection<OrderDetails> orderDetails;

	@ManyToOne
	@JoinColumn(name = "customerid" ,referencedColumnName = "id")
    private Customer customer;
	
	

	public Order() {
		super();
	}

	public Order( double totalmoney, Customer customer,Date createAt, boolean enabled) {
		super();
		this.totalmoney = totalmoney;
		this.customer = customer;
		this.createAt = createAt;
		this.enabled = enabled;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public double getTotalmoney() {
		return totalmoney;
	}

	public void setTotalmoney(double totalmoney) {
		this.totalmoney = totalmoney;
	}

	public Collection<OrderDetails> getOrderDetails() {
		return orderDetails;
	}

	public void setOrderDetails(Collection<OrderDetails> orderDetails) {
		this.orderDetails = orderDetails;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}