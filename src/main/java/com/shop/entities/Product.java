package com.shop.entities;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "product")
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private long id;

	@Column(name = "cat_id")
	private int cat_id;

	@Column(name = "name")
	private String name;

	@Column(name = "price")
	private float price;

	@Column(name = "status")
	private boolean status;

	@Column(name = "description")
	private String description;

	@Column(name = "content")
	private String content;

	@Column(name = "image_link")
	private String image_link;

	@Column(name = "created")
	private Date created;

	@ManyToOne
	@JoinColumn(name = "cat_id", referencedColumnName = "id", insertable = false, updatable = false)
	private Category objCate;

	@OneToMany(mappedBy = "objPro", fetch = FetchType.EAGER)
	private List<Comment> listCmt;

	public Product() {
		// TODO Auto-generated constructor stub
	}

	public Product(long id, int cat_id, String name, float price, boolean status, String description, String content,
			String image_link, Date created, Category objCate, List<Comment> listCmt) {
		super();
		this.id = id;
		this.cat_id = cat_id;
		this.name = name;
		this.price = price;
		this.status = status;
		this.description = description;
		this.content = content;
		this.image_link = image_link;
		this.created = created;
		this.objCate = objCate;
		this.listCmt = listCmt;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public int getCat_id() {
		return cat_id;
	}

	public void setCat_id(int cat_id) {
		this.cat_id = cat_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getImage_link() {
		return image_link;
	}

	public void setImage_link(String image_link) {
		this.image_link = image_link;
	}

	public Date getCreated() {
		return created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	public Category getObjCate() {
		return objCate;
	}

	public void setObjCate(Category objCate) {
		this.objCate = objCate;
	}

	public List<Comment> getListCmt() {
		return listCmt;
	}

	public void setListCmt(List<Comment> listCmt) {
		this.listCmt = listCmt;
	}

}
