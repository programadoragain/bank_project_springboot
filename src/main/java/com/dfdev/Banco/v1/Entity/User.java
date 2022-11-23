package com.dfdev.Banco.v1.Entity;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.time.LocalDate;
import java.time.LocalDateTime;
@Entity
@Table(name = "user")
@Data
public class User {
    @Id @GeneratedValue(strategy =  GenerationType.IDENTITY)
    private int id;
    @NotEmpty(message = "Este campo no puede quedar vacio.")
    @Size(min = 3, max = 50, message = "")
    @Column(name = "first_name")
    private String firstName;
    @NotEmpty(message = "Este campo no puede quedar vacio.")
    @Size(min = 3, max = 50, message = "")
    private String lastName;
    @Email @NotEmpty(message = "Este campo no puede quedar vacio.")
    @Pattern(regexp = "^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", message = "Formato de correo invalido.")
    @Size(min = 6, max = 200, message = "")
    @Column(unique = true)
    private String email;
    @NotEmpty(message = "Este campo no puede quedar vacio.")
    @Size(min = 6, max = 30, message = "La contraseña debe tener entre 6 y 30 caracteres.")
    private String password;
    @NotEmpty(message = "Este campo no puede quedar vacio.")
    @Transient
    private String confirmPassword;
    private String token;
    private String code;
    private int verified;
    @Column(name = "verified_at")
    private LocalDate verifiedAt;
    @Column(name = "created_at")
    private LocalDateTime createdAt;
    @Column(name = "updated_at")
    private LocalDateTime updateAt;
}
