package com.cozashop.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "gift")
public class Gift extends BaseEntity  implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private double money;
	private String code;

	public Gift(int id, String name, String code) {
		super();
		this.id = id;
		this.name = name;
		this.code = code;
	}
	public Gift(int id, String name,double money, String code,Date date, boolean enalbed) {
		super();
		this.id = id;
		this.name = name;
		this.money = money;
		this.code = code;
		this.enabled = enalbed;
		this.createAt = date;
	}
	
	public Gift(String name,double money, String code,Date date, boolean enalbed) {
		super();
		this.name = name;
		this.money = money;
		this.code = code;
		this.enabled = enalbed;
		this.createAt = date;
	}
	
	
	

	public Gift() {
		super();
	}
	public double getMoney() {
		return money;
	}

	public void setMoney(double money) {
		this.money = money;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

}
