package com.dangtruong.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.dangtruong.entity.Product;

public interface ProductService {
	List<Product> findAll();

	Product findById(Integer id);

	List<Product> findByCategoryId(String id);
	
	<T> Page<T> findAllBy0(Pageable pageable);
	
	<T> Page<T> findAllByCategory(Optional<String> id, Pageable pageable);
	
	<T> Page<T> findAll(Pageable pageable);

	Product create(Product product);
	
	Product update(Product product);

	void delete(Integer Id);

}
