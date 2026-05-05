package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Complaint {
	@Id
	@GeneratedValue
	private Integer id;
	private Integer deptId;
	private Integer userId;

//  @DateTimeFormat(pattern = "MM/dd/yyyy")
//	@Temporal(TemporalType.DATE)
//	@JsonFormat(pattern = "yyyy-MM-dd", shape = Shape.STRING)
//	private Date complaintDate;
	private String detail;
	private String type;
	private String nature;
	private String status;
	private boolean isBlocked = false;
	private String remarks = "Under review";

	public Complaint() {

	}

	public Complaint(Integer id, int deptId, int userId, String detail, String type, String nature, String status,
			boolean isBlocked, String remarks) {
		super();
		this.id = id;
		this.deptId = deptId;
		this.userId = userId;
		this.detail = detail;
		this.type = type;
		this.nature = nature;
		this.status = status;
		this.isBlocked = isBlocked;
		this.remarks = remarks;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public boolean isBlocked() {
		return isBlocked;
	}

	public void setBlocked(boolean isBlocked) {
		this.isBlocked = isBlocked;
	}

	public void setDeptId(Integer deptId) {
		this.deptId = deptId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getDeptId() {
		return deptId;
	}

	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}

//	public Date getComplaintDate() {
//		return complaintDate;
//	}
//
//	public void setComplaintDate(Date complaintDate) {
//		this.complaintDate = complaintDate;
//	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getNature() {
		return nature;
	}

	public void setNature(String nature) {
		this.nature = nature;
	}

	@Override
	public String toString() {
		return "Complaint [id=" + id + ", deptId=" + deptId + ", userId=" + userId + ", detail=" + detail + ", type="
				+ type + ", nature=" + nature + ", status=" + status + "]";
	}

}
