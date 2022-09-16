package com.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.entities.Blogs;

@Service
public interface BlogsService {
	@Autowired
	boolean insert(Blogs bl);

	boolean edit(Blogs bl);

	boolean delete(int id);

	Blogs getById(int id);

	List<Blogs> getByName(String name);

	List<Blogs> getAll();
}
