package com.dangtruong.rest.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.dangtruong.entity.Authority;
import com.dangtruong.service.AuthorityService;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/authorities")
public class AuthorityRestController {
    @Autowired
    AuthorityService authorityService;

    @GetMapping
    public List<Authority> findAll(@RequestParam("admin") Optional<Boolean> admin){
        if(admin.orElse(false)){
            return authorityService.findAuthoritiesOfAdministrator();
        }
        return authorityService.findAll();
    }

    @PostMapping
    public Authority post(@RequestBody Authority auth){
        return authorityService.create(auth);
    }

    @DeleteMapping("{id}")
    public void delete(@PathVariable("id") Integer id){
        authorityService.delete(id);
    }
}
