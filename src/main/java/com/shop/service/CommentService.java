package com.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.entities.Comment;

@Service
public interface CommentService {
	@Autowired
	boolean insert(Comment cmt);

	boolean edit(Comment cmt);

	boolean delete(int id);

	Comment getById(int id);

	List<Comment> getByName(String name);

	List<Comment> getAll();

	List<Comment> getCommentById(int pro_id);
}
