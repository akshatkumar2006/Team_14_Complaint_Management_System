package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Dept;

@Repository
public interface DeptRepository extends JpaRepository<Dept, Integer> {

	// Meaning: SELECT * FROM DEPT WHERE USERNAME = username
	// Dept findByUserName(String username);

	// Meaning: SELECT * FROM DEPT WHERE EMAIL = email
	Dept findByEmail(String email);

	Dept findByDeptName(String deptName);

	Dept findById(int id);

}
