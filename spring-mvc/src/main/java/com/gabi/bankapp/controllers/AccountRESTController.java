package com.gabi.bankapp.controllers;

import com.gabi.bankapp.model.Account;
import com.gabi.bankapp.services.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value="/account")
public class AccountRESTController {

    @Autowired
    private AccountService accountService;

    //@ResponseBody - automatically put to every method by @RestController 
    @PostMapping("/")
    public ResponseEntity<Account> getAccount(@RequestBody Account account) {
        Account accnt = accountService.getAccount(account.getAccountNumber());
        if (accnt == null) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(accnt, HttpStatus.OK);
    }
}
