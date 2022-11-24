package com.dfdev.Banco.v1.Controller;

import com.dfdev.Banco.v1.Email.EmailMessage;
import com.dfdev.Banco.v1.Email.Token;
import com.dfdev.Banco.v1.Entity.User;
import com.dfdev.Banco.v1.Help.Html;
import com.dfdev.Banco.v1.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.servlet.ModelAndView;

import javax.mail.MessagingException;
import javax.validation.Valid;
import java.util.Random;

@Controller
public class RegisterController {

    @Autowired
    private UserService userService;

    @GetMapping("/register")
    public ModelAndView getRegister() {
        ModelAndView getPage= new ModelAndView("register");
        getPage.addObject("PageTitle", "Register");
        return getPage;
    }

    @PostMapping("register")
    public ModelAndView setRegister(@Valid @ModelAttribute("registerUser") @RequestBody User user, BindingResult result) throws MessagingException {
        ModelAndView getPage= new ModelAndView("register");

        if (result.hasErrors()) return getPage;

        if (!user.getPassword().equals(user.getConfirmPassword())) {
            getPage.addObject("passwordMissMatch", "Las contraseñas no coinciden");
            return getPage;
        }

        String token= Token.generateToken();
        Random random= new Random();
        int code= random.nextInt(456);

        String emailBody= Html.htmlEmailTemplate(token, user.getCode());

        //String hashPassword= BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());

        userService.registerUser(user);

        EmailMessage.htmlEmailMessage("no-reply@tubanco.com", user.getEmail(), "Verificación de cuenta", emailBody);

        return getPage;
    }
}
