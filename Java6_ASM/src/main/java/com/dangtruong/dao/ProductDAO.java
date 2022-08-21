package com.dangtruong.dao;

import com.dangtruong.entity.Product;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ProductDAO extends JpaRepository<Product, Integer> {

    @Query("SELECT p FROM Product p WHERE p.category.id =?1")
    List<Product> findByCategory(String id);
    
	@Query("SELECT o FROM Product o ")
	<T> Page<T> findAllBy0(Pageable pageable);
	
	@Query("SELECT p FROM Product p WHERE p.category.id =?1")
	<T> Page<T> findAllByCategory(String id, Pageable pageable);
	
}
