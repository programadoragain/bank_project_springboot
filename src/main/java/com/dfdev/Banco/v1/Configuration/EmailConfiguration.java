package com.dfdev.Banco.v1.Configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.mail.javamail.JavaMailSenderImpl;

import java.util.Properties;

public class EmailConfiguration {
    @Bean
    public static JavaMailSenderImpl getMailConfig(){
        JavaMailSenderImpl emailConfig= new JavaMailSenderImpl();

        Properties properties= emailConfig.getJavaMailProperties();
        properties.put("mail.transport.protocol", "smtp");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.debug", "true");

        emailConfig.setHost("localhost");
        emailConfig.setPort(25);
        emailConfig.setUsername("no-reply@tubanco.com");
        emailConfig.setPassword("clavetest123");

        return emailConfig;
    }
}
