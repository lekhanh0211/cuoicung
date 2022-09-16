package com.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.entities.Category;

@Service
public interface CategoryService {
	@Autowired
	boolean insert(Category cat);

	boolean edit(Category cat);

	boolean delete(int id);

	Category getById(int id);

	List<Category> getByName(String name);

	List<Category> getAll();

	List<Category> getCateByProduct(int id);
}
