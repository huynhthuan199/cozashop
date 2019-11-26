package com.cozashop.entities;

public class QuantityProduct {

	private String idproduct;
	private String nameproduct;
	private String imageproduct;
	private int quantity;
	private double total;
	
	
	
	public QuantityProduct() {
		super();
	}
	public QuantityProduct(String idproduct, String nameproduct, String imageproduct, int quantity,double total) {
		super();
		this.idproduct = idproduct;
		this.nameproduct = nameproduct;
		this.imageproduct = imageproduct;
		this.quantity = quantity;
		this.total = total;
	}
	
	
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	public String getIdproduct() {
		return idproduct;
	}
	public void setIdproduct(String idproduct) {
		this.idproduct = idproduct;
	}
	public String getNameproduct() {
		return nameproduct;
	}
	public void setNameproduct(String nameproduct) {
		this.nameproduct = nameproduct;
	}
	public String getImageproduct() {
		return imageproduct;
	}
	public void setImageproduct(String imageproduct) {
		this.imageproduct = imageproduct;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	
}
