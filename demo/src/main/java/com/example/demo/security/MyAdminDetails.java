package com.example.demo.security;

import java.util.Collection;
import java.util.Collections;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.example.demo.model.Admin;

public class MyAdminDetails implements UserDetails {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Admin admin;

	public MyAdminDetails() {

	}

	public MyAdminDetails(Admin admin) {
		this.admin = admin;
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		SimpleGrantedAuthority authority = new SimpleGrantedAuthority(admin.getRole());
		return Collections.singletonList(authority);
	}

	@Override
	public String getPassword() {
		return admin.getPassword();
	}

	@Override
	public String getUsername() {
		return admin.getEmail();
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

}

/*
 * @Override public String toString() { return "MyUserDetails [email=" +
 * user.getEmail() + ", password=" + user.getPassword() + ", username=" +
 * user.getUserName() + ", role=" + user.getRole() + "]"; }
 */
