package com.web.youtotwo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.web.youtotwo.entity.Dictionary;

public interface DictionaryRepository extends JpaRepository <Dictionary, Integer> {
	
	Dictionary findByTerm(String term);
	@Query("FROM Dictionary WHERE term = ?1")
	List <Dictionary> findIt(String term);
	
}

