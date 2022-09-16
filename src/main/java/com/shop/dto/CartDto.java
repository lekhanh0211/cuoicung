package com.shop.dto;

import java.util.List;

import com.shop.entities.Item;
import com.shop.entities.Product;

public class CartDto {
	private int id;
	private int quantity;
	private float totalPrice;
	private Product product;
	private List<Item> items;

	public CartDto() {
		// TODO Auto-generated constructor stub
	}

	public CartDto(int id, int quantity, float totalPrice, Product product, List<Item> items) {
		super();
		this.id = id;
		this.quantity = quantity;
		this.totalPrice = totalPrice;
		this.product = product;
		this.items = items;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public float getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(float totalPrice) {
		this.totalPrice = totalPrice;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public List<Item> getItems() {
		return items;
	}

	public void setItems(List<Item> items) {
		this.items = items;
	}

}
