package com.dangtruong.dao;

import org.aspectj.apache.bcel.util.Repository;
import org.springframework.data.jpa.repository.JpaRepository;

import com.dangtruong.entity.Role;

public interface RoleDAO extends JpaRepository<Role, String> {
    
}
