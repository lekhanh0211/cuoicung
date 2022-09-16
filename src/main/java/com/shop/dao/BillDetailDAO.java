package com.shop.dao;

import java.util.List;

import com.shop.entities.BillDetail;

public interface BillDetailDAO {

	boolean insert(BillDetail bld);

	boolean edit(BillDetail bld);

	boolean delete(int id);

	BillDetail getById(int id);

	List<BillDetail> getAll();
}
