package com.dfdev.Banco.v1.Service;

import com.dfdev.Banco.v1.Entity.User;
import com.dfdev.Banco.v1.Repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    public void registerUser(User user){
        userRepository.save(user);
    }
}
