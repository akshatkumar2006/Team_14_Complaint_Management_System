package com.example.demo.service;

import com.example.demo.model.User;

public interface UserService {

	public User saveUser(User user);

	public boolean isValidUser(String userName, String pass);

	public boolean isUserNameExist(String userName);

	public boolean isEmailExist(String email);

	public User getFirstName(String userName);

	public User getUserByEmail(String email);

}
