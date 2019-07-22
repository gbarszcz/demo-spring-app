package com.gabi.bankapp.dao;

import com.gabi.bankapp.entity.AccountEntity;
import com.gabi.bankapp.model.Account;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class AccountDAOImpl implements AccountDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public boolean saveAccount(Account account) {
        boolean saveFlag = true;
        AccountEntity accountEntity = new AccountEntity();
        accountEntity.setAccountNumber(account.getAccountNumber());
        accountEntity.setAccountHolderName(account.getAccountHolderName());
        accountEntity.setAccountBalance(account.getAccountBalance());
        accountEntity.setDateOfBirth(account.getDateOfBirth());
        accountEntity.setPsCode(account.getPsCode());

        try {
            Session currentSession = sessionFactory.getCurrentSession();
            currentSession.save(accountEntity);
        }
        catch (Exception ex) {
            ex.printStackTrace();
            saveFlag = false;
        }
        return saveFlag;
    }

    @Override
    public List<Account> getAccounts() {
        List<Account> list = new ArrayList<>();
        try {
            Session session = sessionFactory.getCurrentSession();
            Query<AccountEntity> query = session.createQuery("From AccountEntity", AccountEntity.class);
            List<AccountEntity> accounts = query.getResultList();
            for (AccountEntity accountEntity : accounts) {
                Account account = new Account();
                account.setAccountBalance(accountEntity.getAccountBalance());
                account.setAccountHolderName(accountEntity.getAccountHolderName());
                account.setAccountNumber(accountEntity.getAccountNumber());
                account.setAccountType(accountEntity.getAccountType());
                account.setDateOfBirth(accountEntity.getDateOfBirth());
                account.setPsCode(accountEntity.getPsCode());
                list.add(account);
            }
        }
        catch (Exception ex) {
            ex.printStackTrace();
        }
        
        return list;
    }
}
