package com.dangtruong.service;

import java.util.List;

import com.dangtruong.entity.Account;

public interface AccountService {
    Account findById(String username);

    List<Account> findAll();

    List<Account> getAdministrators();

    Account create(Account account);
}
