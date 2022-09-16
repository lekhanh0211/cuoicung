package com.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.entities.Customer;

@Service
public interface CustomerService {
	@Autowired
	boolean insert(Customer cus);

	boolean edit(Customer cus);

	boolean delete(int id);

	Customer getById(int id);

	List<Customer> getByName(String name);

	List<Customer> getAll();

	Customer checkLogin(String username, String password);
}
