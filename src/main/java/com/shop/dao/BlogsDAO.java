package com.shop.dao;

import java.util.List;

import com.shop.entities.Blogs;

public interface BlogsDAO {
	boolean insert(Blogs bl);

	boolean edit(Blogs bl);

	boolean delete(int id);

	Blogs getById(int id);

	List<Blogs> getByName(String name);

	List<Blogs> getAll();
}
