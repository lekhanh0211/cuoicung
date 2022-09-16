package com.shop.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shop.dao.BillDAO;
import com.shop.entities.Bill;

@Repository
public class BillDAOImpl implements BillDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public boolean insert(Bill bill) {
		// TODO Auto-generated method stub
		Session ss = sessionFactory.openSession();
		try {
			ss.beginTransaction();
			ss.save(bill);
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
	public boolean edit(Bill bill) {
		// TODO Auto-generated method stub
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
	public Bill getById(int id) {
		// TODO Auto-generated method stub
		Session ss = sessionFactory.openSession();
		ss.beginTransaction();

		Bill b = ss.get(Bill.class, id);

		ss.getTransaction().commit();
		ss.close();

		return b;
	}

	@Override
	public List<Bill> getAll() {
		// TODO Auto-generated method stub
		Session ss = sessionFactory.openSession();
		try {
			List list = ss.createQuery("from Bill").list();
			return list;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			ss.close();
		}
		return null;
	}

}
