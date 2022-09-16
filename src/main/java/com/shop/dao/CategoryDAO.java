package com.shop.dao;

import java.util.List;

import com.shop.entities.Category;

public interface CategoryDAO {
	boolean insert(Category cat);

	boolean edit(Category cat);

	boolean delete(int id);

	Category getById(int id);

	List<Category> getByName(String name);

	List<Category> getAll();

	List<Category> getCateByProduct(int id);
}
