package com.dfdev.Banco.v1;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@SpringBootApplication
public class BancoV1Application {
	public static void main(String[] args) {
		SpringApplication.run(BancoV1Application.class, args);
	}
}
