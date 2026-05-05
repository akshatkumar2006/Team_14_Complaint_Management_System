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

@Controller
@RequestMapping("/dept")
@SessionAttributes({ "dept_firstname", "dept_id", "dept_name" })
public class DeptController {

	Logger logger = LoggerFactory.getLogger(DeptController.class);

	@Autowired
	private DeptService deptService;

	@Autowired
	private ComplaintService complaintService;

	@GetMapping(value = "/login")
	public String loginPage() {
		logger.info("<=====  LOGIN PAGE WILL BE RETURNED ===> ");
		return "dept/Login";
	}

	@PostMapping(value = "/dashboard")
	public String homePage(@RequestParam String userName, @RequestParam String pass, Model model) {
		String email = userName;
		if (deptService.isEmailExist(email)) {
			if (deptService.isValidDept(email, pass)) {
				Dept dept = deptService.getFirstName(email);
				model.addAttribute("dept_firstname", dept.getFirstName());
				model.addAttribute("dept_id", dept.getId());
				model.addAttribute("dept_name", dept.getDeptName());
				return "dept/Home";
			} else {
				model.addAttribute("login-message", "Sorry!! Username or Password is Incorrect!!");
				return "redirect:/dept/login";
			}
		}
		model.addAttribute("login-message", "Email id does not exist!! Please Contact to Admin!!");
		return "redirect:/dept/login";

	}

	@GetMapping(value = "/dashboard")
	public String homePage1() {
		return "dept/Home";
	}

	@GetMapping(value = "/view")
	public String viewComplaint(@RequestParam("compid") int compId, Model m) {
		Complaint complaint = complaintService.getComplaintById(compId);
		m.addAttribute("getACompalint", complaint);
		return "dept/ViewComplaint";
	}

	@GetMapping(value = "/resolve")
	public String resolveComplaint(@RequestParam("compid") int compId, Model m) {
		Complaint complaint = complaintService.getComplaintById(compId);
		logger.info(" === DEPT CONTROLLER | Resolve API === " + complaint);
		m.addAttribute("GetBCompalint", complaint);
		return "dept/ResolveComplaints";
	}

	@GetMapping(value = "/ComplaintList")
	public String ComplaintList(@RequestParam int deptId, Model m) {
		List<Complaint> li = complaintService.getComplaintByDeptId(deptId);
		m.addAttribute("compalintListByDept", li);
		return "dept/ComplaintList";
	}

	@GetMapping(value = "/ResolvedComplaintList")
	public String ResolvedComplaintList(@RequestParam int deptId, Model m) {
		List<Complaint> li = complaintService.getComplaintByDeptId(deptId);
		m.addAttribute("complaintListByDeptartment", li);
		return "dept/ResolvedComplaintList";
	}

	@GetMapping(value = "/viewResolved")
	public String viewResolved(@RequestParam("compid") int compId, @RequestParam("deptId") int deptId, Model m) {
		Complaint complaint = complaintService.getComplaintById(compId);
		Dept dept = deptService.getDepartmentById(deptId);
		m.addAttribute("getResolvedCompalint", complaint);
		m.addAttribute("deptName2", dept.getDeptName());
		return "dept/ViewResolvedComplaint";
	}

	@GetMapping(value = "/ResolveComplaints")
	public String ResolveComplaints() {

		return "dept/ResolveComplaints";
	}

	@PostMapping(value = "/updateRemark")
	public String updateRemarks(@RequestParam("id") int compId, @RequestParam("status") String status,
			@RequestParam("remarks") String remarks, @RequestParam("deptId") int deptId, Model m) {
		Complaint complaint = complaintService.getComplaintById(compId);
		complaint.setStatus(status);
		complaint.setRemarks(remarks);
		logger.info(" === DEPT CONTROLLER === " + complaint);
		complaintService.registerComplaint(complaint);
		logger.info(" === DEPT CONTROLLER | Saved === ");
		m.addAttribute("UpdateMessage", "Data has been updated!!!");
		return "redirect:/dept/ComplaintList?deptId=" + deptId;
	}

	@PostMapping(value = "/add")
	public String addUser(@RequestBody User user) {
		String email = user.getEmail();
		String password = user.getPassword();
		String username = user.getUserName();
		String role = user.getRole();

		// adminService.saveUser(user);
		return "User has been saved!";
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
