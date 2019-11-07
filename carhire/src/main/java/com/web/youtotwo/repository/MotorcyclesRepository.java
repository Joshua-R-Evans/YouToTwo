package com.web.youtotwo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.web.youtotwo.entity.Motorcycles;

public interface MotorcyclesRepository extends JpaRepository <Motorcycles, Long> {
	
	Motorcycles findByModel(String model);
	@Query("FROM Motorcycles WHERE type = ?1 OR make = ?1 OR model = ?1 OR model = ?1 OR size = ?1 OR seat = ?1")
	List <Motorcycles> findBike(String type, String make, String model, int size, int seat);
	
	@Query("FROM Motorcycles WHERE type = ?1 AND level <= ?2 AND seat <= ?3")
	List <Motorcycles> calculateAnswers(String type, int level, int seat);	
	
}


