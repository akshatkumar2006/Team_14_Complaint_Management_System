package com.example.demo.security;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.example.demo.model.Dept;
import com.example.demo.repository.DeptRepository;

@Service
public class MyDeptDetailsService implements UserDetailsService {
	Logger logger = LoggerFactory.getLogger(MyDeptDetailsService.class);

	@Autowired
	DeptRepository deptRepository;

	private Dept dept;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		String email = username;
		dept = deptRepository.findByEmail(email);
		logger.info("<=== MyUserDetailSetvice: Department from Repository ===>" + dept.getEmail());

		MyDeptDetails myDeptDetails = null;
		if (dept != null) {
			myDeptDetails = new MyDeptDetails();
			myDeptDetails.setDept(dept);

			logger.info("<=== My Dept Detail ===>" + myDeptDetails);
		} else {
			throw new UsernameNotFoundException("DEPTARTMENT DOES NOT EXISTS");
		}

		return myDeptDetails;
	}
}
