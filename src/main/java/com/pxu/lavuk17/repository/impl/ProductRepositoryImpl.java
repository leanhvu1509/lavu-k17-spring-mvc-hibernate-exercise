package com.pxu.lavuk17.repository.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.pxu.lavuk17.model.Product;
import com.pxu.lavuk17.repository.ProductRepository;

public class ProductRepositoryImpl implements ProductRepository{

	private static final Map<Integer, Product> products;

	static {
		products = new HashMap<Integer, Product>();
		products.put(1, new Product(1, "Ip", "Iphone 10", 1000));
		products.put(2, new Product(2, "OP", "Oppo 10", 600));
		products.put(3, new Product(3, "SS", "Samsum 10", 1100));
		products.put(4, new Product(4, "Ip", "Iphone 13", 1500));
	}

	@Override
	public List<Product> findAll() {
		return new ArrayList<>(products.values());
	}

	@Override
	public Product findById(int id) {
		return products.get(id);
	}

	@Override
	public void save(Product product) {
		products.put(product.getId(), product);
	}

	@Override
	public void deleteById(int id) {
		products.remove(id);
	}

}
