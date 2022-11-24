package com.dfdev.Banco.v1.Email;

import org.springframework.context.annotation.Bean;

import java.util.UUID;

public class Token {

    public static String generateToken(){
        String token= UUID.randomUUID().toString();

        return token;
    }

}
