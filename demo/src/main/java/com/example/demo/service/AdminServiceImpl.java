package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Admin;
import com.example.demo.model.Dept;
import com.example.demo.repository.AdminRepository;
import com.example.demo.repository.DeptRepository;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	AdminRepository adminRepository;

	@Autowired
	DeptRepository deptRepository;

	@Override
	public boolean isUserNameExist(String userName) {
		Admin admin = adminRepository.findByUserName(userName);
		if (admin != null)
			return true;
		return false;
	}

	@Override
	public boolean isValidAdmin(String email, String pass) {
		Admin admin = adminRepository.findByEmail(email);
		String admin_repo_email = admin.getEmail();
		String admin_repo_pass = admin.getPassword();

		if (admin_repo_email.trim().equalsIgnoreCase(email) && admin_repo_pass.equals(pass))
			return true;
		return false;
	}

	@Override
	public void saveDepartment(Dept dept) {
		deptRepository.save(dept);
	}

	@Override
	public boolean isDepartmentExists(String deptName) {
		Dept dept = deptRepository.findByDeptName(deptName);
		if (dept != null)
			return true;
		return false;
	}

	@Override
	public List<Dept> getAllDepartments() {
		return deptRepository.findAll();
	}

	@Override
	public Dept getDepartment(int deptId) {
		return deptRepository.findById(deptId);
	}

	@Override
	public boolean isEmailExist(String email) {
		Admin admin = adminRepository.findByEmail(email);
		if (admin != null)
			return true;
		return false;
	}

	@Override
	public Admin getAdminByEmail(String email) {
		return adminRepository.findByEmail(email);
	}

}
