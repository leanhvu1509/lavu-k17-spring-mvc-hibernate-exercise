package com.pxu.lavuk17.service;

import java.util.List;

import com.pxu.lavuk17.model.Product;

public interface ProductService {

	void save(Product product);

	Product findById(int id);

	List<Product> findAll();

}
