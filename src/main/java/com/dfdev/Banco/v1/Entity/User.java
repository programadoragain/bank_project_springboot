package com.dfdev.Banco.v1.Entity;

import java.time.LocalDate;
import java.time.LocalDateTime;

public class User {
    private int id;
    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private String token;
    private String code;
    private int verified;
    private LocalDate verifiedAt;
    private LocalDateTime createdAt;

}
