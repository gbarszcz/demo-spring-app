package com.gabi.demo.model;

import com.gabi.demo.Account;
import com.gabi.demo.Card;
import org.springframework.beans.factory.annotation.Autowired;

public class CurrentAccount implements Account {

    @Autowired
    private Card creditCard;

    public void setCreditCard(Card creditCard) {
        this.creditCard = creditCard;
    }

    @Override
    public String createAccount() {
        return "Current account created successfully";
    }

    @Override
    public String cardDetails() {
        return this.creditCard.cardDetails();
    }

    public void onInit() {
        System.out.println("onInit method of CurrentAccount has been invoked");
    }

    public void onDestroy() {
        System.out.println("onDestroy method of CurrentAccount has been invoked");
    }


}
