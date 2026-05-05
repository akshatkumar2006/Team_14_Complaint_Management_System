package com.example.demo.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
@Order(3)
public class DeptSecurityConfiguration extends WebSecurityConfigurerAdapter {
	@Autowired
	UserDetailsService myDeptDetailsService;

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(myDeptDetailsService).passwordEncoder(encodePassword());
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable();

		http.authorizeRequests().antMatchers("/").permitAll();

		http.authorizeRequests().antMatchers("/dept").hasAuthority("DEPARTMENT").and().formLogin()
				.loginPage("/dept/login").loginProcessingUrl("/dept/checkDept").defaultSuccessUrl("/dept/dashboard")
				.permitAll().and().logout().logoutUrl("/dept/logout").logoutSuccessUrl("/");
	}

	@Bean
	public BCryptPasswordEncoder encodePassword() {
		return new BCryptPasswordEncoder();
	}
}

/*
 * http.authorizeHttpRequests().antMatchers("/user/**").permitAll().anyRequest()
 * .authenticated() .and().formLogin() .loginPage("/user/login");
 */