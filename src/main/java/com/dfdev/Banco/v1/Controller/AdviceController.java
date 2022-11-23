package com.dfdev.Banco.v1.Controller;

import com.dfdev.Banco.v1.Entity.User;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

@ControllerAdvice
public class AdviceController {

    @ModelAttribute("registerUser")
    public User getUserDefault(){
        return new User();
    }

}
