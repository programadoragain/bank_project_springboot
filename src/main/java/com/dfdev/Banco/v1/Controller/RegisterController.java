package com.dfdev.Banco.v1.Controller;

import com.dfdev.Banco.v1.Entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;

@Controller
public class RegisterController {

    @GetMapping("/register")
    public ModelAndView getRegister() {
        ModelAndView getPage= new ModelAndView("register");
        getPage.addObject("PageTitle", "Register");
        return getPage;
    }

    @PostMapping("register")
    public ModelAndView setRegister(@Valid @ModelAttribute("registerUser") @RequestBody User user, BindingResult result){
        ModelAndView getPage= new ModelAndView("register");

        if (result.hasErrors()) return getPage;

        return getPage;
    }
}
