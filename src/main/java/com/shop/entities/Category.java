package com.shop.entities;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "")
public class Category {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "name")
	private String name;

	@OneToMany(mappedBy = "objCate")
	private List<Product> listPro;

	public Category() {
		// TODO Auto-generated constructor stub
	}

	public Category(int id, String name, List<Product> listPro) {
		super();
		this.id = id;
		this.name = name;
		this.listPro = listPro;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Product> getListPro() {
		return listPro;
	}

	public void setListPro(List<Product> listPro) {
		this.listPro = listPro;
	}

}
