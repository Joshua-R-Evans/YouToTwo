package com.web.youtotwo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.web.youtotwo.entity.Users;

public interface UsersRepository extends JpaRepository<Users, Long> {
	
	Users findByEmail(String email);
	@Query("FROM Users WHERE lname = ?1 OR fname = ?1")
	List<Users> findByName(String lname);
	
	@Query("FROM Users WHERE lname = ?1 AND email = ?2")
	List<Users> findByNameOrEmail(String name, String email);
	
}
