package com.gabi.demo;

import com.gabi.demo.model.CreditCard;
import com.gabi.demo.model.CurrentAccount;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Scope;

public class BankAppConfig {

    @Bean
    public CreditCard creditCard() {
        return new CreditCard();
    }

    @Bean(initMethod = "onInit", destroyMethod = "onDestroy")
    @Scope("prototype")
    public CurrentAccount currentAccount() {
        return new CurrentAccount();
    }
}
