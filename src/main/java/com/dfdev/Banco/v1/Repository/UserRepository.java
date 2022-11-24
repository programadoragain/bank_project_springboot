package com.dfdev.Banco.v1.Repository;

import com.dfdev.Banco.v1.Entity.User;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public interface UserRepository extends CrudRepository<User, Integer> {
    /**
    @Modifying
    @Query(value = "INSERT INTO users (first_name, last_name, email, password, token, code) VALUES " +
    "(:firsName, :lastName, :email, :password, :token, :code)", nativeQuery = true)
    **/
}
