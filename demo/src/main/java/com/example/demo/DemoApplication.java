package com.example.demo;

import java.math.BigInteger;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import com.example.demo.model.Dept;
import com.example.demo.repository.DeptRepository;
import com.example.demo.repository.AdminRepository;
import com.example.demo.repository.UserRepository;

@SpringBootApplication
@EnableJpaRepositories(basePackageClasses = { UserRepository.class, AdminRepository.class })
public class DemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}

	@Bean
	CommandLineRunner seedDepartments(DeptRepository deptRepository) {
		return args -> {
			if (deptRepository.count() == 0) {
				deptRepository.save(createDepartment("IT Support", "it.support@demo.local", "IT Support"));
				deptRepository.save(createDepartment("Academic Affairs", "academic.affairs@demo.local", "Academic Affairs"));
				deptRepository.save(createDepartment("Accounts", "accounts@demo.local", "Accounts"));
				deptRepository.save(createDepartment("Library", "library@demo.local", "Library"));
			}
		};
	}

	private Dept createDepartment(String deptName, String email, String location) {
		Dept dept = new Dept();
		dept.setDeptName(deptName);
		dept.setEmail(email);
		dept.setPassword("password");
		dept.setFirstName(deptName);
		dept.setLastName("Department");
		dept.setMobileNo(BigInteger.valueOf(9999999999L));
		dept.setEmail_verified(true);
		dept.setRole("DEPARTMENT");
		dept.setLocation(location);
		return dept;
	}

}
