package com.gabi.bankapp;

import com.gabi.bankapp.model.Account;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;
import java.util.Set;

import static org.junit.Assert.assertTrue;

@RunWith(SpringRunner.class)
@SpringBootTest
public class TestJava {

    @Test
    public void contextLoads() {
        ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
        Validator validator = factory.getValidator();
        Account account = new Account();
        Set<ConstraintViolation<Account>> constraintViolations = validator.validate(account);
        assertTrue(constraintViolations.size() > 0);
    }

}
