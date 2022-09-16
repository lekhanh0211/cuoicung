package com.shop.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shop.dao.ProductDAO;
import com.shop.entities.Product;

@Repository
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public boolean insert(Product pro) {
		// TODO Auto-generated method stub
		Session ss = sessionFactory.openSession();
		try {
			ss.beginTransaction();
			ss.save(pro);
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
	public boolean edit(Product pro) {
		// TODO Auto-generated method stub
		Session ss = sessionFactory.openSession();
		try {
			ss.beginTransaction();
			ss.update(pro);
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
	public Product getById(long id) {
		// TODO Auto-generated method stub
		Session ss = sessionFactory.openSession();
		ss.beginTransaction();

		Product pro = ss.get(Product.class, id);

		ss.getTransaction().commit();
		ss.close();

		return pro;
	}

	@Override
	public List<Product> getAll() {
		// TODO Auto-generated method stub
		Session ss = sessionFactory.openSession();
		try {
			List list = ss.createQuery("from Product").list();
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
	public List<Product> getProductById(int cat_id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			List lst = session.createQuery("from Product where cat_id= :cat_id").setParameter("cat_id", cat_id).list();
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
	public List<Product> getByName(String name) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		try {
			if (name == null || name.length() == 0) {
				name = "%";
			} else {
				name = "%" + name + "%";
			}
			List lst = session.createQuery("from Product where name like :name").setParameter("name", name).list();
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
	public List<Product> getListProductPerPage(Integer offset, Integer maxResult) {
		// TODO Auto-generated method stub
		Session ss = sessionFactory.openSession();
		try {
			ss.beginTransaction();
			List list = ss.createQuery("from Product").setFirstResult(offset).setMaxResults(maxResult).list();
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
	public Long getTotalProduct() {
		// TODO Auto-generated method stub
		Session ss = sessionFactory.openSession();
		try {
			ss.beginTransaction();
			List list = ss.createQuery("from Product").list();
			ss.getTransaction().commit();
			if (list != null)
				return (long) list.size();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			ss.getTransaction().rollback();
		} finally {
			ss.close();
		}
		return 0L;
	}

}
