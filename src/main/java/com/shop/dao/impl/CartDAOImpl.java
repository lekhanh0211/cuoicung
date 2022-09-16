package com.shop.dao.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shop.dto.CartDto;
import com.shop.entities.Product;

@Repository
public class CartDAOImpl {
	@Autowired
	ProductDAOImpl productDAOImpl;

	public HashMap<Long, CartDto> AddCart(long id, HashMap<Long, CartDto> cart) {
		CartDto item = new CartDto();
		Product pro = productDAOImpl.getById(id);
		if (pro != null && cart.containsKey(id)) {// chưa tồn tại sp hoặc đã có sp
			item = cart.get(id);
			item.setQuantity(item.getQuantity() + 1);
			item.setTotalPrice(item.getQuantity() * item.getProduct().getPrice());
		} else {
			item.setProduct(pro);// thêm vao sp
			item.setQuantity(1); // thêm 1 sp
			item.setTotalPrice(pro.getPrice()); // lấy ra giá sp
		}
		cart.put(id, item);// đẩy thông tin vao cart
		return cart;
	}

	public HashMap<Long, CartDto> editCart(long id, int quantity, HashMap<Long, CartDto> cart) {
		CartDto item = new CartDto();
		if (cart == null) {
			return cart;
		}
		if (cart.containsKey(id)) {
			item = cart.get(id); // trả về sp tương ứng
			item.setQuantity(quantity); // set lai gt so lg
			float total = quantity * item.getProduct().getPrice();
			item.setTotalPrice(total); // set lai gia tien
		}
		cart.put(id, item);
		return cart;
	}

	public HashMap<Long, CartDto> deleteCart(long id, HashMap<Long, CartDto> cart) {
		if (cart == null) { // neu ma cart rong thi tra ve luon
			return cart;
		}
		if (cart.containsKey(id)) { // nếu mà cart tồn tại id này remove
			cart.remove(id);
		}
		return cart;
	}

	public int totalQuantity(HashMap<Long, CartDto> cart) {// đi qua từng sp r cộng sl lại
		int totalQuantity = 0;
		for (Map.Entry<Long, CartDto> item : cart.entrySet()) {
			totalQuantity += item.getValue().getQuantity();
		}
		return totalQuantity;
	}

	public float totalPrice(HashMap<Long, CartDto> cart) {
		float totalPrice = 0;
		for (Map.Entry<Long, CartDto> item : cart.entrySet()) {
			totalPrice += item.getValue().getTotalPrice();

		}
		return totalPrice;
	}
}
