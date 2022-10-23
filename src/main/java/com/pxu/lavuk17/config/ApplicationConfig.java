package com.pxu.lavuk17.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import com.pxu.lavuk17.repository.ProductRepository;
import com.pxu.lavuk17.repository.impl.ProductRepositoryImpl;
import com.pxu.lavuk17.service.ProductService;
import com.pxu.lavuk17.service.impl.ProductServiceImpl;

@EnableWebMvc
@Configuration
@ComponentScan(basePackages = { "com.pxu.lavuk17" })
public class ApplicationConfig {

	@Bean
	public InternalResourceViewResolver viewResolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setViewClass(JstlView.class);
		viewResolver.setPrefix("/WEB-INF/views/");
		viewResolver.setSuffix(".jsp");
		return viewResolver;
	}

	@Bean
	public ProductRepository productRepository() {
		return new ProductRepositoryImpl();
	}

	@Bean
	public ProductService productService() {
		return new ProductServiceImpl();
	}

}
