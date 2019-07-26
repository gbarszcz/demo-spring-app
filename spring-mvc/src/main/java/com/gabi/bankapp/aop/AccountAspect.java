package com.gabi.bankapp.aop;

import com.gabi.bankapp.dao.AccountDAO;
import com.gabi.bankapp.model.Account;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class AccountAspect {

    @Before("execution(* com.gabi.bankapp.dao.AccountDAOImpl.saveAccount(..))")
    public void validateAccount(JoinPoint joinPoint) {
        System.out.println("Method: ValudateAccount is being processed.");
        Object[] args = joinPoint.getArgs();
        Account account = (Account) args[0];
        AccountDAO accountDAO = (AccountDAO) joinPoint.getTarget();
        int accountNumber = account.getAccountNumber();
        if (accountDAO.getAccount(accountNumber) != null) {
            throw new RuntimeException("Account with account number " + accountNumber + " already exists");
        }
    }
}
