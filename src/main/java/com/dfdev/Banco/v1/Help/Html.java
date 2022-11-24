package com.dfdev.Banco.v1.Help;

public class Html {

    public static String htmlEmailTemplate(String token, String code){
        String url= "http://localhost:8080/verify?token=" + token + "&code=" + code;
        String emailTemplate= "";

        return "";
    }

}
