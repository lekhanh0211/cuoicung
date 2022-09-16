package com.shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.impl.ProductDAOImpl;
import com.shop.entities.Product;
import com.shop.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDAOImpl productDAOImpl;

	@Override
	public boolean insert(Product pro) {
		// TODO Auto-generated method stub
		return productDAOImpl.insert(pro);
	}

	@Override
	public boolean edit(Product pro) {
		// TODO Auto-generated method stub
		return productDAOImpl.edit(pro);
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return productDAOImpl.delete(id);
	}

	@Override
	public Product getById(long id) {
		// TODO Auto-generated method stub
		return productDAOImpl.getById(id);
	}

	@Override
	public List<Product> getAll() {
		// TODO Auto-generated method stub
		return productDAOImpl.getAll();
	}

	@Override
	public List<Product> getProductById(int cat_id) {
		// TODO Auto-generated method stub
		return productDAOImpl.getProductById(cat_id);
	}

	@Override
	public List<Product> getByName(String name) {
		// TODO Auto-generated method stub
		return productDAOImpl.getByName(name);
	}

	@Override
	public List<Product> getListProductPerPage(Integer offset, Integer maxResult) {
		// TODO Auto-generated method stub
		return productDAOImpl.getListProductPerPage(offset, maxResult);
	}

	@Override
	public Long getTotalProduct() {
		// TODO Auto-generated method stub
		return productDAOImpl.getTotalProduct();
	}

}
