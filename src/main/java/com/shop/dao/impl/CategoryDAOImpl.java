package com.shop.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shop.dao.CategoryDAO;
import com.shop.entities.Category;

@Repository
public class CategoryDAOImpl implements CategoryDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public boolean insert(Category cat) {
		// TODO Auto-generated method stub
		Session ss = sessionFactory.openSession();
		try {
			ss.beginTransaction();
			ss.save(cat);
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
	public boolean edit(Category cat) {
		// TODO Auto-generated method stub
		Session ss = sessionFactory.openSession();
		try {
			ss.beginTransaction();
			ss.update(cat);
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
	public Category getById(int id) {
		// TODO Auto-generated method stub
		Session ss = sessionFactory.openSession();
		ss.beginTransaction();

		Category cat = ss.get(Category.class, id);

		ss.getTransaction().commit();
		ss.close();

		return cat;
	}

	@Override
	public List<Category> getByName(String name) {
		// TODO Auto-generated method stub
		Session ss = sessionFactory.openSession();
		ss.beginTransaction();
		try {
			if (name == null || name.length() == 0) {
				name = "%";
			} else {
				name = "%" + name + "%";
			}
			List list = ss.createQuery("from Category where name like :name").setParameter("name", name).list();
			ss.getTransaction().commit();
			return list;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			ss.getTransaction().rollback();
		} finally {
			ss.close();
		}
		return null;
	}

	@Override
	public List<Category> getAll() {
		// TODO Auto-generated method stub
		Session ss = sessionFactory.openSession();
		try {
			List list = ss.createQuery("from Category").list();
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
	public List<Category> getCateByProduct(int id) {
		// TODO Auto-generated method stub
		return null;
	}

}
