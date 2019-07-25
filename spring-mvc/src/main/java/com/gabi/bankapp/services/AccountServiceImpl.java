package com.gabi.bankapp.services;

import com.gabi.bankapp.dao.AccountDAO;
import com.gabi.bankapp.model.Account;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class AccountServiceImpl implements AccountService {

    @Autowired
    AccountDAO accountDAO;

    @Override
    @Transactional
    public boolean saveAccount(Account account) {
        return accountDAO.saveAccount(account);
    }

    @Override
    @Transactional
    public List<Account> getAccounts() {
        return accountDAO.getAccounts();
    }

    @Override
    @Transactional
    public Account getAccount(Integer accountNumber) {
        return accountDAO.getAccount(accountNumber);
    }

    @Override
    @Transactional
    public boolean deleteAccount(Integer accountNumber) {
        return accountDAO.deleteAccount(accountNumber);
    }
}
