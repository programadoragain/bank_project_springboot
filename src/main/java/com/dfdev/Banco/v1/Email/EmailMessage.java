package com.dfdev.Banco.v1.Email;

import com.dfdev.Banco.v1.Configuration.EmailConfiguration;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

public class EmailMessage {
    public static void htmlEmailMessage(String from, String to, String subject, String body) throws MessagingException {
        JavaMailSender sender= EmailConfiguration.getMailConfig();

        MimeMessage message= sender.createMimeMessage();

        MimeMessageHelper htmlMessage= new MimeMessageHelper(message, true);
        htmlMessage.setTo(to);
        htmlMessage.setFrom(from);
        htmlMessage.setSubject(subject);
        htmlMessage.setText(body, true);

        sender.send(message);
    }
}
