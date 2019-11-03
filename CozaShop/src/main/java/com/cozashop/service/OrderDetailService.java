package com.cozashop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cozashop.entities.OrderDetails;
import com.cozashop.repository.OrderDetailReoisitory;

@Service
public class OrderDetailService {

	@Autowired
	OrderDetailReoisitory orderDetailReoisitory;
	
	public List<OrderDetails> findAll(){
		return orderDetailReoisitory.findAll();
	}
	
	public List<OrderDetails> finByid(int id){
		return orderDetailReoisitory.finorder(id);
	}
	public OrderDetails save(OrderDetails orderDetail) {
		return orderDetailReoisitory.save(orderDetail);
	}
}
