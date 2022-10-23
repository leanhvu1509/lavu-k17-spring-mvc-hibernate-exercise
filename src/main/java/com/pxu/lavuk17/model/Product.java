package com.pxu.lavuk17.model;

public class Product {

	private int id;
	private String code;
	private String name;
	private float price;

	public Product() {
		super();
	}

	public Product(int id, String code, String name, float price) {
		super();
		this.id = id;
		this.code = code;
		this.name = name;
		this.price = price;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
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

}
