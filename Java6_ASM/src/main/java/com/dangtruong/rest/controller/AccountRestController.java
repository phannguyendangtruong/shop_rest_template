package com.dangtruong.rest.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.dangtruong.entity.Account;
import com.dangtruong.service.AccountService;

@CrossOrigin("*")
@RestController
public class AccountRestController {
    @Autowired
    AccountService accountService;

    @RequestMapping("/rest/accounts")
    public List<Account> getAccounts(@RequestParam("admin")Optional<Boolean> admin){
        if(admin.orElse(false)){
            return accountService.getAdministrators();
        }
        return accountService.findAll();
    }
}
