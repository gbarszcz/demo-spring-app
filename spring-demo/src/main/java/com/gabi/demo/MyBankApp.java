package com.gabi.demo;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

@SpringBootApplication
public class MyBankApp {

    private static ApplicationContext context;

    public static void main(String[] args) {
//        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        // BASICS
        /*Account account = context.getBean("savingAccount", Account.class);
        System.out.println(account.createAccount());
        System.out.println(account.cardDetails());
        Account account2 = context.getBean("currentAccount", Account.class);
        System.out.println(account2.createAccount());
        System.out.println(account2.cardDetails());*/

        // SCOPES
//        Account account = context.getBean("currentAccount", Account.class);
//        Account account2 = context.getBean("currentAccount", Account.class);
//        System.out.println("account == account2 : " + Boolean.toString(account == account2));
//        System.out.println("account.hashCode() == account2.hashCode() : " + Boolean.toString(account.hashCode() == account2.hashCode()));

        //LIFECYCLE
//        Account account = context.getBean("currentAccount", Account.class);
//        System.out.println(account.createAccount());
//        System.out.println(account.cardDetails());
//
//        context.close();

        // ANNOTATIONS
        context = new AnnotationConfigApplicationContext(BankAppConfig.class);
        Account account = context.getBean("currentAccount", Account.class);
        System.out.println(account.createAccount());
        System.out.println(account.cardDetails());


//        SpringApplication.run(MyBankApp.class, args);
    }
}
