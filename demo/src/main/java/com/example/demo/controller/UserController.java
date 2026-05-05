package com.example.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.example.demo.model.Complaint;
import com.example.demo.model.Dept;
import com.example.demo.model.User;
import com.example.demo.service.ComplaintService;
import com.example.demo.service.DeptService;
import com.example.demo.service.UserService;

@Controller
@RequestMapping("/user")
@SessionAttributes({ "firstname", "userid" })
public class UserController {
	Logger logger = LoggerFactory.getLogger(UserController.class);

	@Autowired
	private UserService userService;

	@Autowired
	private DeptService deptService;

	@Autowired
	private ComplaintService compalintService;

	@GetMapping(value = "/login")
	public String loginPage() {
		logger.info("<=====  LOGIN PAGE WILL BE RETURNED ===> ");
		return "user/Login";
	}

//	@PostMapping(value = "/checkUser")
//	public void checkUser(@RequestParam String userName, @RequestParam String pass) {
//
//	}

	@PostMapping(value = "/dashboard")
	public String homePage(@RequestParam String userName, @RequestParam String pass, Model model) {
		String email = userName;
		if (userService.isEmailExist(email)) {
			if (userService.isValidUser(email, pass)) {
				User user = userService.getUserByEmail(email);
				model.addAttribute("firstname", user.getFirstName());
				model.addAttribute("userid", user.getId());
				return "user/Home";
			} else {
				model.addAttribute("login-message", "Sorry!! Username or Password is Incorrect!!");
				return "redirect:/user/login";
			}
		}
		model.addAttribute("login-message", "Username does not exist!! Please Sign Up!!");
		return "redirect:/user/login";

	}

	@GetMapping(value = "/dashboard")
	public String homePage1() {
		return "user/Home";
	}

	@GetMapping(value = "/ComplaintList")
	public String ComplaintList(@RequestParam Integer userid, Model m) {
		List<Complaint> listComplaint = compalintService.getComplaintsByUserId(userid);
		logger.info("=== GOT LIST ===");
		m.addAttribute("compalintListByUser", listComplaint);
		logger.info("=== DATA HAS BEEN LOADED ===");
		return "user/ComplaintList";
	}

	@GetMapping(value = "/TrackComplaint")
	public String TrackComplaint() {
		return "user/TrackComplaint";
	}

	@GetMapping(value = "/NewComplaint")
	public String NewComplaint(Model model) {
		List<Dept> list = deptService.getDepartments();
		model.addAttribute("deptList", list);

		for (Dept dept : list) {
			logger.info(" =========== " + dept);
		}

		return "user/NewComplaint";
	}

	@PostMapping(value = "/add")
	public String addUser(@RequestBody User user) {
		String email = user.getEmail();
		String password = user.getPassword();
		String username = user.getUserName();
		String role = user.getRole();

		userService.saveUser(user);
		return "User has been saved!";
	}

	@GetMapping(value = "/view")
	public String viewComplaint(@RequestParam("id") int comId, Model m) {
		Complaint complaint = compalintService.getComplaintById(comId);
		Dept dept = deptService.getDepartmentById(complaint.getDeptId());
		m.addAttribute("getCompalint", complaint);
		m.addAttribute("deptName", dept.getDeptName());
		return "user/ViewComplaint";
	}

	@GetMapping(value = "/update")
	public String updateComplaint(@RequestParam("id") int comId, Model m) {
		Complaint complaint = compalintService.getComplaintById(comId);
		Dept dept = deptService.getDepartmentById(complaint.getDeptId());
		m.addAttribute("getCompalint", complaint);
		m.addAttribute("deptName", dept.getDeptName());
		return "user/UpdateComplaint";
	}

	@GetMapping(value = "/delete")
	public String deleteComplaint(@RequestParam("id") int comId, @RequestParam("userid") int userId) {
		compalintService.deleteComplaintById(comId);
		logger.info("=== URL ===" + "redirect:/user/ComplaintList?userid=${" + userId + "}");
		logger.info("=== URL ===" + "redirect:/user/ComplaintList?userid=" + userId);
		return "redirect:/user/ComplaintList?userid=" + userId;
	}

	@GetMapping(value = "/getComp")
	public String getComplaint(@RequestParam("id") int comId, Model m) {
		Complaint complaint = compalintService.getComplaintById(comId);
		Dept dept = deptService.getDepartmentById(complaint.getDeptId());
		m.addAttribute("getTrackedCompalint", complaint);
		m.addAttribute("deptName1", dept.getDeptName());
		logger.info("=== LAST METHOD CONTROLLER ===");
		return "user/ViewTrackComplaint";
	}

	@GetMapping(value = "/logout")
	public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect:/";
	}

}
