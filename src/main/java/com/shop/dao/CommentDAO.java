package com.shop.dao;

import java.util.List;

import com.shop.entities.Comment;

public interface CommentDAO {
	boolean insert(Comment cmt);

	boolean edit(Comment cmt);

	boolean delete(int id);

	Comment getById(int id);

	List<Comment> getByName(String name);

	List<Comment> getAll();

	List<Comment> getCommentById(int pro_id);
}
