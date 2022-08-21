package com.dangtruong.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dangtruong.dao.AccountDAO;
import com.dangtruong.dao.AuthorityDAO;
import com.dangtruong.entity.Account;
import com.dangtruong.entity.Authority;
import com.dangtruong.service.AuthorityService;

@Service
public class AuthorityImpl implements AuthorityService{
    
    @Autowired
    AuthorityDAO dao;

    @Autowired
    AccountDAO acdao;

    @Override
    public List<Authority> findAll() {
        return dao.findAll();
    }

    @Override
    public Authority create(Authority auth) {
        return dao.save(auth);
    }

    @Override
    public void delete(Integer id) {
        dao.deleteById(id);        
    }

    @Override
    public List<Authority> findAuthoritiesOfAdministrator() {
        List<Account> accounts = acdao.getAdministrators();
        return dao.authoritiesOf(accounts);
    }
}
