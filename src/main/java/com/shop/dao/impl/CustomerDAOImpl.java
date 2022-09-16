package com.shop.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shop.dao.CustomerDAO;
import com.shop.entities.Customer;

@Repository
public class CustomerDAOImpl implements CustomerDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public boolean insert(Customer cus) {
		// TODO Auto-generated method stub
		Session ss = sessionFactory.openSession();
		try {
			ss.beginTransaction();
			ss.save(cus);
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
	public boolean edit(Customer cus) {
		// TODO Auto-generated method stub
		Session ss = sessionFactory.openSession();
		try {
			ss.beginTransaction();
			ss.save(cus);
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
	public Customer getById(int id) {
		// TODO Auto-generated method stub
		Session ss = sessionFactory.openSession();
		ss.beginTransaction();

		Customer cus = ss.get(Customer.class, id);

		ss.getTransaction().commit();
		ss.close();

		return cus;
	}

	@Override
	public List<Customer> getByName(String name) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		try {
			if (name == null || name.length() == 0) {
				name = "%";
			} else {
				name = "%" + name + "%";
			}
			List lst = session.createQuery("from Customer where name like :name").setParameter("name", name).list();
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
	public List<Customer> getAll() {
		// TODO Auto-generated method stub
		Session ss = sessionFactory.openSession();
		try {
			List list = ss.createQuery("from Customer").list();
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
	public Customer checkLogin(String username, String password) {
		// TODO Auto-generated method stub
		Session ss = sessionFactory.openSession();
		try {
			ss.beginTransaction();
			Customer cus = (Customer) ss.createQuery("From Customer where username= :username AND password= :password")
					.setParameter("username", username).setParameter("password", password).getSingleResult();
			ss.getTransaction().commit();
			return cus;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			ss.getTransaction().rollback();
		} finally {
			ss.close();
		}
		return null;
	}

}
