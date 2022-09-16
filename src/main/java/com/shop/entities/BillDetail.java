package com.shop.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "bill_detail")
public class BillDetail {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "pro_id")
	private int pro_id;

	@Column(name = "bill_id")
	private int bill_id;

	@Column(name = "quantity")
	private int quantity;

	@ManyToOne
	@JoinColumn(name = "bill_id", referencedColumnName = "id", insertable = false, updatable = false)
	private Customer objBill;

	@ManyToOne
	@JoinColumn(name = "pro_id", referencedColumnName = "id", insertable = false, updatable = false)
	private Customer objProduct;

	public BillDetail() {
		// TODO Auto-generated constructor stub
	}

	public BillDetail(int id, int pro_id, int bill_id, int quantity, Customer objBill, Customer objProduct) {
		super();
		this.id = id;
		this.pro_id = pro_id;
		this.bill_id = bill_id;
		this.quantity = quantity;
		this.objBill = objBill;
		this.objProduct = objProduct;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getPro_id() {
		return pro_id;
	}

	public void setPro_id(int pro_id) {
		this.pro_id = pro_id;
	}

	public int getBill_id() {
		return bill_id;
	}

	public void setBill_id(int bill_id) {
		this.bill_id = bill_id;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public Customer getObjBill() {
		return objBill;
	}

	public void setObjBill(Customer objBill) {
		this.objBill = objBill;
	}

	public Customer getObjProduct() {
		return objProduct;
	}

	public void setObjProduct(Customer objProduct) {
		this.objProduct = objProduct;
	}

}
