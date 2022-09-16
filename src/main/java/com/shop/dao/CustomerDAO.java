package com.shop.dao;

import java.util.List;

import com.shop.entities.Customer;

public interface CustomerDAO {
	boolean insert(Customer cus);

	boolean edit(Customer cus);

	boolean delete(int id);

	Customer getById(int id);

	List<Customer> getByName(String name);

	List<Customer> getAll();

	Customer checkLogin(String username, String password);
}
