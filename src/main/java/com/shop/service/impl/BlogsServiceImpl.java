package com.shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.impl.BlogsDAOImpl;
import com.shop.entities.Blogs;
import com.shop.service.BlogsService;

@Service
public class BlogsServiceImpl implements BlogsService {
	@Autowired
	private BlogsDAOImpl blogsDAOImpl;

	@Override
	public boolean insert(Blogs bl) {
		// TODO Auto-generated method stub
		return blogsDAOImpl.insert(bl);
	}

	@Override
	public boolean edit(Blogs bl) {
		// TODO Auto-generated method stub
		return blogsDAOImpl.edit(bl);
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return blogsDAOImpl.delete(id);
	}

	@Override
	public Blogs getById(int id) {
		// TODO Auto-generated method stub
		return blogsDAOImpl.getById(id);
	}

	@Override
	public List<Blogs> getByName(String name) {
		// TODO Auto-generated method stub
		return blogsDAOImpl.getByName(name);
	}

	@Override
	public List<Blogs> getAll() {
		// TODO Auto-generated method stub
		return blogsDAOImpl.getAll();
	}

}
