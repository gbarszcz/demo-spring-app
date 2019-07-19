package com.gabi.bankapp.dao;

import com.gabi.bankapp.entity.AccountEntity;
import com.gabi.bankapp.model.Account;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
}
