package com.cozashop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cozashop.entities.Customer;
import com.cozashop.repository.CustomerRepository;

@Service
public class CustomerService {

	@Autowired 
	private CustomerRepository customerRepository;
	
	public List<Customer> findAll(){
		return customerRepository.findAll();
	}
	
	
	public Customer findById(int id){
		return customerRepository.findById(id).get();
	}
	
	public int save(Customer customer){
		return customerRepository.save(customer).getId();
	}
	
	public int update(Customer customer) {
		return customerRepository.updateByCustomer(customer.getUsername(),customer.getPassword(),customer.getName(),customer.getEmail(),customer.getPhone(),customer.getAddress(),customer.isGender(),customer.isEnabled(),customer.getCreateAt(),customer.getId());
	}
	
	public String delete(int id) {
		try {
			customerRepository.deleteById(id);
			return "a";
		}catch(Exception e) {
			return "";
		}		
	}
}
