package com.shop.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "comment")
public class Comment {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "pro_id")
	private int pro_id;

	@Column(name = "name")
	private String name;

	@Column(name = "email")
	private String email;

	@Column(name = "content")
	private String content;

	@Column(name = "created")
	private Date created;

	@ManyToOne
	@JoinColumn(name = "pro_id", referencedColumnName = "id", insertable = false, updatable = false)
	private Product objPro;

	public Comment() {
		// TODO Auto-generated constructor stub
	}

	public Comment(int id, int pro_id, String name, String email, String content, Date created, Product objPro) {
		super();
		this.id = id;
		this.pro_id = pro_id;
		this.name = name;
		this.email = email;
		this.content = content;
		this.created = created;
		this.objPro = objPro;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreated() {
		return created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	public Product getObjPro() {
		return objPro;
	}

	public void setObjPro(Product objPro) {
		this.objPro = objPro;
	}

}
