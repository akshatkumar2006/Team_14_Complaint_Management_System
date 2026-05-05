package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Dept;

public interface DeptService {

	boolean isUserNameExist(String userName);

	boolean isValidDept(String email, String pass);

	boolean isEmailExist(String email);

	Dept getFirstName(String email);

	public List<Dept> getDepartments();

	Dept getDepartmentById(int deptId);

}