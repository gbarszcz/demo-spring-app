package com.gabi.bankapp.dao;

import com.gabi.bankapp.model.Account;

public interface AccountDAO {
    boolean saveAccount(Account account);
    
}
