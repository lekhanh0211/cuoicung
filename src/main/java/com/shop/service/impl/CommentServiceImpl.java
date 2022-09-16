package com.shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.impl.CommentDAOImpl;
import com.shop.entities.Comment;
import com.shop.service.CommentService;

@Service
public class CommentServiceImpl implements CommentService {
	@Autowired
	private CommentDAOImpl commentDAOImpl;

	@Override
	public boolean insert(Comment cmt) {
		// TODO Auto-generated method stub
		return commentDAOImpl.insert(cmt);
	}

	@Override
	public boolean edit(Comment cmt) {
		// TODO Auto-generated method stub
		return commentDAOImpl.edit(cmt);
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return commentDAOImpl.delete(id);
	}

	@Override
	public Comment getById(int id) {
		// TODO Auto-generated method stub
		return commentDAOImpl.getById(id);
	}

	@Override
	public List<Comment> getByName(String name) {
		// TODO Auto-generated method stub
		return commentDAOImpl.getByName(name);
	}

	@Override
	public List<Comment> getAll() {
		// TODO Auto-generated method stub
		return commentDAOImpl.getAll();
	}

	@Override
	public List<Comment> getCommentById(int pro_id) {
		// TODO Auto-generated method stub
		return commentDAOImpl.getCommentById(pro_id);
	}

}
