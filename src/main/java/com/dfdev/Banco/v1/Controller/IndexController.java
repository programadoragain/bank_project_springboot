package com.dfdev.Banco.v1.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {
    /**
    @GetMapping("/")
    public String getIndex(){
        return "index";
    }
    **/
    @GetMapping("/")
    public ModelAndView getIndex() {
        ModelAndView getPage= new ModelAndView("index");
        getPage.addObject("PageTitle", "Home");
        return getPage;
    }

    @GetMapping("/login")
    public ModelAndView getLogin() {
        ModelAndView getPage= new ModelAndView("login");
        getPage.addObject("PageTitle", "Login");
        return getPage;
    }

    @GetMapping("/error")
    public ModelAndView getError() {
        ModelAndView getPage= new ModelAndView("error");
        getPage.addObject("PageTitle", "Error");
        return getPage;
    }

    @GetMapping("/dashboard")
    public ModelAndView getDashboard() {
        ModelAndView getPage= new ModelAndView("dashboard");
        getPage.addObject("PageTitle", "Dashboard");
        return getPage;
    }

    @GetMapping("/verify")
    public ModelAndView getVerify() {
        ModelAndView getPage= new ModelAndView("verify");
        getPage.addObject("PageTitle", "Verify");
        return getPage;
    }

}
