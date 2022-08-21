package com.dangtruong.rest.controller;

import org.springframework.web.bind.annotation.RequestMapping;

import com.dangtruong.entity.Role;
import com.dangtruong.service.RoleService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/roles")
public class RoleRestController {
    @Autowired
    RoleService roleService;

    @GetMapping
    public List<Role> getAll(){
        return roleService.findAll();
    }
}
