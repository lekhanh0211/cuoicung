package com.shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.impl.BillDAOImpl;
import com.shop.entities.Bill;
import com.shop.service.BillService;

@Service
public class BillServiceImpl implements BillService {
	@Autowired
	private BillDAOImpl billDAOImpl;

	@Override
	public boolean insert(Bill bill) {
		// TODO Auto-generated method stub
		return billDAOImpl.insert(bill);
	}

	@Override
	public boolean edit(Bill bill) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return billDAOImpl.delete(id);
	}

	@Override
	public Bill getById(int id) {
		// TODO Auto-generated method stub
		return billDAOImpl.getById(id);
	}

	@Override
	public List<Bill> getAll() {
		// TODO Auto-generated method stub
		return billDAOImpl.getAll();
	}
}
