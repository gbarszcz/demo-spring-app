package com.gabi.bankapp.controllers;

import com.gabi.bankapp.model.Account;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
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

    @RequestMapping(value="/saveAccount", method = RequestMethod.POST)
    public String saveAccount(Model model, HttpServletRequest request) {
        String accountNumber = request.getParameter("accountNumber");
        String accountHolderName = request.getParameter("accountHolderName");
        String accountBalance = request.getParameter("accountBalance");

/*        model.addAttribute("accountNo", accountNumber);
        model.addAttribute("accountOwnerName", accountHolderName);
        model.addAttribute("accountBalance", accountBalance);*/

        Account account = new Account(Integer.parseInt(accountNumber), accountHolderName, Integer.parseInt(accountBalance));
        model.addAttribute("account", account);
        return "showAccount";
    }
}
