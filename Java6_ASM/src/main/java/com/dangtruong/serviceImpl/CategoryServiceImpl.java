package com.dangtruong.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dangtruong.dao.CategoryDAO;
import com.dangtruong.entity.Category;
import com.dangtruong.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService{

    @Autowired
    CategoryDAO cdao;
    @Override
    public List<Category> findAll() {
        return cdao.findAll();
    }
    
}
