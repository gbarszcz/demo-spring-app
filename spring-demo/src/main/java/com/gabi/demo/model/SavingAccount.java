package com.gabi.demo.model;

import com.gabi.demo.Account;
import com.gabi.demo.Card;
import org.springframework.beans.factory.annotation.Autowired;

public class SavingAccount implements Account {

    @Autowired
    private Card atmCard;

    public SavingAccount(Card card) {
        this.atmCard = card;
    }

    @Override
    public String createAccount() {
        return "Saving account created successfully";
    }

    @Override
    public String cardDetails() {
        return atmCard.cardDetails();
    }
}
