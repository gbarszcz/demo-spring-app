package com.gabi.bankapp.controllers;

import com.gabi.bankapp.model.Account;
import com.gabi.bankapp.services.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@Controller
public class AccountController {

    @Autowired
    AccountService accountService;

    @InitBinder
    public void initBinder(WebDataBinder dataBinder) {
        StringTrimmerEditor ste = new StringTrimmerEditor(true);
        dataBinder.registerCustomEditor(String.class, ste);
    }

    @RequestMapping(value = {"", "/"})
    public String showHomePage() {
        return "index";
    }

    @RequestMapping("/newAccount")
    public String newAccount(Model model) {
        model.addAttribute("account", new Account());
        return "account-form";
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

    @RequestMapping(value = "/saveAccount", method = RequestMethod.POST)
    public String saveAccount(@Valid Account account, BindingResult result, Model model) {
        // Commented out due to using validations
        /*model.addAttribute("account", account);
        return "showAccount";*/
        if (result.hasErrors()) {
            return "account-form";
        } else {
            String message = "";
            boolean flag;
            try {
                flag = accountService.saveAccount(account);
            }
            catch (Exception ex) {
                message = ex.getMessage();
                flag = false;
            }
            if (!flag) {
                model.addAttribute("message", message);
                return "account-form";
            }
            model.addAttribute("account", account);
            return "redirect:/list";
        }
    }

    @GetMapping("/list")
    public String listAccounts(Model model) {
        List<Account> accounts = accountService.getAccounts();
        model.addAttribute("accounts", accounts);
        return "listAccounts";
    }

    @GetMapping("/edit")
    public String updateAccount(@RequestParam("accountNumber") int accountNumber, Model model) {
        Account account = accountService.getAccount(accountNumber);
        model.addAttribute("account", account);
        return "account-form";
    }

    @GetMapping("/delete")
    public String deleteAccount(@RequestParam("accountNumber") int accountNumber, Model model) {
        boolean deleted = accountService.deleteAccount(accountNumber);
        model.addAttribute("accountNumber", accountNumber);
        return "deletedAccount";
    }
}