package com.gabi.bankapp.services;

import com.gabi.bankapp.model.Account;

import java.util.List;

public interface AccountService {
    boolean saveAccount(Account account);
    List<Account> getAccounts();
    Account getAccount(Integer accountNumber);
}
