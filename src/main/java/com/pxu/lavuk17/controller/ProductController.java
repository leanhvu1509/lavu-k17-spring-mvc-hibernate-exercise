package com.pxu.lavuk17.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pxu.lavuk17.model.Product;
import com.pxu.lavuk17.service.ProductService;

@Controller
@RequestMapping("/products")
public class ProductController {

	@Autowired
	private ProductService productService;

	@GetMapping("")
	public String list(Model model) {
		model.addAttribute("title", "Product List");
		model.addAttribute("products", productService.findAll());
		return "product/list";
	}

	@GetMapping("/{id}")
	public String getOne(@PathVariable("id") int id, Model model) {
		model.addAttribute("title", "Product Detail");
		model.addAttribute("product", productService.findById(id));
		return "product/view";
	}

	@GetMapping("/new")
	public String showCreateForm(Model model) {
		model.addAttribute("title", "Create Product");
		model.addAttribute("product", new Product());
		return "product/create";
	}

	@PostMapping("/new")
	public String create(@ModelAttribute("product") Product product, Model model) {
		int id = (int) (Math.random() * 1000);
		product.setId(id);

		productService.save(product);
		model.addAttribute("message", "Create successfully!");
		model.addAttribute("prodcut", new Product());
		return "product/create";
	}
}
