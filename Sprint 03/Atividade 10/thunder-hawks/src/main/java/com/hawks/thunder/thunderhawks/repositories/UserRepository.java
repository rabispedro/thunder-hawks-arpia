package com.hawks.thunder.thunderhawks.repositories;

import com.hawks.thunder.thunderhawks.entities.User;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
	
}
