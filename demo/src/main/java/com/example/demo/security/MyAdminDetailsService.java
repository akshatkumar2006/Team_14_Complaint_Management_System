package com.example.demo.security;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.example.demo.model.Admin;
import com.example.demo.repository.AdminRepository;

@Service
public class MyAdminDetailsService implements UserDetailsService {
	Logger logger = LoggerFactory.getLogger(MyAdminDetailsService.class);

	@Autowired
	AdminRepository adminRepository;

	private Admin admin;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		String email = username;
		admin = adminRepository.findByEmail(email);
		logger.info("<=== MyUserDetailSetvice: User from Repository ===>" + admin.getEmail());

		MyAdminDetails myAdminDetails = null;
		if (admin != null) {
			myAdminDetails = new MyAdminDetails();
			myAdminDetails.setAdmin(admin);

			logger.info("<=== My USer Detail ===>" + myAdminDetails);
		} else {
			throw new UsernameNotFoundException("ADMIN DOES NOT EXISTS");
		}

		return myAdminDetails;
	}
}
