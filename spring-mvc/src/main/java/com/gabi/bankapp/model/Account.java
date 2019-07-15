package com.gabi.bankapp.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.*;
import java.util.Date;

public class Account {
    @NotNull(message="Account # cannot be blank")
    private Integer accountNumber;

    @NotNull(message="Account Holder name cannot be blank")
    @Size(min=2, max=50, message="Invalid length for Account Holder Name")
    @Pattern(regexp = "[A-Za-z(\\s)]+", message = "Invalid Account Holder Name")
    private String accountHolderName;

    @NotNull(message="Account Balance is required")
    @Min(value=5000, message="Minimum balance must not be less than 5000")
    private Integer accountBalance;

    @NotNull(message="Account Type cannot be null")
    private String accountType;

    @DateTimeFormat(pattern="dd/MM/yyyy")
    @NotNull(message="Date of Birth cannot be null")
    @Past(message = "Account can't be created for a person not born")
    private Date dateOfBirth;

    @NotNull(message="PS code is required")
    private String psCode;

    public Account() {
        accountBalance = 0;
        dateOfBirth = new Date();
    }

    public Account(Integer accountNumber,
                   String accountHolderName,
                   Integer accountBalance,
                   String accountType,
                   Date dateOfBirth,
                   String psCode) {
        this.accountNumber = accountNumber;
        this.accountHolderName = accountHolderName;
        this.accountBalance = accountBalance;
        this.accountType = accountType;
        this.dateOfBirth = dateOfBirth;
        this.psCode = psCode;
    }

    public Integer getAccountNumber() {
        return accountNumber;
    }

    public void setAccountNumber(Integer accountNumber) {
        this.accountNumber = accountNumber;
    }

    public String getAccountHolderName() {
        return accountHolderName;
    }

    public void setAccountHolderName(String accountHolderName) {
        this.accountHolderName = accountHolderName;
    }

    public Integer getAccountBalance() {
        return accountBalance;
    }

    public void setAccountBalance(Integer accountBalance) {
        this.accountBalance = accountBalance;
    }

    public String getAccountType() {
        return accountType;
    }

    public void setAccountType(String accountType) {
        this.accountType = accountType;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getPsCode() {
        return psCode;
    }

    public void setPsCode(String psCode) {
        this.psCode = psCode;
    }
}
