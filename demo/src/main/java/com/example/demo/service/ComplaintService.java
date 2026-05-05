package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Complaint;

public interface ComplaintService {

	Complaint registerComplaint(Complaint complaint);

	List<Complaint> getComplaintsByUserId(int id);

	List<Complaint> getComplaintByDeptId(Integer deptId);

	Complaint getComplaintById(int comId);

	void deleteComplaintById(int comId);

}
