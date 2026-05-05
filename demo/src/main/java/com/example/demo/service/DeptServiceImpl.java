package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Dept;
import com.example.demo.repository.DeptRepository;

@Service
public class DeptServiceImpl implements DeptService {
	@Autowired
	DeptRepository deptRepository;

	@Override
	public boolean isUserNameExist(String userName) {
		return true;
	}

	@Override
	public boolean isValidDept(String email, String pass) {
		Dept dept = deptRepository.findByEmail(email);
		String dept_repo_email = dept.getEmail();
		String dept_repo_pass = dept.getPassword();

		if (dept_repo_email.trim().equalsIgnoreCase(email) && dept_repo_pass.equals(pass))
			return true;
		return false;
	}

	@Override
	public boolean isEmailExist(String email) {
		Dept dept = deptRepository.findByEmail(email);
		if (dept != null)
			return true;
		return false;
	}

	@Override
	public Dept getFirstName(String email) {
		return deptRepository.findByEmail(email);
	}

	@Override
	public List<Dept> getDepartments() {
		return deptRepository.findAll();
	}

	@Override
	public Dept getDepartmentById(int deptId) {
		return deptRepository.findById(deptId);
	}

}
