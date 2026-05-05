package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Complaint;

@Repository
public interface ComplaintRepository extends JpaRepository<Complaint, Integer> {

	List<Complaint> findByUserId(int id);

	List<Complaint> findByDeptId(int deptId);

	Complaint findById(int comId);

}
