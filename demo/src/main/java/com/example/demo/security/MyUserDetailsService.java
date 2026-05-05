package com.example.demo.security;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.example.demo.model.User;
import com.example.demo.repository.UserRepository;

@Service
public class MyUserDetailsService implements UserDetailsService {
	Logger logger = LoggerFactory.getLogger(MyUserDetailsService.class);

	@Autowired
	UserRepository userRepository;

	private User user;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		String email = username;
		user = userRepository.findByEmail(email);

		logger.info("<=== MyUserDetailSetvice: User from Repository ===>" + user.getEmail());

		MyUserDetails myUserDetails = null;
		if (user != null) {
			myUserDetails = new MyUserDetails();
			myUserDetails.setUser(user);

			logger.info("<=== My USer Detail ===>" + myUserDetails);
		} else {
			throw new UsernameNotFoundException("USER DOES NOT EXISTS");
		}

		return myUserDetails;
	}

}