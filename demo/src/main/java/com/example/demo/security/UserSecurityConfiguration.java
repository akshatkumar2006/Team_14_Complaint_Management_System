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
@Order(1)
public class UserSecurityConfiguration extends WebSecurityConfigurerAdapter {
	@Autowired
	UserDetailsService myUserDetailsService;

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(myUserDetailsService).passwordEncoder(encodePassword());
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable();

		/*
		 * http.authorizeHttpRequests().antMatchers("/user/**").permitAll().anyRequest()
		 * .authenticated() .and().formLogin() .loginPage("/user/login");
		 */

		http.authorizeRequests().antMatchers("/").permitAll();

		http.authorizeRequests().antMatchers("/user").hasAuthority("USER").and().formLogin().loginPage("/user/login")
				.loginProcessingUrl("/user/checkUser").defaultSuccessUrl("/user/dashboard").permitAll().and().logout()
				.logoutUrl("/user/logout").logoutSuccessUrl("/");
	}

	@Bean
	public BCryptPasswordEncoder encodePassword() {
		return new BCryptPasswordEncoder();
	}
}
