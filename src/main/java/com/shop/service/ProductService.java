package com.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.entities.Product;

@Service
public interface ProductService {
	@Autowired

	boolean insert(Product pro);

	boolean edit(Product pro);

	boolean delete(int id);

	Product getById(long id);

	List<Product> getAll();

	List<Product> getProductById(int cat_id);

	List<Product> getByName(String name);

	List<Product> getListProductPerPage(Integer offset, Integer maxResult);

	Long getTotalProduct();
}
