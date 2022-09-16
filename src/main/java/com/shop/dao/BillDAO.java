package com.shop.dao;

import java.util.List;

import com.shop.entities.Bill;

public interface BillDAO {
	boolean insert(Bill bill);

	boolean edit(Bill bill);

	boolean delete(int id);

	Bill getById(int id);

	List<Bill> getAll();

}
