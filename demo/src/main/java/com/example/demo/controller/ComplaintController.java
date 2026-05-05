package com.example.demo.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.model.Complaint;
import com.example.demo.service.ComplaintService;

@Controller
@RequestMapping("/complaint")
public class ComplaintController {

	@Autowired
	ComplaintService complaintService;

	Logger logger = LoggerFactory.getLogger(UserController.class);

	@PostMapping(value = "/newComplaint") // produces = { MimeTypeUtils.APPLICATION_JSON_VALUE })
	public String addComplaint(Complaint complaint)// , @PathParam("id") int userid) {
	{
		// logger.info("<==== Date ====>" + complaint.getComplaintDate());
		// Complaint justSavedComplaint =
		// complaint.setUserId(userid);

		complaint.setStatus("PENDING");
		logger.info(" === NEW COMPLAINT === " + complaint);
		complaintService.registerComplaint(complaint);
		return "redirect:/user/NewComplaint";
	}

}
