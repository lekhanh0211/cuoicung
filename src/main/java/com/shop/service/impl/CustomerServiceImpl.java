package com.shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.impl.CustomerDAOImpl;
import com.shop.entities.Customer;
import com.shop.service.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	private CustomerDAOImpl customerDAOImpl;

	@Override
	public boolean insert(Customer cus) {
		// TODO Auto-generated method stub
		return customerDAOImpl.insert(cus);
	}

	@Override
	public boolean edit(Customer cus) {
		// TODO Auto-generated method stub
		return customerDAOImpl.edit(cus);
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return customerDAOImpl.delete(id);
	}

	@Override
	public Customer getById(int id) {
		// TODO Auto-generated method stub
		return customerDAOImpl.getById(id);
	}

	@Override
	public List<Customer> getByName(String name) {
		// TODO Auto-generated method stub
		return customerDAOImpl.getByName(name);
	}

	@Override
	public List<Customer> getAll() {
		// TODO Auto-generated method stub
		return customerDAOImpl.getAll();
	}

	@Override
	public Customer checkLogin(String username, String password) {
		// TODO Auto-generated method stub
		return customerDAOImpl.checkLogin(username, password);
	}

}
