package com.gabi.bankapp.controllers;

import com.gabi.bankapp.model.Account;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/account")
public class AccountController {

    @RequestMapping("/")
    public String showHomePage() {
        return "index";
    }

    @RequestMapping("/newAccount")
    public String newAccount(Model model) {
        model.addAttribute("account", new Account());
        return "newAccount";
    }

    @RequestMapping("/showAccount")
    public String showAccount() {
        return "showAccount";
    }

    // Commented out due to a simplified version below
/*    @RequestMapping(value="/saveAccount", method = RequestMethod.POST)
    public String saveAccount(Model model,
                              @RequestParam("accountNumber") String accountNumber,
                              @RequestParam("accountHolderName") String accountHolderName,
                              @RequestParam("accountBalance") String accountBalance) {
        Account account = new Account(Integer.parseInt(accountNumber), accountHolderName, Integer.parseInt(accountBalance));
        model.addAttribute("account", account);
        return "showAccount";
    }*/

    @RequestMapping(value="/saveAccount", method = RequestMethod.POST)
    public String saveAccount(Model model, Account account) {
        model.addAttribute("account", account);
        return "showAccount";
    }
}
