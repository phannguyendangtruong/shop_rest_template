package com.dangtruong.serviceImpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.dangtruong.dao.ProductDAO;
import com.dangtruong.entity.Product;
import com.dangtruong.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	ProductDAO pdao;

	@Override
	public List<Product> findAll() {
		
		return pdao.findAll();
	}

	@Override
	public Product findById(Integer id) {
		return pdao.findById(id).get();
	}

	@Override
	public List<Product> findByCategoryId(String id) {
		return pdao.findByCategory(id);
	}

	@Override
	public <T> Page<T> findAllBy0(Pageable pageable) {
		return pdao.findAllBy0(pageable);
	}

	@Override
	public <T> Page<T> findAllByCategory(Optional<String>id, Pageable pageable) {
		return pdao.findAllByCategory(id.get(), pageable);
	}

	@Override
	public <T> Page<T> findAll(Pageable pageable) {
		// TODO Auto-generated method stub
		return (Page<T>) pdao.findAll(pageable);
	}

	@Override
	public Product create(Product product) {
		return pdao.save(product);
	}

	@Override
	public Product update(Product product) {
		return pdao.save(product);
	}

	@Override
	public void delete(Integer Id) {
		pdao.deleteById(Id);
	}

	
}
