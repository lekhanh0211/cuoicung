package com.shop.service;

import java.util.List;

import com.shop.entities.BillDetail;

public interface BillDetailService {

	boolean insert(BillDetail bld);

	boolean edit(BillDetail bld);

	boolean delete(int id);

	BillDetail getById(int id);

	List<BillDetail> getAll();
}
