package com.example.demo.security;

import java.util.Collection;
import java.util.Collections;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.example.demo.model.Dept;

public class MyDeptDetails implements UserDetails {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Dept dept;

	public MyDeptDetails() {

	}

	public MyDeptDetails(Dept dept) {
		this.dept = dept;
	}

	public Dept getDept() {
		return dept;
	}

	public void setDept(Dept dept) {
		this.dept = dept;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		SimpleGrantedAuthority authority = new SimpleGrantedAuthority(dept.getRole());
		return Collections.singletonList(authority);
	}

	@Override
	public String getPassword() {
		return dept.getPassword();
	}

	@Override
	public String getUsername() {
		return dept.getEmail();
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
