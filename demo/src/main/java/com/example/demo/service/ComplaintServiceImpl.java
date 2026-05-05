package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Complaint;
import com.example.demo.repository.ComplaintRepository;

@Service
public class ComplaintServiceImpl implements ComplaintService {

	@Autowired
	ComplaintRepository complaintRepository;

	@Override
	public Complaint registerComplaint(Complaint complaint) {
		return complaintRepository.save(complaint);
	}

	@Override
	public List<Complaint> getComplaintsByUserId(int id) {
		return complaintRepository.findByUserId(id);
	}

	@Override
	public List<Complaint> getComplaintByDeptId(Integer deptId) {
		return complaintRepository.findByDeptId(deptId);
	}

	@Override
	public Complaint getComplaintById(int comId) {
		return complaintRepository.findById(comId);
	}

	@Override
	public void deleteComplaintById(int comId) {
		Integer id = comId;
		complaintRepository.deleteById(id);
	}
}
