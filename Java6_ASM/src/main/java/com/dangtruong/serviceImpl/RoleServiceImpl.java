package com.dangtruong.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dangtruong.dao.RoleDAO;
import com.dangtruong.entity.Role;
import com.dangtruong.service.RoleService;

@Service
public class RoleServiceImpl implements RoleService{

    @Autowired
    RoleDAO dao; 

    @Override
    public List<Role> findAll() {
        return dao.findAll();
    }
    
}
