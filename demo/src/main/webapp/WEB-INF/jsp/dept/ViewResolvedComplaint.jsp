<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ page import="com.example.demo.model.Complaint" %>
<!DOCTYPE html>
<html dir="ltr" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <base href="${pageContext.request.contextPath}/">
    <link rel="icon" type="image/png" sizes="16x16" href="../public/assets/images/favicon.png">
    <title>View Resolved Complaint</title>
    <link href="../public/assets/libs/chartist/dist/chartist.min.css" rel="stylesheet">
    <link href="../public/assets/extra-libs/jvector/jquery-jvectormap-2.0.2.css" rel="stylesheet" />
    <link href="../public/dist/css/style.css" rel="stylesheet">
</head>
<body>
	<%@ include file="Header.jsp" %>
	<div class="page-wrapper">
		<div class="page-breadcrumb">
			<div class="row">
				<div class="col-7 align-self-center">
					<h4 class="page-title text-truncate text-dark font-weight-medium mb-1">Resolved Complaint Details</h4>
				</div>
			</div>
		</div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-body">
							<%
								Complaint complaint = (Complaint) request.getAttribute("getResolvedCompalint");
								String deptName = (String) request.getAttribute("deptName2");
							%>
							<table class="table table-bordered" width="80%" cellspacing="0">
								<tr>
									<th>Complaint ID</th>
									<td><%= complaint.getId() %></td>
									<th>Department Name</th>
									<td><%= deptName %></td>
								</tr>
								<tr>
									<th>Complaint Type</th>
									<td><%= complaint.getType() %></td>
									<th>Priority</th>
									<td><%= complaint.getNature() %></td>
								</tr>
								<tr>
									<th>Status</th>
									<td><%= complaint.getStatus() %></td>
									<th>Remarks</th>
									<td><%= complaint.getRemarks() %></td>
								</tr>
								<tr>
									<th colspan="4">Complaint Details</th>
								</tr>
								<tr>
									<td colspan="4"><%= complaint.getDetail() %></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="Footer.jsp" %>
</body>
</html>