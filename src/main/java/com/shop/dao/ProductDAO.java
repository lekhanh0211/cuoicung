package com.shop.dao;

import java.util.List;

import com.shop.entities.Product;

public interface ProductDAO {
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
