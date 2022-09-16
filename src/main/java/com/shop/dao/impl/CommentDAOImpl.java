package com.shop.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shop.dao.CommentDAO;
import com.shop.entities.Comment;

@Repository
public class CommentDAOImpl implements CommentDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public boolean insert(Comment cmt) {
		// TODO Auto-generated method stub
		Session ss = sessionFactory.openSession();
		try {
			ss.beginTransaction();
			ss.save(cmt);
			ss.getTransaction().commit();
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			ss.getTransaction().rollback();
		} finally {
			ss.close();
		}
		return false;
	}

	@Override
	public boolean edit(Comment cmt) {
		// TODO Auto-generated method stub
		Session ss = sessionFactory.openSession();
		try {
			ss.beginTransaction();
			ss.update(cmt);
			ss.getTransaction().commit();
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			ss.getTransaction().rollback();
		} finally {
			ss.close();
		}
		return false;
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		Session ss = sessionFactory.openSession();
		try {
			ss.beginTransaction();
			ss.delete(getById(id));
			ss.getTransaction().commit();
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			ss.getTransaction().rollback();
		} finally {
			ss.close();
		}
		return false;
	}

	@Override
	public Comment getById(int id) {
		// TODO Auto-generated method stub
		Session ss = sessionFactory.openSession();
		ss.beginTransaction();

		Comment cmt = ss.get(Comment.class, id);

		ss.getTransaction().commit();
		ss.close();

		return cmt;
	}

	@Override
	public List<Comment> getByName(String name) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		try {
			if (name == null || name.length() == 0) {
				name = "%";
			} else {
				name = "%" + name + "%";
			}
			List lst = session.createQuery("from Comment where name like :name").setParameter("name", name).list();
			session.getTransaction().commit();
			return lst;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			session.getTransaction().rollback();
		} finally {
			session.close();
		}
		return null;
	}

	@Override
	public List<Comment> getAll() {
		// TODO Auto-generated method stub
		Session ss = sessionFactory.openSession();
		try {
			List list = ss.createQuery("from Comment").list();
			return list;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			ss.close();
		}
		return null;
	}

	@Override
	public List<Comment> getCommentById(int pro_id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			List lst = session.createQuery("from Comment where pro_id= :pro_id").setParameter("pro_id", pro_id).list();
			session.getTransaction().commit();
			return lst;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			session.getTransaction().rollback();
		} finally {
			session.close();
		}
		return null;
	}

}
