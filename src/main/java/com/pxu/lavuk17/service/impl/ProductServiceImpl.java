package com.pxu.lavuk17.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.pxu.lavuk17.model.Product;
import com.pxu.lavuk17.repository.ProductRepository;
import com.pxu.lavuk17.service.ProductService;

public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductRepository productRepository;

	@Override
	public List<Product> findAll() {
		return productRepository.findAll();
	}

	@Override
	public Product findById(int id) {
		return productRepository.findById(id);
	}

	@Override
	public void save(Product product) {
		productRepository.save(product);
	}
}
