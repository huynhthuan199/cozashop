package com.cozashop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cozashop.entities.Order;
import com.cozashop.repository.OrderRepository;

@Service
public class OrderService {
	
	@Autowired
	OrderRepository orderRepository;

	
	public List<Order> findAll() {
		return orderRepository.findAll();
	}
	
	public Order save(Order order) {
		return orderRepository.save(order);
	}
	
	public Order finById(int id) {
		return orderRepository.findById(id).get();
	}
	
	public int updateStatusOrder(boolean enabled,int id) {
		return orderRepository.updateStatusOrder(enabled,id);
	}
	public double totalOrder(boolean enabled) {
		return orderRepository.total(enabled);
	}
	
	public int orderEnabled(boolean enabled) {
		return orderRepository.orderEnabled(enabled);
	}
	
	public List<String> FindMonthTotal() {
		return orderRepository.FindMonthTotal();
	}
}
