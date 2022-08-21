package com.dangtruong.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dangtruong.dao.AccountDAO;
import com.dangtruong.entity.Account;
import com.dangtruong.service.AccountService;

@Service
public class AccountServiceImpl implements AccountService {

    @Autowired
    AccountDAO dao;
    @Override
    public Account findById(String username) {
        return dao.findById(username).get();
    }
    @Override
    public List<Account> findAll() {
        return dao.findAll();
    }
    @Override
    public List<Account> getAdministrators() {
        return dao.getAdministrators();
    }
    @Override
    public Account create(Account account) {
        // TODO Auto-generated method stub
        return dao.save(account);
    }
    
}
