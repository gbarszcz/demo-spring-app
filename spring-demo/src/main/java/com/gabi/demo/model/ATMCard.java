package com.gabi.demo.model;

import com.gabi.demo.Card;

public class ATMCard implements Card {
    @Override
    public String cardDetails() {
        return "ATM Card has been issued successfully";
    }
}
