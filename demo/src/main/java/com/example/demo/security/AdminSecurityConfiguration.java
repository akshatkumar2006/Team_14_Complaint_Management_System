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
@Order(2)
public class AdminSecurityConfiguration extends WebSecurityConfigurerAdapter {
	@Autowired
	UserDetailsService myAdminDetailsService;

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(myAdminDetailsService).passwordEncoder(encodePassword());
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable();

		http.authorizeRequests().antMatchers("/").permitAll();

		http.authorizeRequests().antMatchers("/admin").hasAuthority("ADMIN").and().formLogin().loginPage("/admin/login")
				.loginProcessingUrl("/admin/checkAdmin").defaultSuccessUrl("/admin/dashboard").permitAll().and()
				.logout().logoutUrl("/admin/logout").logoutSuccessUrl("/");
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