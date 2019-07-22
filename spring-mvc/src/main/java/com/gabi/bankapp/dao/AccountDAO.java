package com.gabi.bankapp.dao;

import com.gabi.bankapp.model.Account;

import java.util.List;

public interface AccountDAO {
    boolean saveAccount(Account account);
    List<Account> getAccounts();
}
