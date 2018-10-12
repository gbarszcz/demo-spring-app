package com.gabi.demo.model;

import com.gabi.demo.Card;

public class CreditCard implements Card {
    @Override
    public String cardDetails() {
        return "Credit card has been issued.";
    }
}
