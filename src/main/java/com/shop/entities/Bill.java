package com.shop.entities;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "bill")
public class Bill {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "cus_id")
	private int cus_id;

	@Column(name = "address")
	private String address;

	@Column(name = "message")
	private String message;

	@Column(name = "total_price")
	private Float total_price;

	@Column(name = "status")
	private boolean status;

	@Column(name = "created")
	private Date created;

	@ManyToOne
	@JoinColumn(name = "cus_id", referencedColumnName = "id", insertable = false, updatable = false)
	private Customer objCus;

	@OneToMany(mappedBy = "objBill")
	private List<BillDetail> lsbilldetail;

	public Bill() {
		// TODO Auto-generated constructor stub
	}

	public Bill(int id, int cus_id, String address, String message, Float total_price, boolean status, Date created,
			Customer objCus, List<BillDetail> lsbilldetail) {
		super();
		this.id = id;
		this.cus_id = cus_id;
		this.address = address;
		this.message = message;
		this.total_price = total_price;
		this.status = status;
		this.created = created;
		this.objCus = objCus;
		this.lsbilldetail = lsbilldetail;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCus_id() {
		return cus_id;
	}

	public void setCus_id(int cus_id) {
		this.cus_id = cus_id;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Float getTotal_price() {
		return total_price;
	}

	public void setTotal_price(Float total_price) {
		this.total_price = total_price;
	}

	public boolean getStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public Date getCreated() {
		return created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	public Customer getObjCus() {
		return objCus;
	}

	public void setObjCus(Customer objCus) {
		this.objCus = objCus;
	}

	public List<BillDetail> getLsbilldetail() {
		return lsbilldetail;
	}

	public void setLsbilldetail(List<BillDetail> lsbilldetail) {
		this.lsbilldetail = lsbilldetail;
	}

}
