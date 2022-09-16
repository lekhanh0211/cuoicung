package com.shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.impl.CategoryDAOImpl;
import com.shop.entities.Category;
import com.shop.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService {
	@Autowired
	private CategoryDAOImpl categoryDAOImpl;

	@Override
	public boolean insert(Category cat) {
		// TODO Auto-generated method stub
		return categoryDAOImpl.insert(cat);
	}

	@Override
	public boolean edit(Category cat) {
		// TODO Auto-generated method stub
		return categoryDAOImpl.edit(cat);
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return categoryDAOImpl.delete(id);
	}

	@Override
	public Category getById(int id) {
		// TODO Auto-generated method stub
		return categoryDAOImpl.getById(id);
	}

	@Override
	public List<Category> getByName(String name) {
		// TODO Auto-generated method stub
		return categoryDAOImpl.getByName(name);
	}

	@Override
	public List<Category> getAll() {
		// TODO Auto-generated method stub
		return categoryDAOImpl.getAll();
	}

	@Override
	public List<Category> getCateByProduct(int id) {
		// TODO Auto-generated method stub
		return categoryDAOImpl.getCateByProduct(id);
	}
}
