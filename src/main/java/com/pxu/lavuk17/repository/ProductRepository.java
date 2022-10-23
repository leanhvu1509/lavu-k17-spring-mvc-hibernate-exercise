package com.pxu.lavuk17.repository;

import java.util.List;

import com.pxu.lavuk17.model.Product;

public interface ProductRepository {

	void deleteById(int id);

	void save(Product product);

	Product findById(int id);

	List<Product> findAll();

}
