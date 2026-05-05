package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.User;
import com.example.demo.repository.DeptRepository;
import com.example.demo.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {
	// Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);

	@Autowired
	private UserRepository userRepository;

	@Autowired
	DeptRepository deptRepository;

	@Override
	public User saveUser(User user) {
		return userRepository.save(user);
	}

	@Override
	public boolean isValidUser(String email, String userPass) {
		User user = userRepository.findByEmail(email);
		String user_email = user.getEmail();
		String password = user.getPassword();

		if (user_email.trim().equalsIgnoreCase(email) && password.equals(userPass))
			return true;
		return false;
	}

	@Override
	public boolean isUserNameExist(String userName) {
		User user = userRepository.findByUserName(userName);
		if (user != null)
			return true;
		return false;
	}

	@Override
	public boolean isEmailExist(String email) {
		User user = userRepository.findByEmail(email);
		if (user != null)
			return true;
		return false;
	}

	@Override
	public User getFirstName(String email) {
		return userRepository.findByEmail(email);
	}

	@Override
	public User getUserByEmail(String email) {
		return userRepository.findByEmail(email);
	}

}
